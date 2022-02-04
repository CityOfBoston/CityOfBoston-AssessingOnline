<%@ language="vbscript" %>
<!--#include virtual="/includes/sanitize.inc"-->
<%If not Request.QueryString("mygov")="true" Then%>
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Assessing On-line - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->

<!--#include file="includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->
<%Else%>

<%End If%>
<%
' tax year and date:

dim ymd,d,m,y,wyr,stramt,tbilled
	tyr=request.querystring("taxyear")
	m = month(now)
	y = year(now)
if m > 6 then y=y+1
'if m > 6 then y = y & " (Preliminary Bills)"
tbilled = "Tax:"
'if m > 6 then tbilled = tbilled & " (first half):"


'tyr="curr"
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
 cmdtemp.commandtext = "select distinct taxweb_lyr.* from taxweb_lyr where taxweb_lyr.parcelid= '" & Sanitize(request("parcelid")) & "' "
else
  cmdtemp.commandtext = "select distinct taxweb.*     from taxweb     where taxweb.parcelid=     '" & Sanitize(request("parcelid")) & "' "
end if
cmdtemp.commandtype = 1
set cmdtemp.activeconnection = Assessingpay
datacommand1.open cmdtemp, , 0, 1
%>

<%if datacommand1.eof then%>
<font class="mainAlertFont">
<b>Sorry!  the system does not have Payment information for the parcel id <%=request("parcelid")%>.</b>
</font>
<p>
<font class="mainAlertFont">
please <a href="/Contact/default.asp?id=50">Contact</a> trac should you have further questions.
Or search <a href="/assessing/search/">Assessing On-line</a> if unsure what parcel id your property has.
</font>

<%else%>



<div class="MainHeaderFont">Assessing On-line</div>

<div>


 <FORM>
 <b>   View Payment Information for YEAR    </b>
      <select onChange="if (this.options[this.selectedIndex].value) {location.href=this.options[this.selectedIndex].value} ">
    
 <%    
    If Month(Now())>6 Then
		firstyr=Year(Now())+1
	Else
		firstYr=Year(Now())
	End If
	
	lastyr = firstyr - 1
%>	
   
	<option value="/assessing/paymentinfo.asp?parcelid=<%=Request.QueryString("parcelid")%>&taxyear=curr"<%IF Request.QueryString("taxyear") = "curr" then response.write "selected"%>> <%=firstyr%>
    <option value="/assessing/paymentinfo.asp?parcelid=<%=Request.QueryString("parcelid")%>&taxyear=prev"<%IF Request.QueryString("taxyear") = "prev" then response.write "selected"%>> <%=lastyr%>
    
    </select> 
    </FORM>   
             
</div>
<center>
<div class="mainColTableHeaderRowBorders">Tax Bill and Payment Information as of  <%=date()%></div>
<table cellpadding=2 cellspacing=0 border=0 width="460">
<tr>
	<td align="left" colspan=3>
		<b>Parcel ID: </b> <font class="mainColTextBlueBold"><%=request("parcelid")%></font>
	</td>
</tr>
<tr  valign="top">
	<td align="left" colspan=3>
		<b>Owner: </b>
		<font class="mainColTextBlueBold"><%=datacommand1("title")%></font>
	</td>
</tr>
<tr>
	<td colspan="3" align="center">
		<div class="mainLeadStoryRule">&nbsp;</div><br />
	</td>
</tr>

<tr>
	<th align="left">
	</th>
	<th align="left">

	Tax Year: <%=y%>

	</th>
	<th align="left">

	<b>Amount</b>

	</th>
</tr>
<tr class="mainCategoryModuleText">
	<td align="left">
	<font face="helvetica, arial" size="3">
	&nbsp
	</font>
	</td>
	<td align="left">

	1<sup>st</sup> Quarter - due &nbsp <%=datacommand1("duedate1")%>:
		</font>
	</td>
	<td align="left">

	<%stramt=formatcurrency(datacommand1("retax1"))
	  if datacommand1("retax1") = 0 then stramt = " "%>
	<%=stramt%>
	</font>
	</td>

</tr>
<tr class="mainCategoryModuleText">
	<td align="left">
	<font face="helvetica, arial" size="3">
	&nbsp
	</font>
	</td>
	<td align="left">

	2<sup>nd</sup> Quarter - due &nbsp <%=datacommand1("duedate2")%>:
	</font>
	</td>
	<td align="left">

	<%stramt=formatcurrency(datacommand1("retax2"))
	  if datacommand1("retax2") = 0 then stramt = " "%>
	<%=stramt%>
	</font>
	</td>

</tr>
<tr class="mainCategoryModuleText">
	<td align="left">&nbsp;

	

	</td>
	<td align="left">

	3<sup>rd</sup> Quarter - due &nbsp <%=datacommand1("duedate3")%>:

	</td>
	<td align="left">

	<%stramt=formatcurrency(datacommand1("retax3"))
	  if datacommand1("retax3") = 0 then stramt = " "%>
	<%=stramt%>
	</font>
	</td>

</tr>
<tr class="mainCategoryModuleTextBottom">
	<td align="left">

	</td>
	<td align="left">

	4<sup>th</sup> Quarter- due &nbsp <%=datacommand1("duedate4")%>:
	</font>
	</td>
	<td align="left">

	<%stramt=formatcurrency(datacommand1("retax4"))
	  if datacommand1("retax4") = 0 then stramt = " "%>
	<%=stramt%>
	</font>
	</td>

</tr>
<tr>
	<td colspan="3" align="center">

	<br />
	</td>
