<%@ Language=VBScript %>
<!--#include virtual="/includes/stdf.inc"-->

<%
dim g_strName
dim g_strAddress
dim g_strDate
dim g_strcity
dim g_strState
dim g_strZip
dim g_strEmail
dim g_strTelephone
dim g_strPropertyNo
dim g_strPropertyStreet
dim g_strWard
dim g_strParcel
dim g_strNature
dim g_strCategory
dim g_UserIPAddress


Call Main()

	Sub Main()
	
	
	
	If Request.Form("dateSubmitted")<>"" Then
        
         If Len(Request.Form("txtEmail")) < 6 Then
           Response.Write ("Email Not Valid - Please use the back button to return to the page.")
           Response.End
         End If 
         
         If Len(Request.Form("txtName")) < 2 Then
            Response.Write ("Name Not Valid - Please use the back button to return to the page.")
           Response.End
         End If 
         
         If Len(Request.Form("txtTelephone")) <= 9 Then
            Response.Write ("Phone Not Valid - Please use the back button to return to the page.")
           Response.End
         End If 
         
                  
         If Len(Request.Form("txtNature")) <= 10 Then
            Response.Write ("Nature of Request Not Valid Must be greater than 11 characters - Please use the back button to return to the page.")
            Response.End
         End If 
         
         If Len(Request.Form("dept")) > 0 Then
           Response.Write ("Invalid Submission")
           Response.End         
         End If

        If Request.Form("txtEmail")<>"test@example.com" Then

			Call GetFields()
			Call AddInfo()
			Call ShowComplete()
		Else
			Call ShowForm()
        End If
        Else
            Call ShowForm()
    
	End If
	End Sub


Sub GetFields()

g_strName = Server.HTMLEncode(Request.Form("txtName"))
g_strAddress = Server.HTMLEncode(Request.Form("txtAddress"))
'g_strDate = Request.Form("datesubmitted")
g_strDate = Now
g_strcity  = Server.HTMLEncode(Request.Form("txtCity"))
g_strState = Server.HTMLEncode(Request.Form("txtState"))
g_strZip =Server.HTMLEncode(Request.Form("txtZip"))
g_strEmail = Server.HTMLEncode(Request.Form("txtEmail"))
g_strTelephone = Server.HTMLEncode(Request.Form("txtTelephone"))
g_strPropertyNo = Server.HTMLEncode(Request.Form("txtPropertyNo"))
g_strPropertyStreet = Server.HTMLEncode(Request.Form("txtPropertyStreet"))
g_strWard = Server.HTMLEncode(Request.Form("txtWard"))
g_strParcel = Server.HTMLEncode(Request.Form("txtParcel"))
g_strCategory = Server.HTMLEncode(Request.Form("txtCategory"))
g_strNature = Server.HTMLEncode(Request.Form("txtNature"))

'check if behind proxy if not get ip
g_UserIPAddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")

If g_UserIPAddress = "" Then
  g_UserIPAddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
End If

End Sub


