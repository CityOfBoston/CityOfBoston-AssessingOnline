<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Exemption Form Request - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
 <meta name="robots" content="noindex, nofollow">
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->
<!--#include file="../../includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->

	<style type="text/css"> 
		/* hide right column */
		#rightCol {
			display: none;
		}
		.buttonempty {
			border-style:solid;
			border-width:1;
			border-color:#316180;
			height:40;
			width:80;
			text-align:center;
			font-size:14;
			valign:middle;
		}
		.buttonfilled {
			border-style:solid;
			border-width:1;
			border-color:#316180;
			background-color:#D9E7ED;
			height:40;
			text-align:center;
			font-size:14;
			font-weight: bold;
			valign:middle;
		}
	</style>
	
<%
  Response.CharSet = "utf-8"
  Response.CacheControl="max-age=60, Public"
  Response.Expires=1 
%>
<!--#include virtual="/includes/stdf.inc"-->
<%


Dim ParcelID, Email, FormType, Residential, Elderly, Blind, Veteran, Widow
Dim myRegExp, sSQL, missingtype


' get variables
ParcelID = Request("pid")
FormType = Request("formtype")
Email = Request("email")
Residential = Cbool(Request("residential"))
Elderly = Cbool(Request("elderly"))
Blind = Cbool(Request("blind"))
Veteran = Cbool(Request("veteran"))
Widow = Cbool(Request("widow"))

' cleanup pid
Set myRegExp = new RegExp
myRegExp.IgnoreCase = True
myRegExp.Global = True
myRegExp.pattern = "[^0-9]"
ParcelID = myRegExp.Replace(ParcelID, "")

If ParcelID="" Then
	'Response.Redirect "https://www.cityofboston.gov/assessing/search/"
End If

If email<>"" And Not (residential Or elderly Or blind Or veteran Or widow) Then
	missingtype = "Please check at least one application type"
Else
	missingtype = ""
End If

If FormType = "residential" Or FormType = "personal" or missingtype <> "" Then
	Call ShowForm()
ElseIf Len(email)>5 And (residential Or elderly Or blind Or veteran Or widow) Then
	Set RecordSetInsert = Server.CreateObject("ADODB.Recordset")
	Call DBConn("Open", "assessingupdates", "")

	sSQL = "INSERT INTO [exemptionrequests] ([parcel_id],[email],[residential],[elderly],[blind],[veteran],[widow]) "
	sSQL = sSQL & "VALUES ('" & Sanitize(ParcelID) & "','" & Sanitize(email) & "','" & Abs(CInt(residential)) & "','" & Abs(CInt(elderly)) & "','" & Abs(CInt(blind)) & "','" & Abs(CInt(veteran)) & "','" & Abs(CInt(widow)) & "')"
	Set RecordSetInsert = g_objConn.Execute(sSQL)
	Response.Write "<div class='MainHeaderFont'>Request Submitted</div>"
	Response.Write "Request submitted for parcel " & ParcelID & ".  An application will be mailed to the owner in 3-5 business days."
Else
	'Response.redirect "https://www.cityofboston.gov/assessing/search/"
End If


%>
<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="../includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
<%



'########################################################################
Sub ShowForm

If formtype="personal" or missingtype <> "" Then

%>

<div class="MainHeaderFont">Request an Application for a Personal Exemption</div>
<p>Submit this form and a printed application for a Personal Exemption will be mailed to the parcel owner.  Check at least one.</p>
<form method=post action="." >
<table>
<tr><td>
<label for="pid">Parcel:</label>
</td><td>
<input type=text id="pid" value="<%=ParcelID%>" size=10 disabled>
<input type=hidden name="pid" value="<%=ParcelID%>">
</td></tr>
<tr><td>
<label for="email">Contact email:</label>
</td><td>
<input type=email name="email" id="email" size=30>
</td></tr>
<tr><td>
Personal exemption type (required):
</td><td>
<div class="form-group options">
<input type="checkbox" name="elderly" id="elderly" value="1" required> <label for="elderly">Elderly 41C</label> 
<input type="checkbox" name="blind" id="blind" value="1" required> <label for="blind">Blind 37A</label> 
<input type="checkbox" name="veteran" id="veteran" value="1" required> <label for="veteran">Veterans 22</label> 
<input type="checkbox" name="widow" id="widow" value="1" required> <label for="widow">Widow 17D</label><br>
</div>
</td></tr>
</table>
<br>
<button type="submit">Submit</button>
</form>

<p style="color: red;"><%=missingtype%></p>


<script>
$(function(){
    var requiredCheckboxes = $('.options :checkbox[required]');
    requiredCheckboxes.change(function(){
        if(requiredCheckboxes.is(':checked')) {
            requiredCheckboxes.removeAttr('required');
        } else {
            requiredCheckboxes.attr('required', 'required');
        }
    });
});
</script>

<%
ElseIf formtype="residential" Then
%>

<div class="MainHeaderFont">Request an Application for a Residential Exemption</div>
<p>Submit this form and a printed application for a Residential Exemption will be mailed to the parcel owner.</p>
<form method=post action="." >
<table>
<tr><td>
<label for="pid">Parcel:</label>
</td><td>
<input type=text id="pid" value="<%=ParcelID%>" size=10 disabled>
<input type=hidden name="pid" value="<%=ParcelID%>">
</td></tr>
<tr><td>
<label for="email">Contact email:</label>
</td><td>
<input type=email name="email" id="email" size=30>
</td></tr>
</table>
<input type="hidden" name="residential" value="1">
<br>
<button type="submit">Submit</button>
</form>


<%

End If

End Sub 'ShowForm

%>