</tr>
<tr class="mainCategoryModuleText">
	<td align="left">&nbsp;
	
	</td>
	<td align="left">
		<%=tbilled%>
	</td>
	<td align="left">
		<%=formatcurrency(datacommand1("taxtotal"))%>
	</td>
</tr>

<tr class="mainCategoryModuleText">
	<td align="left">&nbsp;
		
	</td>
	<td align="left">
		<%if datacommand1("abates") <> "0" then%>
		<a href="payments.asp?parcelid=<%=datacommand1("parcelid")%>&taxyear=<%=tyr%>">
		<b>Abatements:</b></a>
		<%else%>
		Abatements:
		<%end if%>
	</td>
	<td align="left">
		<%if datacommand1("abates") <> "0" then%>
		<a href="payments.asp?parcelid=<%=datacommand1("parcelid")%>&taxyear=<%=tyr%>">
		<%=formatcurrency(datacommand1("abates"))%></a>
		<%else%>
		<%=formatcurrency(datacommand1("abates"))%>
		<%end if%>
		<%'=formatcurrency(datacommand1("abates"))%>
	</td>
</tr>

<tr class="mainCategoryModuleText">
	<td align="left">
	</td>
	<td align="left">
		<%if datacommand1("nopayments") <> "0" then%>
		<b>
		<a href="payments.asp?parcelid=<%=datacommand1("parcelid")%>&taxyear=<%=tyr%>">Payments:</a>
		</b>
		<%else%>
		Payments
		<%end if%>
	</td>
	<td align="left">
		<%if datacommand1("nopayments") <> "0" then%>
		<a href="payments.asp?parcelid=<%=datacommand1("parcelid")%>&taxyear=<%=tyr%>">
		<%=formatcurrency(datacommand1("payments"))%></a>
		<%else%>
		<%=formatcurrency(datacommand1("payments"))%>
		<%end if

				session("payments") = formatcurrency(datacommand1("payments"))
		%>
	</td>
</tr>

<tr class="mainCategoryModuleText">
	<td align="left">&nbsp;
		
	</td>
	<td align="left">
		Tax due:
	</td>
	<td align="left">
		<%=formatcurrency(datacommand1("taxdue"))%>
	</td>
</tr>

<tr class="mainCategoryModuleText">
	<td align="left">&nbsp;
		
	</td>
	<td align="left">
		Fees:
	</td>
	<td align="left">
		<%=formatcurrency(datacommand1("fees"))%>
	</td>
</tr>

<tr class="mainCategoryModuleTextBottom">
	<td align="left">&nbsp;
		
	</td>
	<td align="left">
		Interest:
	</td>
	<td align="left">
		<%=formatcurrency(datacommand1("interest"))%>
	</td>
</tr>
<tr>
	<td colspan="3" align="center">
	<div class="mainLeadStoryRule">&nbsp;</div>

	</td>
</tr>
<tr class="mainCategoryModuleTextBottom">
	<td align="left">&nbsp;
	
	</td>
	<td align="left">
		<b>Total Due:</b>
	</td>
	<td align="left">
		<font class="mainAlertFont"><%=formatcurrency(datacommand1("totaldue"))%></font>
	</td>

</tr>
<tr>
	<td colspan="3" align="center">
	<br />

	</td>
</tr>
<tr>

	<td align="left" colspan=3>

		<div class="mainColOneBox" style="text-align:justify">
		
		<b>IF THE PAYMENT IS DUE:</b>
		<br />
	    you can pay it online <a href="https://payments.cityofboston.gov/realestate/pay.asp?pid=<%=request("parcelid")%>&taxyear=<%=tyr%>">right here</a>
		<br /><br />
		<b>OR</b>
		<br><br/>
		<b>MAIL YOUR REAL ESTATE TAX BILL PAYMENT TO:</b>
		<br />
		Collector of Taxes<br />
		City of Boston<br />
		P.O. Box 55808<br />
		Boston, MA 02205-5808<br />
		<br />

		<b>TO CHANGE YOUR TAX BILL MAILING ADDRESS:</b>
		<br />
		Fill, print, and sign the Change of Real Estate Tax Bill Mailing Address Form on <a href="/assessing/forms.asp">this page</a> and send it to :
		<br /><br />
		Assessing Tax Data Administration
		<br />
		Room 301
		<br />
		Boston City Hall <br />
		Boston, MA 02201
		</font>
		
		<br/><br/>	
		<b>TAX TITLE & FORECLOSURE:</b>
		<br>
		
		If you have been notified that your property is either in tax title or foreclosure, 
		contact the <a href="http://www.cityofboston.gov/law/tax.asp">City of Boston Law Department/Tax Title Division</a> at 
		617-635-4035 concerning Tax Title Procedure and the Collector's office at 617-635-4131 to obtain past due tax title balances.

		</div>

		<!--
		'<%if tyr ="prev" then%>
		  <a href="paymentinfo.asp?parcelid=<%=datacommand1("parcelid")%>&taxyear=curr">Back...
   		'<%else%>
		   <a href="paymentinfo.asp?parcelid=<%=datacommand1("parcelid")%>&taxyear=prev">Click here to view the last year data.
   		'<%end if%>
		-->

	</td>
</table>

</center>


<%

end if

'********************************************************************************
'end content
%>
<%If not Request.QueryString("mygov")="true" Then%>
	<!--#include virtual="/includes/footer_top.inc"-->
	<!--#include file="includes/right_links.inc"  -->
	<!--#include virtual="/includes/footer_bottom.inc"-->
<%Else%>
	</body>
<%End If%>