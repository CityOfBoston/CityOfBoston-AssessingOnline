<%@Language=VBScript%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Property Tax Bill and Payment Information - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->

<!--#include file="includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->

<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td colspan="2">

<div class="MainHeaderFont">Property Tax Bill and Payment Information</div>
</td>
</tr>


	<tr>
		<td align="left" width="200" valign="top">

		<form action="paymentinfo.asp" method="post">
		<input type="hidden" name="stnumb" value="">
		<input type="hidden" name="stname" value="">
		<input type="hidden" name="suffix" value="all">
		<input type="hidden" name="owner" value="">

		<b>Parcel ID:</b><br>
		<br>
		<input type="text" name="parcelid" size="15" value="<%=Request.QueryString("pid")%>">

<input type="submit" class="button" value="Search">

		</form>

			</td>


	<td align="left" width="300"><br>
	<b><u>Instructions</u></b><p>
	To the left, provide a property <b>Parcel ID</b>.
	<ul>
	<li><b>Note:</b>The parcel ID is on the top of your tax bill.
	<li>It is exactly <b>TEN</b> digits long and contains <b>No</b> dash marks or spaces.
	<br>(10 digits of parcel ID consists of 2 digits for ward, 5 digits for parcel number, and 3 digits for subparcel number).
	<li>If you do not have a tax bill to refer to, and do not know your Parcel ID number, click  <a href="/search/"> <b> here</b></a>  to search by address or owner name.
	</ul>
	</td>
						</table>
<br>
	<font face="helvetica, arial" size="1">
	To find bill MAILING ADDRESS click "Frequently Asked Questions" to the right.  Choose "Real Estate Taxes" on the next page.
	<p>For additional questions please contact
<a href="http://www.cityofboston.gov/contact/default.asp?ID=50"> Taxpayer Assistance Center.</a><br>
	</font>

		<br><br>


<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->