Sub AddInfo()
'~~~~~~~~~~~~
'~~~~~~~~~~~~
Dim strSQL
Dim strSuccess
'~~~~~~~~~

	Call DBConn("Open", "assessingcontact", "correspondence.dbo.contact")




	g_objRecords.addNew()
		g_objRecords("Name")=g_strName
		g_objRecords("Address")=g_strAddress
		'g_objRecords("Date_Submitted")=g_strDate
		g_objRecords("City")=g_strCity
		g_objRecords("State")=g_strState
		g_objRecords("Zip")=g_strZip
		g_objRecords("Email")=g_strEmail
		g_objRecords("Telephone")=g_strTelephone
		g_objRecords("PropertyNo")=g_strPropertyNo
		g_objRecords("PropertyStreet")=g_strPropertyStreet
		g_objRecords("Ward")=g_strWard
		g_objRecords("Parcel")=g_strParcel
		g_objRecords("Category")=g_strCategory
		g_objRecords("Nature")= g_strNature
		g_objRecords("IPAddress")= g_UserIPAddress
	g_objRecords.Update

	Set objMail = Server.CreateObject("CDO.Message")


	strMessage = "A question has been submitted to the Assessing Request/Concerns Database." & Chr(13) & Chr(13)
	strMessage = strMessage & "This email was sent to you via CityofBoston.gov." & Chr(13) & Chr(13)


	objMail.Configuration.Fields.Item _
	("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp.web.cob"
	objMail.Configuration.Fields.Item _
	("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
	objMail.Configuration.Fields.Item _
	("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=25 
	objMail.Configuration.Fields.Update
	objMail.TextBody = strMessage
	objMail.To = "assessing@cityofboston.gov"
	'objMail.CC = "christopher.lambert@cityofboston.gov"
	objMail.From = "Assessing_NoReply@cityofboston.gov"

	objMail.Subject = "WWW / Assessing Contact Form"

	objMail.Send

	'boolError = objMail.Send
	'response.write boolerror
	'If  boolError Then

		'Response.Redirect "Apply_form.asp?error=Your+information+was+successfully+submitted!"

		'Set objMail = Nothing
		'Exit Sub

	'End If

	Set ObjMail = Nothing


End Sub




Sub ShowForm()
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<script type="text/javascript" src="Validate.js?1"></script>

<title>Assessing Department Contact Form - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->

<!--#include file="includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->
<form action="contactform.asp" method="post" name="frmContact" onSubmit="return Validate(this)" showErrors="list">

<table border="0" cellpadding="0" cellspacing="5" width="100%">
	<input type="hidden" title="dateSubmitted" name="dateSubmitted" value="<%=Now%>">
	<input type="hidden" title="dept" name="dept" />
	<tr>
		<td align="left" width="100%" colspan=2>
				
<div class="MainHeaderFont">Assessing Department Contact Form</div>
		<td>
	</tr>

	<tr>
    	  
		<td colspan=2 align=Left>
			The Assessing Department is available to address requests and concerns 24 hours a day
			via this form.  Also, you can reach the department by calling the Taxpayer Referral & Assistance Center at <b>(617) 635-4287</b> Monday-Friday from 9am - 5pm.<bR><bR>
		</td>
	</tr>
    


<% If determine_dates() then%> 
<tr>
<td colspan=2 align=Left style="color:red"><b><i> Please Note : </b>If you are inquiring about your FY 2010 Preliminary Assessment Notice and would like to request an assessment review, <a href ="http://www.cityofboston.gov/assessing/revaluation/"><i>click here.</i></a> For all other inquiries fill out this contact form. </i></td> 
</tr>
<%end if %>

	<tr>
		<td colspan="2"><i><b>*</b> You must provide your name, the reason for contacting us and either your phone number or email address.</i><bR><bR></td>
	</tr>
	<tr>
		<td width="100"><b>*Name: </b></td>
		<td align="left"><input type="text" required="nonblank" formalName="Name" onKeyPress="return isAlphaNumeric(event)" maxlength="50" class="input" name="txtName" title="name"><td>
	</tr>
	<tr>
		<td>Address: </td>
		<td align="left"><input type="text" onKeyPress="return isAlphaNumeric(event)" maxlength="50" class="input" name="txtAddress" title="address"><td>
	</tr>
	<tr>
		<td>City: </td>
		<td align="left"><input type="text" onKeyPress="return isAlphabetic(event)" maxlength="20" class="input" name="txtCity" title="city"></td>
	</tr>
	<tr>
		<td align="left">State: </td>
		<td align="left"><input type="text" size="2" onChange="isValidState(this.value)"  maxlength="2"  name="txtState" title="state"><td>
		</td>
	</tr>
		<tr>
			<td width="100">Zip: </td>
			<td align="left"><input type="number" onKeyPress="return isNumberKey(event)" onChange="isValidZip(this.value)" maxlength="5" size="5" name="txtZip" title="zip"></td>
	</tr>
	<tr>
		<td width="100"><b>*Email: </b></td>
		<td align="left"><input type="email" maxlength="50" class="input" required="email" formalName="email" name="txtEmail" title="email"></td>
	</tr>
	<tr>
		<td><b>*Phone: </b><bR><bR></td>
		<td align="left"><input type="number"  required="phone" formalName="Phone Number"  maxlength="20" class="input" name="txtTelephone" title="phone"><bR><bR></td>
	</tr>
	<tr>
		<td colspan="2"><hr size="3" width="100%" color="#4691B7"><td>
	</tr>
	<tr>
		<td colspan="2">If you are contacting us with property question, concern or have a request, please indicate the following:<br><br></td>
	</tr>
	<tr>
		<td colspan="2">
			<table border=0>
				<tr>
					<td width="80">Street #:<bR><bR></td>
					<td><input type="text" size="4" maxlength="8" name="txtPropertyNo" onKeyPress="return isAlphaNumeric(event)" title="property street number"><bR><bR></td>
					<td width="20"><bR><bR></td>
					<td width="80">Street Name:<bR><bR></td>
					<td><input type="text" name="txtPropertyStreet" maxlength="15" onKeyPress="return isAlphabetic(event)" title="property street name"><bR><bR><td>
				</tr>
				<tr>
					<td width="80">Ward:<bR><bR></td>
					<td><input type="text" size="2" maxlength="2" onKeyPress="return isNumberKey(event)" name="txtWard" title="ward"><bR><bR></td>
					<td width="20"><bR><bR></td>
					<td width="80">Parcel #:<bR><bR></td>
					<td><input type="number" maxlength="10" name="txtParcel" onChange="isValidParcel(this.value)" onKeyPress="return isNumberKey(event)" title="parcel"><bR><bR><td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2"><hr size="3" width="100%" color="#4691B7"><td>
	</tr>
	<tr>
		<td colspan="2" align="left" width="100%">
				<b>*Reason for contacting the Assessing Department: </b><br>

				<select class="input" name="txtCategory" title="reason for contacting TRAC">
				<option value="">--Please select the reason--
				<%
				strSQL = "SELECT * FROM correspondence.dbo.contact_categories ORDER BY category"
				'Response.Write strSQL
				Call DBConn("Open", "assessingcontact", "")

				Set g_objRecords = g_objConn.Execute(strSQL)

				Do Until g_objRecords.EOF
					%>
					<option value="<%=g_objRecords("category")%>"><%=g_objRecords("category")%></option>
					<%

					g_objRecords.MoveNext
				Loop
				%>
				<option value="Other">Other</option>
			</select>
			<br><br>
		<td>
	</tr>
	<tr>
		<td colspan="2"><b>*Nature of Request/Concern:</b> <br>
			<textarea name="txtNature" id="txtNature" rows=10 required="nonblank" formalName="Request Text" cols="60" title="nature of request/concern"></textarea> <bR><bR>
			<span id="txtNatureCount"></span>
		</td>
	</tr>
	<tr>
					<td colspan=2 align="center">
					<span class="buttonBorder"><input  type="submit"
										
										value="Submit Form" class="button" /></span>
					</td>
				</tr>

</table></form>


<script type="text/javascript">

document.getElementById('txtNature').onkeyup = function () {

	if (this.value.length > 3000 || this.value.length < 10)
	{
		document.getElementById('txtNatureCount').style.color = "red";
	}
	else
	{
		document.getElementById('txtNatureCount').style.color = "black";
	}
	if (this.value.length < 10)
	{
		document.getElementById('txtNatureCount').innerHTML = "Required. " + this.value.length;
	}
	else
	{
		document.getElementById('txtNatureCount').innerHTML = "Characters left: " + (3000 - this.value.length);
	}

};

//document.layers;
function CheckAll()
{
var i;
var bool;
var strEmail = new RegExp("[a-z0-9]+\@[a-z0-9]+\.[a-z]{2}","gi");
var strPhone = new RegExp("[0-9]{3}-[0-9]{3}-[0-9]{4}","gi");
var boolNN;
//var strID = new String();
//var strTemp = new String();

	if(window.navigator.appName=="Netscape")
	{
		boolNN=true;
	}
	else
	{
		boolNN=false;
	}
	for(i=0;i<=document.frmContact.length-1;i++)
	{
		if(document.frmContact.elements[i].value=="" && document.frmContact.elements[i].title!="address"
		&& document.frmContact.elements[i].title!="date submitted" && document.frmContact.elements[i].title!="city"
		&& document.frmContact.elements[i].title!="state" && document.frmContact.elements[i].title!="zip"
		&& document.frmContact.elements[i].title!="property street number" && document.frmContact.elements[i].title!="property phone"
		&& document.frmContact.elements[i].title!="property street name" && document.frmContact.elements[i].title!="ward"
		&& document.frmContact.elements[i].title!="parcel" && document.frmContact.elements[i].title!="nature" && document.frmContact.elements[i].title!="phone"
		&& document.frmContact.elements[i].title!="email")

		{
			if(!boolNN)
			{
				alert("You have to enter " + document.frmContact.elements[i].title);
			}
		else
		{
			alert("You forgot to enter value!");
		}
		document.frmContact.elements[i].focus();
		bool=true;
		break;
	 }
	}
	if(document.frmContact.txtEmail.value=="" && document.frmContact.txtTelephone.value=="")
	{
		alert("You have to enter either a Phone Number or Email address");
		bool=true;
	}
	
	if(bool!=true)
	{
		document.frmContact.submit();
	}
}

</script>

<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
<%End Sub

Function determine_dates()

	dim odt ,final_overval_date ,ofirst_date
		
		ofirst_date = "November 16,2009" 
		odt = "November 25,2009" 
	
		final_overval_date = CDate(odt)
				
			'Takes out the form at 5:00 
			final_overval_date = dateadd("h",17,final_overval_date)
		
			If now < CDate(final_overval_date) and date >= CDate(ofirst_date) Then
			determine_dates = true
			else
			determine_dates= false
			end if

	End Function


Sub ShowComplete()
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Assessing Department Contact Form</b> - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->

<!--#include file="includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->

<table border="0" cellpadding="0" cellspacing="5" width="100%">

	<tr>
			<td align="left" width="100%" colspan=2>
				
<h4>Assessing Department Contact Form</b></h4>
				<hr width="400" align="left" size="3" color="white">
				<br>
			<td>
	</tr>
	<tr>
		<td colspan=2 align=Left>
			<font color="#4691B7"><b>Your information was successfully submitted to the Assessing Department.</b>
			<br><br>
			Return to the Assesing Department's <a href="/assessing/">main page</a> or the Assessing Online <a href="/assessing/search">search page</a>.
		</td>
	</tr>


</table>
<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
<%End Sub%>


