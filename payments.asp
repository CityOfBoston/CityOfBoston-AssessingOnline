<%@ language="vbscript" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Assessing Payments - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
 <!-- do not include in Internet search engines -->
 <meta name="robots" content="noindex, nofollow">
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->
<!--#include file="includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->
<%
'tax year and date:
dim m,y,wyr
tyr=request.querystring("taxyear")
m = month(now)
y = year(now)
if m > 6 then y=y+1

'tyr = "curr"
if tyr = "prev" then y = y - 1 else tyr = "curr"

'dim parcelid
'	parcelid = request("parcelid")

set Assessingpay = server.createobject("adodb.connection")
Assessingpay.connectiontimeout = session("Assessingpay_connectiontimeout")
Assessingpay.commandtimeout = session("Assessingpay_commandtimeout")
Assessingpay.open session("Assessingpay_connectionstring"), session("Assessingpay_runtimeusername"), session("Assessingpay_runtimepassword")
set cmdtemp = server.createobject("adodb.command")
set datacommand1 = server.createobject("adodb.recordset")
if tyr = "prev" then
 cmdtemp.commandtext = "select distinct taxweb_lyr.*, payweb_lyr.*, trncodes.trncode_descr  from (taxweb_lyr left join payweb_lyr on taxweb_lyr.parcelid = payweb_lyr.parcelid) left join trncodes on payweb_lyr.trntype = trncodes.trntype  and payweb_lyr.trncode = trncodes.trncode where taxweb_lyr.parcelid= '" & request("parcelid") & "' " & " order by payweb_lyr.trndate_collect desc"
else
  cmdtemp.commandtext = "select distinct taxweb.*,     payweb.*,     trncodes.trncode_descr from (taxweb   inner join payweb    on taxweb.parcelid     = payweb.parcelid)     left join trncodes on payweb.trntype = trncodes.trntype  and payweb.trncode = trncodes.trncode where taxweb.parcelid=     '" & request("parcelid") & "' " & " order by payweb.trndate_collect     desc"
end if
cmdtemp.commandtype = 1
set cmdtemp.activeconnection = Assessingpay
datacommand1.open cmdtemp, , 0, 1
%>


<b>Payments recorded as of <%=date()%></b>

<br>
<%If datacommand1.eof then%>
<table width="460">
<tr>
<td>
 <br>No payment records found
		    </td>
		    </tr>
</table>
		    <!--(system error).
			<br>Please contact the <a href="mailto:webmaster@cityofboston.gov"> webmaster</a>-->

<%Else%>


<center>
<table cellpadding=2 cellspacing=0 width="460" >
<tr >
	<td align="left" colspan=4>

		<%dim sstrparcelid
			sstrparcelid = datacommand1("parcelid")%>

		<b>Parcel ID: </b><%=sstrparcelid%>

	</td>
</tr>



<tr valign="top">
	<td align="left" colspan=4>

		<b>Title: </b>


		<%=datacommand1("title")%>



	</td>
</tr>
<tr >
	<td align="left" colspan=4>

			<b>Bill number: </b><%=datacommand1("billno")%>

	</td>
</tr>

<tr >
	<td align="left" colspan=4>

			<b>Tax year: </b><%=y%>

	</td>
</tr>


<tr>
	<th align="left">

		Transaction

	</th>
	<th align="left">

		Interest

	</th>
	<th align="left">

			<b>Amt. Paid</b>

	</th>
	<th align="left">

			<b>Date</b>

	</th>
</tr>

<%do while not datacommand1.eof%>

 <%dim trd,trt,trc
		trd = datacommand1("trncode_descr")
		trt = datacommand1("trntype")
		trc = datacommand1("trncode")

		'hide veterans exemptions
		trd = Replace(trd,"Disabled Veterans","Personal Exemption")


	if trt = "10" and trc = "cc" then trd = "tax certification"
	if trt = "10" and trc = "tt" then trd = "tax taking"
	if trt = "80" and trc = "cc" then trd = "reinstatement tax certif."
	if trt = "80" and trc = "tt" then trd = "reinstatement tax taking"
	%>

<tr >
	<td align="left" width=200>

			<%=trd%>

	</td>
	<td align="left" width=75>

			<%=formatcurrency(datacommand1("trninterest"))%>

	</td>
	<td align="left"width=75>

			<%=formatcurrency(datacommand1("trnamount"))%>

	</td>
	<td align="left" width=75>

			<%=datacommand1("trndate_collect")%>

	</td>

</tr>
<%datacommand1.movenext
loop%>


<tr >
	<td align="left">

		<br>
		<a href="paymentinfo.asp?parcelid=<%=sstrparcelid%>&taxyear=<%=tyr%>">...back</a>

	</td>


   <td align="left">

		&nbsp

	</td>
	<td align="left" colspan="2">

		&nbsp

	</td>
	<td>
	</td>
</tr>

</table>
</center>

	<br>
Payment questions? Please contact <a href="/assessing/contactform.asp">Assessing</a>
<br>


<%End If%>

<%
datacommand1.close
set datacommand1 = nothing
'********************************************************************************
'end content
%>
<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
