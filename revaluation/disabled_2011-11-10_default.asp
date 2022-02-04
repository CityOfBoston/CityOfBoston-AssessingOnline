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
dim validEmail



Call Main()

Sub Main()

	Call GetFields()
	If validEmail Then
		Call AddInfo()
		Call ShowComplete()
	Else
		Call ShowForm()

	End If
End Sub


Sub GetFields()

	g_strName = Request.form("txtName")
	g_strAddress = Request.form("txtAddress")
	g_strcity  = Request.form("txtCity")
	g_strState = Request.form("txtState")
	g_strZip = Request.form("txtZip")
	g_strEmail = Request.form("txtEmail")
	g_strTelephone = Request.form("txtTelephone")
	g_strPropertyNo = Request.form("txtPropertyNo")
	g_strPropertyStreet = Request.form("txtPropertyStreet")
	g_strWard = Request.form("txtWard")
	g_strParcel = Request.form("txtParcel")
	g_strCategory = Request.form("txtCategory")
	g_strNature = Request.form("txtNature")

	' validate email
	Set myRegExp = new RegExp
	myRegExp.pattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
	validEmail = myRegExp.Test(g_strEmail)

	' cleanup parcelid
	myRegExp.pattern = "[^0-9]"
	g_strParcel = myRegExp.Replace(g_strParcel, "")

End Sub

Sub AddInfo()
'~~~~~~~~~~~~
'~~~~~~~~~~~~
Dim strSQL
Dim strSuccess
Dim MaxID
Dim g_maxid
'~~~~~~~~~

	Call DBConn("Open", "assessingcontact", "assessment_review")
	
	' the ID should increment from SQL, but unable to modify table so doing it here instead
	strSQL = "SELECT [MaxID]=MAX([ID]) FROM [assessment_review]"
    Set g_maxid = g_objConn.Execute(strSQL)

	MaxID = CInt(g_maxid("MaxID"))
	' start ID at 1000  if less than 1000
	MaxID = MaxID + 1
	If MaxID < 1000 Then MaxID = 1000
		
	g_objRecords.addNew()
	g_objRecords("ID")=MaxID
	g_objRecords("Date_Submitted")=Now()

	g_objRecords("Name")=g_strName
	g_objRecords("Address")=g_strAddress
	g_objRecords("Email")=g_strEmail
	g_objRecords("City")=g_strCity
	g_objRecords("State")=g_strState
	g_objRecords("Zip")=g_strZip
	
	g_objRecords("Telephone")=g_strTelephone
	g_objRecords("PropertyNo")=g_strPropertyNo
	g_objRecords("PropertyStreet")=g_strPropertyStreet
	g_objRecords("Ward")=g_strWard
	g_objRecords("Parcel")=g_strParcel
	g_objRecords("Category")=g_strCategory
	g_objRecords("Nature")=g_strNature
	g_objRecords.Update


	' configure email using CDOSYS
	Set myMail=CreateObject("CDO.Message")
	myMail.Configuration.Fields.Item _
	("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
	myMail.Configuration.Fields.Item _
	("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp.web.cob"
	myMail.Configuration.Fields.Item _
	("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=25
	myMail.Configuration.Fields.Update


	strMessage = "The following has been submitted to the Assessing Department for Preliminary Assessment Review:" + vbCrLf + vbCrLf
	strMessage = strMessage + "Name:  " + g_strName + vbCrLf
	strMessage = strMessage + "Address:  " + g_strAddress + vbCrLf
	strMessage = strMessage + "City:  " + g_strCity + vbCrLf
	strMessage = strMessage + "State:  " + g_strState + vbCrLf
	strMessage = strMessage + "Zip:  " + g_strZip + vbCrLf
	strMessage = strMessage + "Telephone:  " + g_strTelephone + vbCrLf
	strMessage = strMessage + "Parcel:  " + g_strParcel + vbCrLf
	strMessage = strMessage + "Location:  " + g_strPropertyNo + " " + g_strPropertyStreet + vbCrLf
	strMessage = strMessage + "Reason:  " + g_strCategory + vbCrLf
	strMessage = strMessage + "Details:" + vbCrLf + g_strNature + vbCrLf + vbCrLf
	strMessage = strMessage + "No further action is required.  An assessor will review your request, and may contact you with questions."

	myMail.From = "no-reply@cityofboston.gov"
	myMail.To = g_strEmail
	myMail.Subject = "Preliminary Assessment Review"
	myMail.TextBody = strMessage
	myMail.Send
	set myMail=nothing

End Sub



Sub ShowForm()

	Dim myRegExp

	' get PID from URL if available
	If Request.QueryString("PID")<>"" Then
		' initialize the regex object
		Set myRegExp = new RegExp
		myRegExp.IgnoreCase = True
		myRegExp.Global = True

		' set regex for filtering nondigits
		myRegExp.pattern = "[^0-9]"

		' store PID from querystring
		QueryStringPID = Request.QueryString("PID")
		' replace nondigits so no need to sanitize
		QueryStringPID = myRegExp.Replace(QueryStringPID, "")
	End If

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Assessing Department Preliminary Assessement Review Request Form - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->

<!--#include file="includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->
<style type="text/css"> 
	/* hide right column */
	#rightCol {
		display: none;
	}
</style>

<form action="." method="post" name="frmContact">

<table border="0" cellpadding="0" cellspacing="5" width="100%">
	<tr>
		<td align="left" width="100%" colspan=2>
			<div class="MainHeaderFont">Assessing Department Revaluation Assessment Review Request Form</div>
		</td>
	</tr>
	<tr>
		<td colspan=2 align=Left>
			The FY 2021 Revaluation Assessment reflects the value and condition of your property <strong>on the date January 1, 2020</strong>. The Assessing Department is available to review your FY 2021 Assessment during this Public Disclosure period (Wednesday, November 4, 2020 through Tuesday, November 10, 2020)</td>
	</tr>
	<tr>
		<td width="100"><b>*Name: </b></td>
		<td align="left"><input type="text" maxlength="50" class="input" name="txtName" title="name" required><td>
	</tr>
	<tr>
		<td>Mailing Address: </td>
		<td align="left"><input type="text" maxlength="50" class="input" name="txtAddress" title="address"><td>
	</tr>
	<tr>
		<td>City: </td>
		<td align="left"><input type="text" maxlength="50" class="input" name="txtCity" title="city"></td>
	</tr>
	<tr>
		<td align="left">State: </td>
		<td align="left"><input type="text" size="2" maxlength="2" name="txtState" title="state"><td>
		</td>
	</tr>
		<tr>
			<td width="100">Zip: </td>
			<td align="left"><input type="number" maxlength="5" size="5" pattern="[0-9]{5}" name="txtZip" title="zip"></td>
	</tr>
	<tr>
		<td><b>*Phone: </b></td>
		<td align="left"><input type="tel" maxlength="10" class="input" pattern="[0-9]{10}" name="txtTelephone" title="owner phone" id="txtTelephone" required></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td align="left">(numbers only)<bR><bR></td>
	</tr>
    
    <tr>
	    <td>*Email: </td>
        <td align="left"><input type="email" maxlength="100" class="input" name="txtEmail" title="Email" id="txtEmail" required><td>
     </tr>   
    
	<tr>
		<td colspan="2"><hr size="3" width="100%" color="#4691B7"><td>
	</tr>
	<tr>
		<td colspan="2">Property details:<br><br></td>
	</tr>
	<tr>
		<td colspan="2">
			<table border=0>
				<tr>
					<td width="80">Street #:<bR><bR></td>
					<td><input type="text" size="4" maxlength="8" name="txtPropertyNo" title="property street number"><bR><bR></td>
					<td width="20"><bR><bR></td>
					<td width="80">Street Name:<bR><bR></td>
					<td><input type="text" name="txtPropertyStreet" maxlength="50" title="property street name"><bR><bR><td>
				</tr>
				<tr>
					<td width="80">*<b>Parcel ID</b>:</td>
					<td colspan="4"><input type="number" maxlength="10" pattern="[0-9]{10}" name="txtParcel" title="parcel" value="<%=QueryStringPID%>" id="txtParcel" required><td>
				</tr>
				<tr>
					<td width="80">&nbsp;<bR><bR></td>
					<td colspan="4">(numbers only)<bR><bR><td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2"><hr size="3" width="100%" color="#4691B7"><td>
	</tr>
	<tr>
		<td colspan="2" align="left" width="100%">
				<b>*Reason for assessment review: </b><br>

				<select class="input" name="txtCategory" title="reason for review" required>
				<option value="">--Please select the reason--</option>
				<option value="Overvaluation">Overvaluation</option>
				<option value="Recent Sale">Recent Sale</option>
				<option value="Property Recently Refinanced">Property Recently Refinanced</option>
				<option value="Property Classification Incorrect">Property Classification Incorrect</option>
				<option value="Property Data Incorrect">Property Data Incorrect</option>
				<option value="Affordable Housing">Affordable Housing</option>
				<option value="Other">Other</option>
			</select>
			<br><br>
		<td>
	</tr>
	<tr>
		<td colspan="2"><b>*Details:</b> <br>
			<textarea name="txtNature" rows="20" cols="65" title="nature of request/concern" id="txtNature" required></textarea> <br><br>
			<span id="txtNatureCount"></span>
		</td>
	</tr>
	<tr>
					<td colspan=2 align="center">
					<span class="buttonBorder">
						<input type="submit" id="Submit" name="Submit" value="Submit Form" class="button" />
					</span>
					</td>
				</tr>

</table></form>

<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
<%End Sub


Sub ShowComplete()
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Assessing Department Preliminary Assessment Review Request Form</b> - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->

<!--#include file="includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->

<table border="0" cellpadding="0" cellspacing="5" width="100%">

	<tr>
			<td align="left" width="100%" colspan=2>
				
<h4>Assessing Department Preliminary Assessment Review Request Form</b></h4>
				<hr width="400" align="left" size="3" color="white">
				<br>
			<td>
	</tr>
	<tr>
		<td colspan=2 align=Left>
			Your information was successfully submitted to the Assessing Department.
			<br><br>
			Return to the Assessing Department <a href="/assessing/">main page</a> or to <a href="/assessing/search/">Assessing Online search</a>.
		</td>
	</tr>


</table>
<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
<%End Sub%>