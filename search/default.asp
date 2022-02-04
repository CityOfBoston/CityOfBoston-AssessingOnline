<%
  Response.CharSet = "utf-8"
  Response.CacheControl="max-age=60, Public"
  Response.Expires=1 
%>
<!--#include virtual="/includes/stdf.inc"-->
<%
Dim g_sError

' global variables for validated querystring/postdata parameters
Dim QueryStringPID, QueryStringParcel, QueryStringStreetNum, QueryStringStreetName, QueryStringOwner, QueryStringStreetSuffix, QueryStringUnitNumber

Dim TodaysTime, TaxPeriod, CalendarYear, TaxYear, AssessmentDate, LienOwnerDate

Dim AbatementExemptionStartThisYear, AbatementExemptionStartNextYear, AbatementDeadlineThisYear, ExemptionDeadlineThisYear, PublicDisclosureStartAnnouncing, PublicDisclosureStartOfficial, PublicDisclosureStartOnWeb, PublicDisclosureEnd

Dim TaxRateResidential, TaxRateCommercial, OwnershipLastUpdate


'<!--============ BEGIN CONSTANTS ============-->
' update these dates in July
' tune these dates in December
' startdates are Jan-01, or Dec-30 or Dec-31 if not a weekday
AbatementExemptionStartThisYear = CDate("2022-01-01 00:01")
AbatementExemptionStartNextYear = CDate("2023-01-01 00:01")

' abatementdeadlines are Feb-01, or Feb-02 or Feb-03 if not a weekday
AbatementDeadlineThisYear = CDate("2022-02-01 17:00")

' national guard deadline is 3 months after bills are mailed
NationalGuardDeadlineThisYear = CDate("2022-04-01 17:00")

' exemptiondeadlines are Apr-01, or Apr-02 or Apr-03 if not a weekday
ExemptionDeadlineThisYear = CDate("2022-04-01 17:00")

' Business Improvement District due dates, update as needed
BIDDueDateQ1 =  "August 1, 2021"
BIDDueDateQ2 =  "November 1, 2021"
BIDDueDateQ3 =  "February 1, 2022"
BIDDueDateQ4 =  "May 1, 2022"

' public disclosure is in November every three-ish years (2012, 2015, 2020)
PublicDisclosureStartAnnouncing = CDate("2023-11-01 00:01")
PublicDisclosureStartOfficial =  CDate("2023-11-04 00:01")
PublicDisclosureStartOnWeb =  CDate("2023-11-01 00:01")
PublicDisclosureEnd = CDate("2023-11-10 17:01")

' tax year changes with the July data update not January
TaxYear = 2022

' tax period changes to "Preliminary" with the July data update, and to "Actual" with the January data update
' for testing purposes, the taxperiod can be overridden.  Example default.asp?period=actual
TaxPeriod = "Actual"

' set the database to "assessingupates" for staging, "assessingsearch" for production; references the connectionstring in global.asa
AssessingSearchDB = "assessingupdates_2022q3"


' tax rates change in January not July
TaxRateResidential = "$10.88"
TaxRateCommercial = "$24.98"

' ownershiplastupdate is the day Assessing exported data from their owners table and sent it to Webteam
OwnershipLastUpdate = "December 28, 2021"

' TodaysTime will default to Now()
' for testing purposes, the date can be overridden.  Example default.asp?date=Jul-01-2011
 TodaysTime = CDate("2022-01-02 12:30")
'TodaysTime = Now()
'<!--============ END CONSTANTS ============-->



Call Main()

'########################################################################
Sub Main()



	If Request.QueryString("q")<>"" Then
		Call CheckQueryStringQ()
	End If
	
	Call CheckQueryStringVars()

	Call SetFiscalYear()

	If QueryStringPID <> "" Then
		Call ShowFinalHTML(QueryStringPID)
	ElseIf QueryStringParcel <> "" Or QueryStringStreetNum <> "" Or QueryStringStreetName <> "" Or QueryStringOwner <> "" Then
		Call ShowSearch()
	Else
		Call ShowHTML()
	End If

End Sub 'Main()


'########################################################################
' if "q" is present in the querystring, first parse the unstructured search string
Sub CheckQueryStringQ()

	Dim QueryStringFlexibleQ
	Dim myRegExp
	Dim myMatches
	Dim myMatch

	Set myRegExp = new RegExp
	myRegExp.IgnoreCase = True
	myRegExp.Global = True


	' first replace characters .,:"=+<% with spaces and trim it and make it uppercase
	QueryStringFlexibleQ = Request.QueryString("q")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,"."," ")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,","," ")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,":"," ")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,""""," ")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,"="," ")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,"+"," ")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,"<"," ")
	QueryStringFlexibleQ = Replace(QueryStringFlexibleQ,"%"," ")
	QueryStringFlexibleQ = Trim(QueryStringFlexibleQ)
	QueryStringFlexibleQ = UCase(QueryStringFlexibleQ)

	' regex to shrink multiple whitespaces to single space
	myRegExp.pattern = "\s+"
	QueryStringFlexibleQ = myRegExp.Replace(QueryStringFlexibleQ, " ")


	'regex matches parcelid either 10 digits or 2+8 or 2+5+3 digits separated by up to three nondigits
	' if we think q contains a parcel id, then use that and exit
	' matches: 1234567890 ; 12-34567890 ; 12 / 34567 / 890
	myRegExp.pattern = "(?:\D|^)(\d{10}|\d{2}\D{1,3}\d{8}|\d{2}\D{1,3}\d{5}\D{1,3}\d{3})(?:\D|$)"
	Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
	If myMatches.Count > 0 Then 
		QueryStringParcel = myMatches(0).SubMatches(0)
		' use regex to remove any remaining nondigits
		myRegExp.pattern = "[^0-9]"
		QueryStringParcel = myRegExp.Replace(QueryStringParcel, "")
		Exit Sub
	End If

	'regex matches partial parcelid of 8 digits or 5+3 digits
	'if we have it, then  include that as a parcelid value, but also continue parsing
	' matches: 12345678 ; 34567 / 890
	myRegExp.pattern = "(?:\D|^)(\d{8}|\d{5}\D{1,3}\d{3})(?:\D|$)"
	Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
	If myMatches.Count > 0 Then 
		QueryStringParcel = myMatches(0).SubMatches(0)
	End If


	' regex matches digits (street number), then nondigits (street name), then a poundsign, then anything (unit)
	' street-number contains digits with an optional hypen and letter 
	' matches: (10) (BOWDOIN ST) UNIT # (309) ; (10) (BOWDOIN ST) UNIT #(PH 1) ; (10) (BOWDOIN ST) #(AA) ; (10) (BOWDOIN ST)#(3-A)
	myRegExp.pattern = "^(\d{1,5}\-?[A-Z]?)\s(\D+?)(?:\sUNIT|\sNO|\sAPT|\sAPARTMENT|\sFL|\sFLOOR|\sBLDG|\sBUILDING)?\s?#\s?(.*?)$" 
	Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
	If myMatches.Count > 0 Then
		QueryStringStreetNum = myMatches(0).SubMatches(0)
		QueryStringStreetName = myMatches(0).SubMatches(1)
		QueryStringUnitNumber = myMatches(0).SubMatches(2)
	Else
		' regex matches digits (street number), then nondigits (street name), then an apartment-label, then anything (unit)
		' matches: (10) (BOWDOIN ST) APT (309) ; (10) (BOWDOIN ST) FL(3) ; (10) (BOWDOIN ST) APT (3-A)
		myRegExp.pattern = "^(\d{1,5}\-?[A-Z]?)\s(\D+?)\s(?:UNIT|NO|APT|APARTMENT|FL|FLOOR|BLDG|BUILDING)(\s.*?|\d[A-Z0-9\-]{0,5})$" 
		Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
		If myMatches.Count > 0 Then
			QueryStringStreetNum = myMatches(0).SubMatches(0)
			QueryStringStreetName = myMatches(0).SubMatches(1)
			QueryStringUnitNumber = myMatches(0).SubMatches(2)
		Else
			' regex matches digits (street number), then nondigits (street name), then digits + optional hypen/digits (unit)
			' matches: (10) (BOWDOIN ST) (309) ; (10) (BOWDOIN) (3-A) 
			myRegExp.pattern = "^(\d{1,5}\-?[A-Z]?)\s(\D+?)\s(\d[A-Z0-9\-]{0,5})$" 
			Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
			If myMatches.Count > 0 Then
				QueryStringStreetNum = myMatches(0).SubMatches(0)
				QueryStringStreetName = myMatches(0).SubMatches(1)
				QueryStringUnitNumber = myMatches(0).SubMatches(2)
			Else
				' regex matches digits (street number), then nondigits (street name)
				' matches: (10) (BOWDOIN ST)
				myRegExp.pattern = "^(\d{1,5}\-?[A-Z]?)\s(\D+)$"
				Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
				If myMatches.Count > 0 Then
					QueryStringStreetNum = myMatches(0).SubMatches(0)
					QueryStringStreetName = myMatches(0).SubMatches(1)
				End If
			End If
		End If
	End If


	' regex to separate suffix from the end of the streetname
	' matches (BOWDOIN) (ST) ; (ST PAUL) (STREET)
	myRegExp.pattern = "^(.*)\s+(AL|AV|BL|CI|CT|DR|HW|LA|PK|PW|PL|PZ|RD|RO|SQ|ST|TE|XT|WY|WH|Alley|Avenue|Blvd|Circle|Court|Drive|Extension|Highway|Lane|Park|Parkway|Place|Plaza|Road|Row|Square|Street|Terrace|Way|Wharf|AVE|BOULEVARD|CIR|HWY|PLZ|TER)$"
	Set myMatches = myRegExp.Execute(Trim(QueryStringStreetName))
	If myMatches.Count > 0 Then 
		QueryStringStreetName = myMatches(0).SubMatches(0)
		QueryStringStreetSuffix = myMatches(0).SubMatches(1)
	End If

	' regex to distinguish ownername from a street+suffix
	' when the q string contains only letters no numbers
	' this part will not match if any digits are present, only letters and spaces
	' matches (BOWDOIN) (ST) but not: BOWDOIN
	myRegExp.pattern = "^([A-Z\s]+)\s(AL|AV|BL|CI|CT|DR|HW|LA|PK|PW|PL|PZ|RD|RO|SQ|ST|TE|XT|WY|WH|Alley|Avenue|Blvd|Circle|Court|Drive|Extension|Highway|Lane|Park|Parkway|Place|Plaza|Road|Row|Square|Street|Terrace|Way|Wharf|AVE|BOULEVARD|CIR|HWY|PLZ|TER)$"
	Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
	If myMatches.Count > 0 Then
		QueryStringStreetName = myMatches(0).SubMatches(0)
		QueryStringStreetSuffix = myMatches(0).SubMatches(1)
	Else
		' matches: SMITH ; SMITH THOMAS
		myRegExp.pattern = "^([-A-Z\s]+)$"
		Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
		If myMatches.Count > 0 Then 
			QueryStringOwner = QueryStringFlexibleQ
		End If
	End If

	' if unsuccessful in parsing the q parameter, then just use it for streetname if it contains letters, otherwise use it for the parcelid
	If QueryStringFlexibleQ<>"" And QueryStringParcel="" And QueryStringStreetName="" And QueryStringOwner="" Then
		myRegExp.pattern = "[A-Z]"
		Set myMatches = myRegExp.Execute(QueryStringFlexibleQ)
		If myMatches.Count > 0 Then
			QueryStringStreetName=QueryStringFlexibleQ
		Else
			QueryStringParcel = QueryStringFlexibleQ		
		End If
	End If

' for debuggging
'RESPONSE.WRITE "QueryStringFlexibleQ:" & QueryStringFlexibleQ & "<BR>"
'RESPONSE.WRITE "QueryStringParcel:" & QueryStringParcel & "<BR>"
'RESPONSE.WRITE "QueryStringStreetNum:" & QueryStringStreetNum & "<BR>"
'RESPONSE.WRITE "QueryStringStreetName:" & QueryStringStreetName & "<BR>"
'RESPONSE.WRITE "QueryStringStreetSuffix:" & QueryStringStreetSuffix & "<BR>"
'RESPONSE.WRITE "QueryStringUnitNumber:" & QueryStringUnitNumber & "<BR>"
'RESPONSE.WRITE "QueryStringOwner:" & QueryStringOwner & "<BR>"

End Sub 'CheckQueryStringQ()


'########################################################################
' clean up and store querystring and form variables in ASP global vars
' this also parses the flexible 'q' querystring parameter into ASP vars 
Sub CheckQueryStringVars()

	Dim myRegExp
	
	' initialize the regex object
	Set myRegExp = new RegExp
	myRegExp.IgnoreCase = True
	myRegExp.Global = True

	' set regex for filtering nondigits
	myRegExp.pattern = "[^0-9]"

	' store PID from querystring
	' replace nondigits so no need to sanitize
	If Request.QueryString("PID")<>"" Then
		QueryStringPID = Request.QueryString("PID")
	End If
	QueryStringPID = myRegExp.Replace(QueryStringPID, "")

	' store parcelid from either querystring or POST vars.
	' replace nondigits so no need to sanitize
	If Request.QueryString("parcel")<>"" Then
		QueryStringParcel = Request.QueryString("parcel")
	ElseIf Request.Form("parcel")<>"" Then
		QueryStringParcel = Request.Form("parcel")
	End If
	QueryStringParcel = myRegExp.Replace(QueryStringParcel, "")

	' parcelid should have 10 digits, or at least be forgiving with 8 digits - missing ward
	If Len(QueryStringParcel) <> 0 And Len(QueryStringParcel) <> 10 And Len(QueryStringParcel) <> 8 Then
		Response.Redirect "?error=Parcel ID must contain 10 digits"
	End If

	
	' store stnumb from either querystring or POST vars.
	' replace everything except dashes, letters, digits so no need to sanitize
	myRegExp.pattern = "[^0-9A-Z\-]"
	If Request.QueryString("streetnumber")<>"" Then
		QueryStringStreetNum = Request.QueryString("streetnumber")
	ElseIf Request.Form("streetnumber")<>"" Then
		QueryStringStreetNum = Request.Form("streetnumber")
	End If
	QueryStringStreetNum = UCase(myRegExp.Replace(QueryStringStreetNum, ""))

	' store owner from either querystring or POST vars.
	' owner may contain any ASCII character so nothing more than trim
	If Request.QueryString("owner")<>"" Then
		QueryStringOwner = Request.QueryString("owner")
	ElseIf Request.Form("owner")<>"" Then
		QueryStringOwner = Request.Form("owner")
	End If
	QueryStringOwner = UCase(Trim(QueryStringOwner))


	' store streetname from either querystring or POST vars.
	' replace nonletters/nonspaces so no need to sanitize
	If Request.QueryString("streetname")<>"" Then
		QueryStringStreetName = Request.QueryString("streetname")
	ElseIf Request.Form("streetname")<>"" Then
		QueryStringStreetName = Request.Form("streetname")
	End If
	QueryStringStreetName = UCase(Trim(QueryStringStreetName))


	' replace ordinals in streetname (1ST becomes FIRST)
	If QueryStringStreetName <> "" Then
		QueryStringStreetName = Replace(QueryStringStreetName, "1ST", "FIRST")
		QueryStringStreetName = Replace(QueryStringStreetName, "2ND", "SECOND")
		QueryStringStreetName = Replace(QueryStringStreetName, "3RD", "THIRD")
		QueryStringStreetName = Replace(QueryStringStreetName, "4TH", "FOURTH")
		QueryStringStreetName = Replace(QueryStringStreetName, "5TH", "FIFTH")
		QueryStringStreetName = Replace(QueryStringStreetName, "6TH", "SIXTH")
		QueryStringStreetName = Replace(QueryStringStreetName, "7TH", "SEVENTH")
		QueryStringStreetName = Replace(QueryStringStreetName, "8TH", "EIGHTH")
		QueryStringStreetName = Replace(QueryStringStreetName, "9TH", "NINTH")
	End If


	' regex for strip suffix from streetname
	myRegExp.pattern = "\s+(AL|AV|BL|CI|CT|DR|HW|LA|PK|PW|PL|PZ|RD|RO|SQ|ST|TE|XT|WY|WH|Alley|Avenue|Blvd|Circle|Court|Drive|Extension|Highway|Lane|Parkway|Place|Plaza|Road|Row|Square|Street|Terrace|Way|Wharf|AVE|BOULEVARD|CIR|HWY|PLZ|TER)$"
	QueryStringStreetName = myRegExp.Replace( QueryStringStreetName, "")


	' regex for filtering nonletters and nonspaces
	myRegExp.pattern = "[^A-Z\s]"
	QueryStringStreetName = myRegExp.Replace( QueryStringStreetName, "")

	' regex for filtering nonletters
	myRegExp.pattern = "[^A-Z]"

	' store suffix from either querystring or POST vars.
	' replace nonletters so no need to sanitize
	' only use streetsuffix if streetname also is present
	If Request.QueryString("streetsuffix")<>"" And QueryStringStreetName<>"" Then
		QueryStringStreetSuffix = Request.QueryString("streetsuffix")
	ElseIf Request.Form("streetsuffix")<>"" And QueryStringStreetName<>"" Then
		QueryStringStreetSuffix = Request.Form("streetsuffix")	
	End If
	QueryStringStreetSuffix = UCase(myRegExp.Replace(QueryStringStreetSuffix, ""))

	
	' regex for filtering anything but dashes, letters, numbers
	myRegExp.pattern = "[^0-9A-Z\-]"

	' store unitnumber from either querystring or POST vars.
	' replace punctuation except hyphens so no need to sanitize
	If Request.QueryString("unitnumber")<>"" Then
		QueryStringUnitNumber = Request.QueryString("unitnumber")
	ElseIf Request.Form("unitnumber")<>"" Then
		QueryStringUnitNumber = Request.Form("unitnumber")
	End If
	QueryStringUnitNumber = myRegExp.Replace( UCase(Trim(QueryStringUnitNumber)) , "")


	' abbreviate suffixes to two characters
	' STREET becomes ST
	Select Case QueryStringStreetSuffix
		Case "ALLEY"
			QueryStringStreetSuffix = "AL"
		Case "AVENUE","AVE"
			QueryStringStreetSuffix = "AV"
		Case "BLVD","BOULEVARD"
			QueryStringStreetSuffix = "BL"
		Case "CIRCLE","CIR"
			QueryStringStreetSuffix = "CI"
		Case "COURT"
			QueryStringStreetSuffix = "CT"
		Case "DRIVE"
			QueryStringStreetSuffix = "DR"
		Case "HIGHWAY","HWY"
			QueryStringStreetSuffix = "HW"
		Case "LANE"
			QueryStringStreetSuffix = "LA"
		Case "PARK"
			QueryStringStreetSuffix = "PK"
		Case "PARKWAY","PKWY"
			QueryStringStreetSuffix = "PW"
		Case "PLACE"
			QueryStringStreetSuffix = "PL"
		Case "PLAZA","PLZ"
			QueryStringStreetSuffix = "PZ"
		Case "ROAD"
			QueryStringStreetSuffix = "RD"
		Case "ROW"
			QueryStringStreetSuffix = "RO"
		Case "SQUARE"
			QueryStringStreetSuffix = "SQ"
		Case "STREET"
			QueryStringStreetSuffix = "ST"
		Case "TERRACE","TER","TERR"
			QueryStringStreetSuffix = "TE"
		Case "WAY"
			QueryStringStreetSuffix = "WY"
		Case "WHARF"
			QueryStringStreetSuffix = "WH"
	End Select

	' if there's a date variable in the querystring, override Now()
	' set the time to 5pm with the desired date
	If IsDate( Request.Querystring("date") ) Then
		TodaysTime = DateAdd("h",17,CDate(Request.Querystring("date")))
	End If

	' if there's a taxperiod variable in the querystring, override TaxPeriod
	If LCase(Request.Querystring("period")) = "actual" Then
		TaxPeriod = "Actual"
	ElseIf LCase(Request.Querystring("period")) = "preliminary" Then
		TaxPeriod = "Preliminary"
	End If


End Sub 'CheckQueryStringVars()


'########################################################################
' SetFiscalYear sets global variables based on either the systemdate or the date from the querystring
' CalendarYear is the current calendar year
' AssessmentDate is January 1, of the previous calendar year; values shown are always for Jan 1 of last year
' LienOwnerDate is January 1 of the previous year; ownership shown is the owner on Jan 1 from July-Dec, or on the previous Jan 1 from Jan-Jun
Sub SetFiscalYear()


If TaxPeriod = "Actual" Then
	CalendarYear = TaxYear
	AssessmentDate = CDate( "January 1 " & CStr(CalendarYear - 1) )
	LienOwnerDate = CDate( "January 1 " & CStr(CalendarYear - 1) )
ElseIf TaxPeriod = "Preliminary" Then
	CalendarYear = TaxYear - 1
	AssessmentDate = CDate( "January 1 " & CStr(CalendarYear - 1) )
	LienOwnerDate = CDate( "January 1 " & CStr(CalendarYear) )
End If


End Sub 'SetFiscalYear()





'########################################################################
' renders the <option>'s for an HTML select box with a value selected
' parameters are two arrays containing HTML values/options, and the desired selected value
Function HTMLSelectboxSelected ( selectvalues, selectoptions, selectedvalue )

	HTMLSelectboxSelected = ""
	For i = 0 To ( UBound( selectoptions ) - 1)
		HTMLSelectboxSelected = HTMLSelectboxSelected & "<option value=""" & selectvalues(i) & """ "
		If selectvalues(i) = selectedvalue Then
			HTMLSelectboxSelected = HTMLSelectboxSelected & "SELECTED"
		End If
		HTMLSelectboxSelected = HTMLSelectboxSelected & ">" & selectoptions(i) & "</option>"
	Next

End Function 'HTMLSelectboxSelected()




'########################################################################
' Ternary function provides functionality similar to the shorthand ternary "x ? y : z" syntax
' It's useful for displaying different HTML based on an ASP condition
' Reference: http://en.wikipedia.org/wiki/%3F:
'
' be careful to not use it to prevent compilation errors, because all paraemters get eval'd at runtime
' for example, Ternary ( (x <> 0), True, x / 0) will crash at runtime when x=0
Function Ternary( test, ifresult, elseresult)

	If test Then
		Ternary = ifresult
	Else
		Ternary = elseresult
	End If

End Function 'Ternary()




'########################################################################
' MapLinkFunction returns the HTML for a link to the GIS map for a given parcel.
Function MapLinkFunction( parcel_id )

	MapLinkFunction = "<a class=""mainColLink"" href=""http://app01.cityofboston.gov/AssessingMap/?find=" & parcel_id & """ onclick=""var PopupWin=window.open('http://app01.cityofboston.gov/AssessingMap/?find=" & parcel_id & "','PopupWin','status=yes,resizable=yes,menubar=yes,toolbar=yes,location=yes,directories=yes,scrollbars=yes'); return false;"">Map</a>"

End Function 'MapLinkFunction()

'########################################################################
' FormatAttibute truncates property attributes like 'CL - Colonial'
Function FormatAttribute( longattribute )

	Set myRegExp = new RegExp
	myRegExp.IgnoreCase = False
	myRegExp.pattern = "^[0-9]?[A-Z]{1,2}(?:_[A-Z])? - "
	If isNull(longattribute) Then longattribute = ""
	longattribute = myRegExp.Replace(longattribute, "")
	myRegExp.pattern = "\s(AREA|COUNT|SF)\s*?$"
	FormatAttribute = myRegExp.Replace(longattribute, "")

End Function 'FormatAttribute()



'########################################################################
' renders the webpage for showing data on a single parcel
Sub ShowValuationsSections(ByRef RecordSetTaxbill)

Dim Penalty_38D

%>

<table width="100%">
	<tr class="mainColTableHeaderRowBorders">
		<th colspan=2><%=Ternary(TodaysTime < PublicDisclosureStartOnWeb Or TodaysTime > PublicDisclosureEnd,"Value/","")%>Tax</th>
	</tr>
	<%If TodaysTime < PublicDisclosureStartOnWeb Or TodaysTime > PublicDisclosureEnd Then%><tr>
		<th colspan="2" >
		Assessment as of <%=FormatDateTime(AssessmentDate,1)%>, statutory lien date.
		</th>
	</tr>
	<tr>
		<td>
			<br><b>FY<%=CalendarYear%> Building value:</b>
		</td>
		<td align="right">
			<br><%=FormatCurrency(CLng(RecordSetTaxbill("total_building_value")))%>
		</td>
	</tr>
	<tr>
		<td>
			<b>FY<%=CalendarYear%> Land Value:</b>
		</td>
		<td align="right">
			<%=FormatCurrency(CLng(RecordSetTaxbill("total_land_value").value))%>
		</td>
	</tr>
	
	<tr>
		<td>
		<b>FY<%=CalendarYear%> Total Assessed Value:</b>
		</td>
		<td align="right">
			<%=FormatCurrency(CLng(RecordSetTaxbill("total_value")))%>
		</td>
	</tr>
	<tr>
		<td align="left" colspan=2>
			<br><b>FY<%=CalendarYear%> Tax Rates</b>  (per thousand):
		</td>
	</tr>
	<tr>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;- Residential:
		</td>
		<td align="right">
			<%=TaxRateResidential%>
		</td>
		</td>
	</tr>
	<tr>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;- Commercial:
		</td>
		<td align="right">
			<%=TaxRateCommercial%>
		</td>
	</tr><%End If%>



<%
If TaxPeriod = "Actual" Then
%>
  	<tr>
		<td align="left">
			<br><b>FY<%=CalendarYear%> Gross Tax:</b>
		</td>
		<td align="right">
			<br><%=FormatCurrency(CDbl(RecordSetTaxbill("gross_tax")))%>
		</td>
	</tr>
	<tr>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;<a class="mainColLink" href="https://www.boston.gov/community-preservation-act">Community Preservation</a>:
		</td>
		<td align="right">
			<%=FormatCurrency( RecordSetTaxbill("cpa"))%>
		</td>
	</tr> 
	<tr>
		<td align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;- Residential Exemption:
		</td>
		<td align="right">
			<%=FormatCurrency(RecordSetTaxbill("resexempt"))%>
		</td>
	</tr>
	<tr>
		<td align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;- Personal Exemption:
		</td>
		<td align="right">
			<%=FormatCurrency(CDbl(RecordSetTaxbill("persexempt_1")))%>
		</td>
	</tr>
<%
			' show 2nd personal exemption if exists
			If CDbl(RecordSetTaxbill("persexempt_2")) > 0 Then
			
%>
	<tr>
		<td align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;- Personal Exemption:
		</td>
		<td align="right">
			<%=FormatCurrency(CDbl(RecordSetTaxbill("persexempt_2")))%>
		</td>
	</tr>
<%
			End If

			' codeviolations
			' only show the record if nonzero
			If CDbl(RecordSetTaxbill("code_enforcement_tax")) > 0 Then
%>
	<tr>
		<td align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;+ Code Violations:
		</td>
		<td align="right">
			<%=FormatCurrency(CDbl(RecordSetTaxbill("code_enforcement_tax")))%>
		</td>
	</tr>
<%
			End If

			' 38D Penalty is N=$0, Y=$50, Z=$250
			' only show the record if nonzero
			If CDbl(RecordSetTaxbill("38D_fine")) > 0 Then
%>
	<tr>
		<td align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;+ 38D Penalty:
		</td>
		<td align="right">
			<%=FormatCurrency(CDbl(RecordSetTaxbill("38D_fine")))%>
		</td>
	</tr>
<%
			End If
			If CDbl(RecordSetTaxbill("sidewalk_betterment")) > 0 Then
%>
	<tr>
		<td align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;+ Sidewalk Betterment:
		</td>
		<td align="right">
			<%=FormatCurrency(CDbl(RecordSetTaxbill("sidewalk_betterment")))%>
		</td>
	</tr>
<%
			End If
			If CDbl(RecordSetTaxbill("street_betterment")) > 0 Then
%>
	<tr>
		<td align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;+ Street Betterment:
		</td>
		<td align="right">
			<%=FormatCurrency(CDbl(RecordSetTaxbill("street_betterment")))%>
		</td>
	</tr>
<%
			End If
%>
	<tr>
		<td align="left">
			<b>FY<%=TaxYear%> Net Tax</b>:
		</td>
		<td align="right">
			<%=FormatCurrency( CDbl(RecordSetTaxbill("net_tax")) )%>	
		</td>
	</tr>
<%
ElseIf TaxPeriod="Preliminary" Then
%>

	<tr class="mainCategoryModuleTextBottom">
		<td align="left"><br>
			<b>FY<%=TaxYear%> Preliminary Tax (Q1 + Q2):</b>
		</td>
	</tr>
		
	<tr><td>
					&nbsp;&nbsp;&nbsp;&nbsp;Estimated Tax:
		</td>
		<td align="right">
			<%=FormatCurrency( CDbl(RecordSetTaxbill("RE Tax Amt")))%>
		</td>
	</tr> 
	<tr>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;<a class="mainColLink" href="https://www.boston.gov/community-preservation-act">Community Preservation</a>:
		</td>
		<td align="right">
			<%=FormatCurrency( RecordSetTaxbill("CPA Amt"))%>
		</td>
	</tr>
<%
If Not isNull(RecordSetTaxbill("bid_downtown")) And Not isNull(RecordSetTaxbill("bid_greenway")) Then
	If CDbl(RecordSetTaxbill("bid_downtown"))>0 Or CDbl(RecordSetTaxbill("bid_greenway"))>0 Then
%>
	<tr>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;Business Improvement District:
		</td>
		<td align="right">
			<%=FormatCurrency( CDbl(RecordSetTaxbill("bid_downtown")) + CDbl(RecordSetTaxbill("bid_greenway")) )%>
		</td>
	</tr>
<%
	End If ' BID line-item
End If ' BID line-item isnull
%>	
	<tr><td>
					&nbsp;&nbsp;&nbsp;&nbsp;Total Tax, First Half:
		</td>
		<td align="right">
			<%=FormatCurrency( RecordSetTaxbill("Total Billed Amt") )%>
		</td>
	</tr> 
<%
End If ' prelim/actual
%>

	
</table>
<br><br>

<%
End Sub 'ShowValuationsSections()



'########################################################################
' renders the section for Business Improvement District (BID) on a single parcel
Sub ShowBusinessImprovementSection(ByRef RecordSetTaxbill)

Dim BidAmount, BidDistrict, BidDowntown, BidGreenway

	If isNull(RecordSetTaxbill("bid_downtown")) Then
		BidDowntown = 0
	Else
		BidDowntown = RecordSetTaxbill("bid_downtown")
	End If

	If isNull(RecordSetTaxbill("bid_greenway")) Then
		BidGreenway = 0
	Else
		BidGreenway = RecordSetTaxbill("bid_greenway")
	End If
	
	
	BidAmount = FormatCurrency((BidDowntown + BidGreenway)/2)

	If BidDowntown > 0 And BidGreenway > 0 Then
		BidDistrict = "Downtown and Greenway"
	ElseIf BidDowntown > 0 Then
		BidDistrict = "Downtown"
	ElseIf BidGreenway > 0 Then
		BidDistrict = "Greenway"
	End If 
	
%>

<table width="100%">
	<tr class="mainColTableHeaderRowBorders">
		<th colspan=2>Business Improvement District Assessment</th>
	</tr>
	<tr>
		<td align="left">
			<%=Ternary(TaxPeriod="Preliminary", "1st Quarter Payment (due " + BIDDueDateQ1 + ")","3rd Quarter Payment (due " + BIDDueDateQ3 + ")")%>
		</td>
		<td align="right">
			<%=BidAmount%>
		</td>
	</tr>
	<tr>
		<td align="left">
			<%=Ternary(TaxPeriod="Preliminary", "2nd Quarter Payment (due " + BIDDueDateQ2 + ")","4th Quarter Payment (due " + BIDDueDateQ4 + ")")%>
		</td>
		<td align="right">
			<%=BidAmount%>
		</td>
	</tr>
</table>
<p>This parcel is included in the <%=BidDistrict%> improvement district.</p>
<br><br>

<%
End Sub 'ShowBusinessImprovementSection()




'########################################################################
' render the list of abatement and exemption forms
Sub ShowAbatementSection( LandUse, ResidentialExemption, PersonalExemption, ResidentialExemptionAmount, PersonalExemptionAmount, PersonalExemptionAmount2 )

Dim isResidential, HasResidentialExemption, HasPersonalExemption, isShortForm

Dim AbatementURLShortForm, AbatementURLLongForm, ResidentialExemptionURL, PersonalExemptionURL


	' only these landuse types can get a residential/personal exemption
	isResidential = Ternary( (LandUse="R1" Or LandUse="R2" Or LandUse="R3" Or LandUse="R4" Or LandUse="A" Or LandUse="CD" Or LandUse="RC") , True , False )
	' only these landuse types can get a residential/personal exemption
	isShortForm = Ternary( (LandUse="R1" Or LandUse="R2" Or LandUse="R3" Or LandUse="CD" Or LandUse="RL" Or LandUse="CP") , True , False )

	' check if the parcel already has the exemption for this year
	HasResidentialExemption = Ternary ( ResidentialExemption = True , True, False )
	HasPersonalExemption = Ternary ( PersonalExemption = True , True, False )
	HasSecondPersonalExemption = Ternary ( CDbl(PersonalExemptionAmount2) > 0 , True, False )


	Dim dateQs
	dateQs = Ternary(IsDate(Request.Querystring("date")), "&date=" & Request.Querystring("date") , "")
	'dateQs= "&date=2018-01-01"

	Dim devQs
	devQs = Ternary((Request.Querystring("devflag") = "1"), "&devflag=1" , "")

	AbatementURLShortForm = "//www.cityofboston.gov/assessing/search/itextsharp/?form_type=overval&parcelid=" + QueryStringPID
	AbatementURLLongForm = "//www.cityofboston.gov/assessing/search/itextsharp/?form_type=overval&parcelid=" + QueryStringPID
	ResidentialExemptionURL = "//www.cityofboston.gov/assessing/search/itextsharp/?form_type=resex&parcelid=" + QueryStringPID
	PersonalExemptionURL = "//www.cityofboston.gov/assessing/search/itextsharp/?form_type=persex&parcelid=" + QueryStringPID

	' temp overrides for when LO is not ready
	'AbatementURLShortForm = "//www.cityofboston.gov/assessing/search/forms/FY2020_Abatement_Application_residential.pdf"
	'AbatementURLLongForm = "//www.cityofboston.gov/assessing/search/forms/FY2020_Abatement_Application.pdf"
	'ResidentialExemptionURL = "//www.cityofboston.gov/assessing/search/forms/FY2020_Residential_Exemption_Application.pdf"
	'PersonalExemptionURL = "//www.cityofboston.gov/assessing/search/forms/FY2020_Personal_Exemption_Application.pdf"

	AbatementURLShortFormStatic  = AbatementURLShortForm 
	AbatementURLLongFormStatic = AbatementURLLongForm
	ResidentialExemptionURLStatic = ResidentialExemptionURL
	PersonalExemptionURLStatic = PersonalExemptionURL
	
	'AbatementURLShortForm = "//www.cityofboston.gov/assessing/search/FY2019_Boston_Abatement_Application_Residential.pdf"
	'AbatementURLLongForm = "//www.cityofboston.gov/assessing/search/FY2019_Boston_Abatement_Application_Long.pdf"
	'AbatementURLShortFormStatic = "//www.cityofboston.gov/assessing/search/FY2019_Boston_Abatement_Application_Residential.pdf"
	'AbatementURLLongFormStatic = "//www.cityofboston.gov/assessing/search/FY2019_Boston_Abatement_Application_Long.pdf"
	'ResidentialExemptionURL = "//www.cityofboston.gov/assessing/search/requestform/?formtype=residential&pid=" + QueryStringPID
	'PersonalExemptionURL = "//www.cityofboston.gov/assessing/search/requestform/?formtype=personal&pid=" + QueryStringPID



%>
	<table width="100%"><tr class="mainColTableHeaderRowBorders">
		<th colspan=2>Abatements/Exemptions</th>
	</tr></table>
<%

	' show abatement section
	If TaxPeriod="Preliminary" Or TodaysTime < AbatementExemptionStartThisYear Then

		%><p>Applications for Abatements<%=Ternary(isResidential,", Residential Exemptions, and Personal Exemptions","")%> for FY<%=TaxYear%> are not yet available online.  Applications will become available for download beginning <%=FormatDateTime(AbatementExemptionStartThisYear,2)%></p><%

	Else
	
		If TodaysTime < AbatementDeadlineThisYear Then

			%><p>To file an <b>Abatement</b> Application for FY<%=TaxYear%> <a class="mainColLink" rel="nofollow" href2="<%=Ternary(isShortForm,AbatementURLShortFormStatic,AbatementURLLongFormStatic)%>" href="<%=Ternary(isShortForm,AbatementURLShortForm,AbatementURLLongForm)%>">click here</a>.  The deadline for submission is  <%=FormatDateTime(AbatementDeadlineThisYear,1)%><%=Ternary(TodaysTime > DateAdd("d",-7,AbatementDeadlineThisYear)," at " + FormatDateTime(AbatementDeadlineThisYear,3),"")%>.</p><%

		ElseIf TodaysTime < DateAdd("d",28,AbatementDeadlineThisYear) Then

			%><p>The deadline for filing an Abatement application for FY<%=TaxYear%> was <%=FormatDateTime(AbatementDeadlineThisYear,2)%>.  However, additional documentation for applications already on file is still being accepted.</p><%

		Else

			%><p>The deadline for filing an Abatement application for FY<%=TaxYear%> was <%=FormatDateTime(AbatementDeadlineThisYear,2)%>.  Applications for  FY<%=TaxYear+1%> will become available for download beginning  <%=FormatDateTime(AbatementExemptionStartNextYear,2)%>.</p><%

		End If
	End If


	' show exemption section
	If isResidential Then

		If TaxPeriod = "Actual" And (TodaysTime > AbatementExemptionStartThisYear And TodaysTime < ExemptionDeadlineThisYear) Then

			If Not HasResidentialExemption Then
				%><p>To file a <b>Residential Exemption</b> Application for FY<%=TaxYear%> <a class="mainColLink" rel="nofollow" href="<%=ResidentialExemptionURL%>">click here</a>.  The deadline for submission is <%=FormatDateTime(ExemptionDeadlineThisYear,1)%><%=Ternary(TodaysTime > DateAdd("d",-7,ExemptionDeadlineThisYear)," at <strong>" + FormatDateTime(ExemptionDeadlineThisYear,3) + "</strong>","")%>.</p><%
			End If

			If Not HasPersonalExemption Then
				%><p>To file a <b>Personal Exemption</b> Application (Elderly, Blind, Surviving Spouse, Veteran, National Guard) for FY<%=TaxYear%> <a class="mainColLink" rel="nofollow" href="<%=PersonalExemptionURL%>">click here</a>.   The deadline for submission is  <%=FormatDateTime(ExemptionDeadlineThisYear,1)%><%=Ternary(TodaysTime > DateAdd("d",-7,ExemptionDeadlineThisYear)," at <strong>" + FormatDateTime(ExemptionDeadlineThisYear,3) + "</strong>","")%>.</p><%
			End If

		ElseIf TaxPeriod = "Actual" And TodaysTime > ExemptionDeadlineThisYear Then

			%><p>The deadline for filing a Residential or Personal Exemption application for FY<%=TaxYear%> was <%=FormatDateTime(ExemptionDeadlineThisYear,1)%>.  Applications for  FY<%=TaxYear+1%> will become available for download beginning  <%=FormatDateTime(AbatementExemptionStartNextYear,1)%>.</p><%

		End If


		If HasResidentialExemption Then
			If TaxPeriod = "Actual" Then 
				%><p>A <b>Residential Exemption</b> has been granted for this parcel.</p><%
			Else
				%><p>A <b>Residential Exemption</b> was granted for this parcel for FY<%=(TaxYear-1)%> and is reflected in the Estimated tax for FY<%=TaxYear%>.</p><%
			End If
		End If

		If HasSecondPersonalExemption Then
			If TaxPeriod = "Actual" Then 
				%><p>Multiple <b>Personal Exemptions</b> have already been granted for this parcel.</p><%
			Else
				%><p>Multiple <b>Personal Exemptions</b> were granted for this parcel for FY<%=(TaxYear-1)%> and applied to the Estimated tax for FY<%=TaxYear%>.</p><%
			End If
		ElseIf HasPersonalExemption Then
			If TaxPeriod = "Actual" Then 
				%><p>One <b>Personal Exemption</b> has already been granted for this parcel.</p><%
			Else
				%><p>One <b>Personal Exemption</b> was granted for this parcel for FY<%=(TaxYear-1)%> and applied to the Estimated tax for FY<%=TaxYear%>.</p><%
			End If
		End If


	Else ' is commercial
	
		%><p>This type of parcel is not eligible for a residential or personal exemption.</p><%

	End If


%><br><%

End Sub 'ShowAbatementSection()




'########################################################################
' show contents of the [current_owners] table
Sub ShowCurrentOwners( LienOwner )

Dim sSQL
Dim OwnershipChangeAlert
Dim myRegExp



	sSQL = "SELECT * FROM [current_owners] WHERE parcel_id='" & QueryStringPID & "' ORDER BY [seqno] ASC"
	
	Set g_objRecords = g_objConn.Execute(sSQL)

	If g_objRecords.EOF Then
		g_sError = "No Records Found"
		Exit Sub
	End If

	Set myRegExp = new RegExp
	myRegExp.IgnoreCase = True
	myRegExp.Global = True
	myRegExp.pattern = "\s+" 	' regex to remove whitespace for safer comparison
	
	' if the owner record in [taxbill] table is different from the 1st record in the [current_owners] table, then explain why
	If myRegExp.Replace(LienOwner, "") <> myRegExp.Replace(g_objRecords("owner_name"), "") Then
		OwnershipChangeAlert = LienOwner & " is recorded as the legal owner for the " & Year(LienOwnerDate) & " assessment year, and will change to " & g_objRecords("owner_name") & "  on July 1, " & TaxYear & "."
	Else 
		OwnershipChangeAlert = ""
	End If 

%>


<table width="100%">
	<tr class="mainColTableHeaderRowBorders">
		<th colspan=2>Current Owner</th>
	</tr>
<%
	NumOwner = 0
	Do While Not g_objRecords.EOF
%>
	<tr>
		<td><%=g_objRecords("seqno")%></td>
		<td><%=g_objRecords("owner_name")%></td>
	</tr>
<%
	NumOwner = NumOwner + 1
	g_objRecords.MoveNext
	Loop
%>
</table>

<center><p>
Owner information may not reflect any changes submitted to City of Boston Assessing after <%=OwnershipLastUpdate%>.<%=Ternary(NumOwner>1,"  Authoritative ownership information is held by the Registry of Deeds.","")%><%=OwnershipChangeAlert%>
</p></center>
<br>
<%
End Sub 'ShowCurrentOwners()



'########################################################################
' show contents of the [value_history] table
Sub ShowValueHistory()

Dim sSQL

	sSQL = ""
	sSQL = sSQL & "SELECT parcel_history.*, [landuse_described].[description] "
	sSQL = sSQL & "FROM (SELECT * FROM [value_history] "
	sSQL = sSQL & "WHERE [value_history].parcel_id='" & QueryStringPID & "') AS parcel_history "
	sSQL = sSQL & "JOIN [landuse_described] "
	sSQL = sSQL & "ON parcel_history.land_use=[landuse_described].Short_Description "
	sSQL = sSQL & "ORDER BY parcel_history.fiscal_year DESC"

	Set g_objRecords = g_objConn.Execute(sSQL)

	If g_objRecords.EOF Then
		g_sError = "No Records Found"
		Exit Sub
	End If
%>

<table width="100%">
	<tr class="mainColTableHeaderRowBorders">
		<th colspan=3>Value History</th>
	</tr>
	<tr>
		<th align="center">Fiscal Year</th>
		<th align="center">Property Type</th>
		<th align="center">Assessed Value *</th>
	</tr>
<%
	Do While Not g_objRecords.EOF
%>
	<tr>
		<td align="center"><%=g_objRecords("Fiscal_Year")%></td>
		<td align="center"><%=g_objRecords("Description")%></td>
		<td align="center"><%=FormatCurrency(g_objRecords("Assessed_value"))%></td>
	</tr>
<%
	g_objRecords.MoveNext
	Loop
%>
</table>
<p>* Actual Billed Assessments</p>
<%
End Sub 'ShowValueHistory()


'########################################################################
' show contents of the [condo_attrib] table
Sub ShowCondoAttributes( condo_main )

Dim sSQL
Dim RecordSetOutbuildings


	sSQL = "SELECT * FROM [CONDO PROPERTY ATTRIBUTES] WHERE parcel_id='" & QueryStringPID & "'"
	
	Set g_objRecords = g_objConn.Execute(sSQL)

	If g_objRecords.EOF Then
		g_sError = "No Records Found"
		Exit Sub
	End If
%>

<table width="100%">
	<tr class="mainColTableHeaderRowBorders">
		<th colspan=2>Attributes</th>
	</tr>
	<tr>
		<th align="left" colspan="2" style="border-bottom: 1px solid silver; padding-top: 1em">CONDO MAIN ATTRIBUTES</th>
	</tr>
	<tr>
		<td><i>Master parcel:</i></td>
		<td align="right"><a class="mainColLink" href="?parcel=<%=condo_main%>"><%=condo_main%></a></td>
	</tr>
	<tr>
		<td><i>Grade:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Grade"))%></td>
	</tr>
	<tr>
		<td><i>Exterior Condition:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Exterior Condition"))%></td>
	</tr>
	<tr>
		<td><i>Exterior Finish:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Exterior Finish"))%></td>
	</tr>
	<tr>
		<td><i>Foundation:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Foundation"))%></td>
	</tr>
	<tr>
		<td><i>Roof Cover:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Roof Cover"))%></td>
	</tr>
	<tr>
		<td><i>Roof Structure:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Roof Structure"))%></td>
	</tr>
	<tr>
		<th align="left" colspan="2" style="border-bottom: 1px solid silver; padding-top: 1em">UNIT ATTRIBUTES</th>
	</tr>
	<tr>
		<td><i>Land Use:</i></td>
		<td align="right"><%=g_objRecords("Composite Land Use")%></td>
	</tr>
	<tr>
		<td><i>Orientation:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Orientation"))%></td>
	</tr>
	<tr>
		<td><i>Corner Unit:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Corner Unit"))%></td>
	</tr>
	<tr>
		<td><i>Floor:</i></td>
		<td align="right"><%=g_objRecords("Floor")%></td>
	</tr>
	<tr>
		<td><i>Total Rooms:</i></td>
		<td align="right"><%=g_objRecords("Rooms")%></td>
	</tr>
	<tr>
		<td><i>Bedrooms:</i></td>
		<td align="right"><%=g_objRecords("Bedrooms")%></td>
	</tr>
	<tr>
		<td><i>Bedroom Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Bedroom Type"))%></td>
	</tr>
	<tr>
		<td><i>Bathrooms:</i></td>
		<td align="right"><%=g_objRecords("Full Bath")%></td>
	</tr>
	<tr>
		<td><i>Half Bathrooms:</i></td>
		<td align="right"><%=g_objRecords("Half Bath")%></td>
	</tr>
	<tr>
		<td><i>Other Fixtures:</i></td>
		<td align="right"><%=g_objRecords("Other Fixtures")%></td>
	</tr>
	<tr>
		<td><i>Bath Style 1:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Bath Style 1"))%></td>
	</tr>
	<tr>
		<td><i>Bath Style 2:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Bath Style 2"))%></td>
	</tr>
	<tr>
		<td><i>Bath Style 3:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Bath Style 3"))%></td>
	</tr>
	<tr>
		<td><i>Number of Kitchens:</i></td>
		<td align="right"><%=g_objRecords("Kitchens")%></td>
	</tr>
	<tr>
		<td><i>Kitchen Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Type"))%></td>
	</tr>
	<tr>
		<td><i>Kitchen Style 1:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Style 1"))%></td>
	</tr>
	<tr>
		<td><i>Kitchen Style 2:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Style 2"))%></td>
	</tr>
	<tr>
		<td><i>Kitchen Style 3:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Style 3"))%></td>
	</tr>
	<tr>
		<td><i>Fireplaces:</i></td>
		<td align="right"><%=g_objRecords("Fireplaces")%></td>
	</tr>
	<tr>
		<td><i>Penthouse Unit:</i></td>
		<td align="right"><%=g_objRecords("Penthouse Unit")%></td>
	</tr>
	<tr>
		<td><i>AC Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("AC Type"))%></td>
	</tr>
	<tr>
		<td><i>Heat Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Heat Type"))%></td>
	</tr>
	<tr>
		<td><i>Year Built:</i></td>
		<td align="right"><%=g_objRecords("Year Built")%></td>
	</tr>
	<tr>
		<td><i>Interior Condition:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Interior Condition"))%></td>
	</tr>
	<tr>
		<td><i>Interior Finish:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Interior Finish"))%></td>
	</tr>
	<tr>
		<td><i>View:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("View"))%></td>
	</tr>
	<tr>
		<td><i>Parking Spots:</i></td>
		<td align="right"><%=g_objRecords("# of Parking Spots")%></td>
	</tr>
	<tr>
		<td><i>Parking Ownership:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Parking Ownership"))%></td>
	</tr>
	<tr>
		<td><i>Parking Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Parking Type"))%></td>
	</tr>
	<tr>
		<td><i>Tandem Parking:</i></td>
		<td align="right"><%=g_objRecords("Tandem Parking")%></td>
	</tr>
	<tr>
		<td><i>Complex:</i></td>
		<td align="right"><%=g_objRecords("Complex")%></td>
	</tr>
	<tr>
		<td><i>Story Height:</i></td>
		<td align="right"><%=g_objRecords("Story Height")%></td>
	</tr>
</table>
<%

	' now loop through any records in the [outbuildings] table
	Set RecordSetOutbuildings = Server.CreateObject("ADODB.Recordset")
	Set RecordSetOutbuildings = g_objConn.Execute("SELECT * FROM [outbuildings] WHERE parcel_id='" & QueryStringPID & "'")
	If RecordSetOutbuildings.EOF Then
		Exit Sub
	End If

%>
<table width="100%">
	<tr>
		<th align="left" colspan="2" style="border-bottom: 1px solid silver; padding-top: 1em">OUTBUILDINGS/EXTRA FEATURES</th>
	</tr>
<%
	Do While Not RecordSetOutbuildings.EOF
%>
	<tr>
		<td><i>Type:</i></td>
		<td align="right"><%=FormatAttribute(RecordSetOutbuildings("Code"))%></td>
	</tr>
	<tr>
		<td><i><%=Ternary(Right(RecordSetOutbuildings("Code"),6)=" COUNT","Units","Size/sqft")%>:</i></td>
		<td align="right"><%=RecordSetOutbuildings("Tot Units")%></td>
	</tr>
	<tr>
		<td><i>Quality:</i></td>
		<td align="right"><%=FormatAttribute(RecordSetOutbuildings("Quality"))%></td>
	</tr>
	<tr>
		<td style="padding-bottom: 1em"><i>Condition:</i></td>
		<td style="padding-bottom: 1em" align="right"><%=FormatAttribute(RecordSetOutbuildings("Condition"))%></td>
	</tr>
<%
	RecordSetOutbuildings.MoveNext
	Loop
%>
</table>

<%
End Sub 'ShowCondoAttributes()



'########################################################################
' show contents of the [res_attrib] table
Sub ShowResidentialAttributes(ByRef RecordSetTaxbill)

Dim sSQL
Dim RecordSetOutbuildings


	sSQL = "SELECT * FROM [RESIDENTIAL PROPERTY ATTRIBUTES] WHERE parcel_id='" & QueryStringPID & "'"
	
	Set g_objRecords = g_objConn.Execute(sSQL)

	If g_objRecords.EOF Then
		g_sError = "No Records Found"
		Exit Sub
	End If
%>

<table width="100%">
	<tr class="mainColTableHeaderRowBorders">
		<th colspan=2>Attributes</th>
	</tr>
	<tr>
		<th align="left" colspan="2" style="border-bottom: 1px solid silver; padding-top: 1em">LAND</th>
	</tr>
</table>
<%
	BuildingCount = 0
	Do While Not g_objRecords.EOF
	BuildingCount = BuildingCount + 1
%>
<table width="100%">
	<tr>
		<th align="left" colspan="2" style="border-bottom: 1px solid silver; padding-top: 1em">BUILDING <%=BuildingCount%></th>
	</tr>
	<tr>
		<td><i>Land Use:</i></td>
		<td align="right"><%=g_objRecords("Composite Land Use")%></td>
	</tr>
	<tr>
		<td><i>Style:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Building Style"))%></td>
	</tr>
	<tr>
		<td><i>Total Rooms:</i></td>
		<td align="right"><%=g_objRecords("Rooms")%></td>
	</tr>
	<tr>
		<td><i>Bedrooms:</i></td>
		<td align="right"><%=g_objRecords("Bedrooms")%></td>
	</tr>
	<tr>
		<td><i>Bathrooms:</i></td>
		<td align="right"><%=g_objRecords("Full Bath")%></td>
	</tr>
	<tr>
		<td><i>Other Fixtures:</i></td>
		<td align="right"><%=g_objRecords("Other Fixtures")%></td>
	</tr>
	<tr>
		<td><i>Half Bathrooms:</i></td>
		<td align="right"><%=g_objRecords("Half Bath")%></td>
	</tr>
	<tr>
		<td><i>Bath Style 1:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Bath Style 1"))%></td>
	</tr>
	<tr>
		<td><i>Bath Style 2:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Bath Style 2"))%></td>
	</tr>
	<tr>
		<td><i>Bath Style 3:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Bath Style 3"))%></td>
	</tr>
	<tr>
		<td><i>Number of Kitchens:</i></td>
		<td align="right"><%=g_objRecords("Kitchens")%></td>
	</tr>
	<tr>
		<td><i>Kitchen Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Type"))%></td>
	</tr>
	<tr>
		<td><i>Kitchen Style 1:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Style 1"))%></td>
	</tr>
	<tr>
		<td><i>Kitchen Style 2:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Style 2"))%></td>
	</tr>
	<tr>
		<td><i>Kitchen Style 3:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Kitchen Style 3"))%></td>
	</tr>
	<tr>
		<td><i>Fireplaces:</i></td>
		<td align="right"><%=g_objRecords("Fireplaces")%></td>
	</tr>
	<tr>
		<td><i>AC Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("AC Type"))%></td>
	</tr>
	<tr>
		<td><i>Heat Type:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Heat Type"))%></td>
	</tr>
	<tr>
		<td><i>Interior Condition:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Interior Condition"))%></td>
	</tr>
	<tr>
		<td><i>Interior Finish:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Interior Finish"))%></td>
	</tr>
	<tr>
		<td><i>View:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("View"))%></td>
	</tr>
	<tr>
		<td><i>Grade:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Grade"))%></td>
	</tr>
	<tr>
		<td><i>Parking Spots:</i></td>
		<td align="right"><%=g_objRecords("# of Parking Spots")%></td>
	</tr>
	<tr>
		<td><i>Year Built:</i></td>
		<td align="right"><%=g_objRecords("Year Built")%></td>
	</tr>
	<tr>
		<td><i>Story Height:</i></td>
		<td align="right"><%=g_objRecords("Story Height")%></td>
	</tr>
	<tr>
		<td><i>Roof Cover:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Roof Cover"))%></td>
	</tr>
	<tr>
		<td><i>Roof Structure:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Roof Structure"))%></td>
	</tr>
	<tr>
		<td><i>Exterior Finish:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Exterior Finish"))%></td>
	</tr>
	<tr>
		<td><i>Exterior Condition:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Exterior Condition"))%></td>
	</tr>
	<tr>
		<td><i>Foundation:</i></td>
		<td align="right"><%=FormatAttribute(g_objRecords("Foundation"))%></td>
	</tr>
</table>
<%

	g_objRecords.MoveNext
	Loop

	' if parcel has sidewalk/street betterments, display them
	If CInt(RecordsetTaxbill("sidewalk_betterment_amt")) > 0 Or CInt(RecordsetTaxbill("street_betterment_amt")) > 0 Then

%>
<table width="100%">
	<tr>
		<th align="left" colspan="2" style="border-bottom: 1px solid silver; padding-top: 1em">BETTERMENTS</th>
	</tr>
	<tr>
		<td><i>Sidewalk:</i></td>
		<td align="right"><%=FormatCurrency(RecordsetTaxbill("sidewalk_betterment_amt"))%></td>
	</tr>
	<tr>
		<td><i>Street:</i></td>
		<td align="right"><%=FormatCurrency(RecordsetTaxbill("street_betterment_amt"))%></td>
	</tr>
</table>
<%

	End If 'betterments


	' now loop through any records in the [outbuildings] table
	Set RecordSetOutbuildings = Server.CreateObject("ADODB.Recordset")
	Set RecordSetOutbuildings = g_objConn.Execute("SELECT * FROM [outbuildings] WHERE parcel_id='" & QueryStringPID & "'")
	If RecordSetOutbuildings.EOF Then
		Exit Sub
	End If

%>
<table width="100%">
	<tr>
		<th align="left" colspan="2" style="border-bottom: 1px solid silver; padding-top: 1em">OUTBUILDINGS/EXTRA FEATURES</th>
	</tr>
<%
	Do While Not RecordSetOutbuildings.EOF
%>
	<tr>
		<td><i>Type:</i></td>
		<td align="right"><%=FormatAttribute(RecordSetOutbuildings("Code"))%></td>
	</tr>
	<tr>
		<td><i><%=Ternary(Right(RecordSetOutbuildings("Code"),6)=" COUNT","Units","Size/sqft")%>:</i></td>
		<td align="right"><%=RecordSetOutbuildings("Tot Units")%></td>
	</tr>
	<tr>
		<td><i>Quality:</i></td>
		<td align="right"><%=FormatAttribute(RecordSetOutbuildings("Quality"))%></td>
	</tr>
	<tr>
		<td style="padding-bottom: 1em"><i>Condition:</i></td>
		<td style="padding-bottom: 1em" align="right"><%=FormatAttribute(RecordSetOutbuildings("Condition"))%></td>
	</tr>
<%
	RecordSetOutbuildings.MoveNext
	Loop
%>
</table>

<%
End Sub 'ShowResidentialAttributes()


'########################################################################
' show information for condo-mains
Sub ShowCondoMainAttributes(sParcelID, ByRef RecordSetTaxbill)


%>
<table width="100%">
	<tr class="mainColTableHeaderRowBorders">
		<th colspan=2>Condo Main Attributes</th>
	</tr>
	<tr>
		<td>Stories:</td>
		<td align="right"><%=RecordSetTaxbill("stories")%></td>
	</tr>
	<tr>
		<td>Residential units:</td>
		<td align="right"><%=RecordSetTaxbill("condo_units_residential")%></td>
	</tr>
	<tr>
		<td>Commercial units:</td>
		<td align="right"><%=Ternary(isNull(RecordSetTaxbill("condo_units_commercial")),0,RecordSetTaxbill("condo_units_commercial"))%></td>
	</tr>
	<tr>
		<td>Mixed-use units:</td>
		<td align="right"><%=Ternary(isNull(RecordSetTaxbill("condo_units_mixed")),0,RecordSetTaxbill("condo_units_mixed"))%></td>
	</tr>
	<tr>
		<td><a class="mainColLink" href="?parcel=<%=sParcelID%>">Total units:</a></td>
		<td align="right"><%=(RecordSetTaxbill("condo_units_residential") + Ternary(isNull(RecordSetTaxbill("condo_units_commercial")),0,RecordSetTaxbill("condo_units_commercial")) + Ternary(isNull(RecordSetTaxbill("condo_units_mixed")),0,RecordSetTaxbill("condo_units_mixed")))%></td>
	</tr>
	<tr>
		<td>Total units (sum of values):</td>
		<td align="right"><%=FormatCurrency(RecordSetTaxbill("condo_main_value"),0)%></td>
	</tr>
</table>
<%

End Sub 'ShowCondoMainAttributes()



'########################################################################
' show contents of the [notices] table for the public disclosure period which happens every threeish years (2009, 2012, 2015, 2020, ...)
Sub ShowPublicDisclosure(ByRef RecordSetTaxbill)
%>

<center>


<table width="80%">


	<tr class="mainColTableHeaderRowBorders">
		<th colspan=2>FY<%=TaxYear%> Public Disclosure</th>
	</tr>
	<tr>
		<td colspan=2><br>Disclosed values are subject to review and certification by the Massachusetts Department of Revenue.<br><br></td>
	</tr>
	<tr>
		<td align="left">
			<b>FY<%=TaxYear%> Property Value:</b>
		</td>
		<td align="right">
			<%=FormatCurrency(CLng(RecordSetTaxbill("total_value")))%>
		</td>
	</tr>

	<tr>
		<td colspan=3>
			<br>The Public Disclosure period for FY<%=TaxYear%> assessed values runs from <%=FormatDateTime(PublicDisclosureStartOfficial,1)%> to <%=FormatDateTime(PublicDisclosureEnd,1)%>.  Owners may request a review of the Disclosed assessed value during this period by using the <a href="/assessing/revaluation/?pid=<%=QueryStringPID%>">Revaluation Assessment Review Request Form</a>.
		</td>
	</tr>


</table>
</center>

<br><br>

<%
End Sub 'ShowPublicDisclosure()





'########################################################################
' renders the webpage for showing data on a single parcel
Sub ShowFinalHTML(sParcelID)

Dim sLeftCorner, sRightCorner, sIntersection1, sIntersection2, sFY2004, sProperty, sSecondRightCorner
Dim sLinkMain, sLinkFY2004, sLinkProperty
Dim sPropertyType
Dim sSQL, RecordSetTaxbill, objTextFileIO
Dim dictProperties
Dim sTemplateName


	Set RecordSetTaxbill = Server.CreateObject("ADODB.Recordset")

	' query the taxbill table and also get preliminary tax, landuse, and any condo main value
	sSQL = ""
	sSQL = sSQL & "SELECT TOP 1 [taxbill].*, [tax_preliminary].*, [Landuse_Described].description, [propertycodes_described].*, [Res_exempt].personal_exemption, [Res_exempt].residential_exemption, [additional_data].*, [taxes].*, [bid].* "
	sSQL = sSQL & "FROM [taxbill] "
	sSQL = sSQL & "LEFT OUTER JOIN [tax_preliminary] "
	sSQL = sSQL & "ON [taxbill].parcel_id=[tax_preliminary].parcel_id "
	sSQL = sSQL & "LEFT OUTER JOIN [Landuse_Described] "
	sSQL = sSQL & "ON  [taxbill].land_use=[Landuse_Described].short_description "
	sSQL = sSQL & "LEFT OUTER JOIN [propertycodes_described] "
	sSQL = sSQL & "ON  [taxbill].property_type=[propertycodes_described].[property-code] "
	sSQL = sSQL & "LEFT OUTER JOIN [Res_exempt] "
	sSQL = sSQL & "ON  [taxbill].parcel_id=[Res_exempt].parcel_id "
	sSQL = sSQL & "LEFT OUTER JOIN [additional_data] "
	sSQL = sSQL & "ON  [taxbill].parcel_id=[additional_data].parcel_id "
	sSQL = sSQL & "LEFT OUTER JOIN [taxes] "
	sSQL = sSQL & "ON  [taxbill].parcel_id=[taxes].parcel_id "
	sSQL = sSQL & "LEFT OUTER JOIN [bid] "
	sSQL = sSQL & "ON  [taxbill].parcel_id=[bid].parcel_id "
	sSQL = sSQL & "WHERE [taxbill].parcel_id='" & sParcelID & "'"

	Call DBConn("Open", AssessingSearchDB, "")
	Set RecordSetTaxbill = g_objConn.Execute(sSQL)
	
If Not RecordSetTaxbill.EOF Then

	Select Case RecordSetTaxbill("land_use").Value
		Case "R1", "R2", "R3"
			sPropertyType = "Residential"
		Case "CD"
			sPropertyType = "Condo"
		Case "C"
			sPropertyType = "Commercial"
		Case "CM"
			sPropertyType = "Condo Main"
	End Select


%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Parcel <%=sParcelID%> - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
<%If InStr("R1 R2 R3 R4 RC RL CD CP", RecordSetTaxbill("land_use").Value) > 0 Then%>
 <!-- residential properties are not indexed by Internet search engines -->
 <meta name="robots" content="noindex, nofollow">
<%End If%>
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->
<!--#include file="../includes/left_links.inc"-->
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
	
<div class="MainHeaderFont">Assessing On-Line</div>

	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<td><a class="mainColLink" href=".">&laquo; New search</a></td>
			<td align="right"><%=MapLinkFunction(sParcelID)%></td>
		</tr>
		<tr>
			<td colspan="2"><hr class="mainColHRLine"></td>
		</tr>
		<tr class="mainCategoryModuleText">
			<td><b>Parcel ID:</b></td>
			<td align="right"><%=sParcelID%></td>
		</tr>

		<tr class="mainCategoryModuleText">
			<td><b>Address:</b></td>
			<td align="right"><%=(RecordSetTaxbill("street_number") & Ternary(isNumeric(RecordSetTaxbill("street_number_suffix")),"-","") & Trim(RecordSetTaxbill("street_number_suffix")) & " " & RecordSetTaxbill("street_name") & Ternary( (Trim(RecordSetTaxbill("apt_unit"))<>"") , " # " & RecordSetTaxbill("apt_unit") , "" ) & " BOSTON MA "  & RecordSetTaxbill("location_zip_code"))%></td>
		</tr>

		<tr class="mainCategoryModuleText">
			<td><b>Property Type:</b></td>
			<td align="right"><%=RecordSetTaxbill("Description")%></td>
		</tr>
		<tr class="mainCategoryModuleText">
			<td><b>Classification Code:</b></td>
			<td align="right"><%=RecordSetTaxbill("property_type")%><%=Ternary(RecordSetTaxbill("property-class-description")<>"", " (" & RecordSetTaxbill("property-class-description") & " / " & RecordSetTaxbill("property-code-description") &  ")" ,"")%></td>
		</tr>

		<tr class="mainCategoryModuleText">
			<td><b>Lot Size:</b></td>
			<td align="right"><%=FormatNumber( Ternary( IsNumeric(RecordSetTaxbill("land_area")), RecordSetTaxbill("land_area"), "0" ),0)%> sq ft</td>
		</tr>
<% If Left(RecordSetTaxbill("land_use"),1) = "R" Or Left(RecordSetTaxbill("land_use"),1) = "C" Then %>
		<tr class="mainCategoryModuleText">
			<td><b>Living Area:</b></td>
			<td align="right"><%=FormatNumber( Ternary( IsNumeric(RecordSetTaxbill("living_area")), RecordSetTaxbill("living_area"), "0" ),0)%> sq ft</td>
		</tr>
<% Else %>
		<tr class="mainCategoryModuleText">
			<td><b>Gross Area:</b></td>
			<td align="right"><%=FormatNumber( Ternary( IsNumeric(RecordSetTaxbill("gross_area")), RecordSetTaxbill("gross_area"), "0" ),0)%> sq ft</td>
		</tr>
<% End If %>
		<tr class="mainCategoryModuleText">
			<td><b>Year Built:</b></td>
			<td align="right"><%=Ternary( IsNull(RecordSetTaxbill("year_built")), "-", RecordSetTaxbill("year_built") )%></td>
		</tr>
<!--
		<tr class="mainCategoryModuleText">
			<td><b>Year Remodeled:</b></td>
			<td align="right"><%=Ternary( IsNull(RecordSetTaxbill("year_remodeled")), "-", RecordSetTaxbill("year_remodeled") )%></td>
		</tr>
-->
		<tr class="mainCategoryModuleText">		
			<td><b>Owner on <%=FormatDateTime(LienOwnerDate,1)%>:</b></td>
			<td align="right"><a class="mainColLink" href=".?owner=<%=RecordSetTaxbill("owner")%>"><%=RecordSetTaxbill("owner")%></a></td>
		</tr>
		<tr class="mainCategoryModuleText">
			<td><b>Owner's Mailing Address:</b></td>
			<td align="right"><%=(RecordSetTaxbill("mail_addressee") & " " & RecordSetTaxbill("mail_street_address1") & " " & RecordSetTaxbill("mail_street_address2") & " " & RecordSetTaxbill("mail_city_and_state") & " "  & RecordSetTaxbill("mail_zip_code"))%></td>
		</tr>
		<tr class="mainCategoryModuleText">
			<td><b><%'=Ternary( TaxPeriod="Preliminary", "FY" & CalendarYear & " ", ""  )%>Residential Exemption:</b></td>
			<td align="right"><%=Ternary( RecordSetTaxbill("residential_exemption_flag")=True , "Yes" , "No" )%></td>
		</tr>
		<tr class="mainCategoryModuleText" style="background-image: none;">
			<td><b><%'=Ternary( TaxPeriod="Preliminary", "FY" & CalendarYear & " ", ""  )%>Personal Exemption:</b></td>
			<td align="right"><%=Ternary( RecordSetTaxbill("personal_exemption_flag")=True , "Yes" , "No" )%></td>
		</tr>
		<tr>
			<td colspan="2"><hr class="mainColHRLine"></td>
		</tr>

	</table>
	<br>

<table>

<tr><td colspan="2" style="vertical-align: top; border-right: solid 1px Gainsboro; padding-right: 2em;">
		<%
		' public disclosure only shown every 3-ish years
		If TodaysTime >= PublicDisclosureStartOnWeb And TodaysTime <= PublicDisclosureEnd Then Call ShowPublicDisclosure(RecordSetTaxbill)
		%>
</td></tr>

<tr><td width="50%" style="vertical-align: top; border-right: solid 1px Gainsboro; padding-right: 2em;">
	<%
		' render the two colum section of the single-parcel page

		' show the value/tax section except for brand new parcels
		If Not isNull(RecordSetTaxbill("Total Billed Amt")) Then Call ShowValuationsSections(RecordSetTaxbill)

		' bidamount is used for downtown business improvment districts, only show the record if nonzero
		If Not (IsNull(RecordSetTaxbill("bid_downtown")) And IsNull(RecordSetTaxbill("bid_greenway"))) Then Call ShowBusinessImprovementSection(RecordSetTaxbill)

		Call ShowAbatementSection( RecordSetTaxbill("land_use") , RecordSetTaxbill("residential_exemption_flag") ,  RecordSetTaxbill("personal_exemption_flag") , RecordSetTaxbill("workoff_credit_amt") , RecordSetTaxbill("workoff_credit_amt"), RecordSetTaxbill("workoff_credit_amt")  )

		'2020 attributes not ready yet
		If sPropertyType="Condo" Then Call ShowCondoAttributes(RecordSetTaxbill("condo_main"))
		If sPropertyType="Residential" Then Call ShowResidentialAttributes(RecordSetTaxbill)
		If sPropertyType="Condo Main" Then Call ShowCondoMainAttributes(sParcelID,RecordSetTaxbill)
	%>
</td>
<td width="50%" style="vertical-align: top; padding-left: 2em;">
	<% 
		Call ShowCurrentOwners( RecordSetTaxbill("owner") )
		Call ShowValueHistory()
	%>
</td></tr></table>


<p>View <a rel="nofollow" href="https://payments.cityofboston.gov/">Quarterly Tax Bill and Payment Information</a> for this parcel for FY<%=(TaxYear-1)%> and FY<%=TaxYear%>.</p>

<p>View <a rel="nofollow" href="https://data.boston.gov/dataset/approved-building-permits/resource/6ddcd912-32a0-43df-9908-63574f8c7e77?filters=parcel_id%3A<%=sParcelID%>">approved building permits</a> associated with this parcel.</p>

<p>Questions?  For CURRENT fiscal year tax bill Questions, contact the <a href="/assessing/contactform.asp">Taxpayer Referral &amp; Assistance Center.</a>  For PRIOR fiscal year tax payments, interest charges, fees, etc. contact the Collector's office at 617-635-4131.</p>


	<font style="color:#ff5555"><%=g_sError%></font>
	<!--#include virtual="/includes/footer_top.inc"-->
	<!--#include file="../includes/right_links.inc"-->
	<!--#include virtual="/includes/footer_bottom.inc"--><%

Else

	' when parcel not found in database
	%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
	<head>
	<title>Assessing On-Line - City of Boston</title>
	<!--#include virtual="/includes/metatags.inc"-->
	</head>
	<body>
	<!--#include virtual="/includes/body_top.inc"-->
	<!--#include file="../includes/left_links.inc"-->
	<!--#include virtual="/includes/header_bottom.inc"-->
	<p>Unable to match parcel <%=sParcelID%>.  <a href="javascript:history.back()" onClick="history.go(-1)">Return</a> to the previous page to search again.</p>
	<!--#include virtual="/includes/footer_top.inc"-->
	<!--#include file="../includes/right_links.inc"-->
	<!--#include virtual="/includes/footer_bottom.inc"--><%

End If

Destroy()

End Sub 'ShowFinalHTML()



'########################################################################
' FunctionSearchQuery returns a SQL query for address/owner/parcel searches
' options are broad and narrow
' this sub could be migrated to a stored procedure
Function FunctionSearchQuery( strBroad )

	Dim strSQL
	Dim strSQLwhere
	Dim arrOwnerSplit, strOwnerReversed, x

	strSQLwhere = ""
	

	' if 10-digit parcelid, then query for the exact parcel
	' also query the condo_main field, to return associated condo parcels
	if Len(QueryStringParcel) = 10 Then
		strSQL = ""
		strSQL = strSQL & "SELECT [parcel].*,[taxbill].[total_value] "
		strSQL = strSQL & "FROM [parcel] "
		strSQL = strSQL & "LEFT JOIN [taxbill] on [parcel].[parcel_id] = [taxbill].[parcel_id] "
		strSQL = strSQL & "WHERE ([parcel].[parcel_id] = '" & QueryStringParcel & "' OR [parcel].[condo_main] = '" & QueryStringParcel & "') "
		FunctionSearchQuery =strSQL
		Exit Function
	End If


	If strBroad = "narrow" Then

		if Len(QueryStringStreetNum) > 0 Then
			strSQLwhere = strSQLwhere + " AND ([A].[street_number]='" & QueryStringStreetNum & "') "
		End If

		if Len(QueryStringStreetName) > 0 Then
			strSQLwhere = strSQLwhere + " AND ([A].[street_name]='" & QueryStringStreetName & "') "
		End If

		if Len(QueryStringStreetSuffix) = 2 Then
			strSQLwhere = strSQLwhere + " AND ([A].[suffix] = '" & QueryStringStreetSuffix & "') "
		End If

		if Len(QueryStringUnitNumber) > 0 Then
			strSQLwhere = strSQLwhere + " AND ([A].[apartment_no] = '" & QueryStringUnitNumber & "') "
		End If

		' if 8-digit parcelid, then assume it's just missing the ward prefix
		if Len(QueryStringParcel) = 8 Then
			strSQLwhere = strSQLwhere + " AND ([A].[parcel_id] like '%" & QueryStringParcel & "') "
		End If		

	ElseIf strBroad = "broad" Then

		if Len(QueryStringStreetNum) > 0 Then
			strSQLwhere = strSQLwhere + " AND ([A].[street_number] LIKE '" & QueryStringStreetNum & "%') "
		End If

		if Len(QueryStringStreetName) > 0 Then
			strSQLwhere = strSQLwhere + " AND ([A].[street_name] LIKE '%" & QueryStringStreetName & "%') "
		End If

		if Len(QueryStringStreetSuffix) = 2 Then
			strSQLwhere = strSQLwhere + " AND ([A].[suffix] = '" & QueryStringStreetSuffix & "') "
		End If

		if Len(QueryStringUnitNumber) > 0 Then
			strSQLwhere = strSQLwhere + " AND ([A].[apartment_no] = '" & QueryStringUnitNumber & "') "
		End If

		' if 8-digit parcelid, then assume it's just missing the ward prefix
		if Len(QueryStringParcel) = 8 Then
			strSQLwhere = strSQLwhere + " AND ([A].[parcel_id] like '%" & QueryStringParcel & "') "
		End If		
	
	End If




	' if searching for owner, then query the [parcel_all_owners] table, otherwise query the [parcel] table
	' if broad search and owner contains two words, then also search for the names reversed: THOMAS MENINO or MENINO THOMAS
	If InStr(QueryStringOwner," ") > 0 And strBroad = "broad" Then
		arrOwnerSplit = Split(QueryStringOwner)
		For Each x In arrOwnerSplit
			strOwnerReversed = Trim( x & " " & strOwnerReversed )
		Next
		strSQL = ""
		strSQL = strSQL + " SELECT TOP 500 [A].*,[taxbill].[total_value] "
		strSQL = strSQL + " FROM [parcel_all_owners] AS [A] "
		strSQL = strSQL + " LEFT JOIN [taxbill] on [A].[parcel_id] = [taxbill].[parcel_id] " 
		' strSQL = strSQL + " WHERE ([A].[owner] LIKE '%" & Sanitize(QueryStringOwner) & "%' OR [A].[owner] LIKE '%" & Sanitize(strOwnerReversed) & "%') "
		strSQL = strSQL + " WHERE 0=0 "
		strSQL = strSQL + strSQLwhere
	ElseIf Len(QueryStringOwner) > 0 Then
		strSQL = ""
		strSQL = strSQL + " SELECT TOP 500 [A].*,[taxbill].[total_value] "
		strSQL = strSQL + " FROM [parcel_all_owners] AS [A] "
		strSQL = strSQL + " LEFT JOIN [taxbill] on [A].[parcel_id] = [taxbill].[parcel_id] " 
		' strSQL = strSQL + " WHERE [A].[owner] LIKE '%" & Sanitize(QueryStringOwner) & "%' "
		strSQL = strSQL + " WHERE 0=0 "
		strSQL = strSQL + strSQLwhere
	Else
		strSQL = ""
		strSQL = strSQL + " SELECT TOP 500 [A].*,[taxbill].[total_value] "
		strSQL = strSQL + " FROM [parcel] AS [A] "
		strSQL = strSQL + " LEFT JOIN [taxbill] on [A].[parcel_id] = [taxbill].[parcel_id] " 
		strSQL = strSQL + " WHERE 0=0 "
		strSQL = strSQL + strSQLwhere
	End If
	
	FunctionSearchQuery = strSQL

End Function



'########################################################################
' ShowSearchForm presents the HTML form for structured search
' it prefills HTML element values from querstring variables
Sub ShowSearchForm()

%>
<form action="" method="get"><table><tr>
	<td>Parcel ID</td>
	<td>Street #</td>
	<td>Street name</td>
	<td>Suffix</td>
	<td>Unit #</td>
	<!--<td>Owner</td>-->
</tr><tr>
	<td><input type="number" name="parcel" size=12 value="<%=QueryStringParcel%>"></td>
	<td><input type="text" name="streetnumber" size=5 value="<%=QueryStringStreetNum%>"></td>
	<td><input type="text" name="streetname" value="<%=QueryStringStreetName%>"></td>
	<td>
		<select name="streetsuffix" size="1">
		<%=HTMLSelectboxSelected( Array("","AL","AV","BL","CI","CT","DM","DR","HW","LA","PK","PW","PL","PZ","RD","RO","SQ","ST","TE","WY","WH"), Array("","ALLEY","AVENUE","BLVD","CIRCLE","COURT","DAM","DRIVE","HIGHWAY","LANE","PARK","PARKWAY","PLACE","PLAZA","ROAD","ROW","SQUARE","STREET","TERRACE","WAY","WHARF"), QueryStringStreetSuffix )%>
		</select>
	</td>
	<td><input type="text" name="unitnumber" size=5 value="<%=QueryStringUnitNumber%>"></td>
	<!--<td><input type="text" name="owner" value="<%=QueryStringOwner%>"></td>-->
	<td><input type="submit" value="Search">
</tr></table></form>
<%

End Sub 'ShowSearchForm()


'########################################################################
' ShowSearch presents search results for address/owner/parcel searches
Sub ShowSearch()

Dim strSQL, NumResultsNarrow, NumResultsBroad, sMatchingWhat, DistinctResultsNarrow, DistinctResultsBroad

%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Assessing Search Results - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
 <!-- crawl, but do not include results in Internet search engines -->
 <meta name="robots" content="noindex, follow">
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->
<!--#include file="../includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->

<style type="text/css"> 
	/* hide right column */
	#rightCol { display: none; }
</style>
<%

Call ShowSearchForm()

' first check to see that the visitor has filled enough information into the search form
' can't search with just a streetnum
If (QueryStringStreetNum<>""and QueryStringStreetName="" and QueryStringOwner="" and Len(QueryStringParcel)<>8) Then
	response.redirect "?error=Please+fill+all+the+fields+properly!"
End If


sMatchingWhat = ""
strSQL = ""
NumResultsNarrow = 0
NumResultsBroad = 0
DistinctResultsNarrow = 0
DistinctResultsBroad = 0

Call DBConn("Open", AssessingSearchDB, "")

strSQL = "SELECT DistinctResults=COUNT(DISTINCT [parcel_id]), CountResults=COUNT([parcel_id]) FROM ( " & FunctionSearchQuery("narrow") & " ) AS COUNTALIAS "

Set g_objRecords = g_objConn.Execute(strSQL)

If Not g_objRecords.EOF Then
	NumResultsNarrow = CLng(g_objRecords("CountResults"))
	DistinctResultsNarrow = CLng(g_objRecords("DistinctResults"))
End If

' if zero resuls from a narrow search, then check how a broad search would do
If NumResultsNarrow = 0 Then

	' get the count of the broad query results
	strSQL = "SELECT DistinctResults=COUNT(DISTINCT [parcel_id]), CountResults=COUNT([parcel_id]) FROM ( " & FunctionSearchQuery("broad") & " ) AS COUNTALIAS "

	Set g_objRecords = g_objConn.Execute(strSQL)

	If Not g_objRecords.EOF Then
		NumResultsBroad = CLng(g_objRecords("CountResults"))
		DistinctResultsBroad = CLng(g_objRecords("DistinctResults"))
	End If

End If

' if no results at all, throw back error to the user
If NumResultsNarrow = 0 And NumResultsBroad = 0 Then

%>

<p>Unable to find a match.  Please refer to the search tips below and then search again</p>


<table width="100%"><tr>
<th class="mainColTableHeaderRow">Assessing On-Line Search Tips</th>
</tr></table>

<p align="left">
<b>Did you spell the street name correctly?</b>
<br>Check the spelling of the street name. In most cases the search will
look for a similar match but this does not always guarantee a match.
<br><br>

<dt><b>Is the street number correct?</b>
<br>Check to confirm that the street number is exact. Do not include apartment
numbers or street number extensions, such as letters and dashes.
<br><br>

<b>What about directional addresses?</b>
<br>If you are searching for a street named 'West Second Street' try inputing
'W Second'. Do not use numeric values in the street name field.
<br><br>

<b>What about other abbreviations?</b>
<br>Some street names may include abbreviations.  For example, 'Saint Rose' may be abbreviated 'St Rose'.  Note that street names do not contain punctuation.
<br><br>
<%

ElseIf NumResultsNarrow > 0 Then

	Response.Write  Ternary( (NumResultsNarrow > 497) , "<span style='color:red;'>Search too broad.</span>  Displaying top " & CStr(NumResultsNarrow) & " results.  Include more information above to narrow your search.  " , "Found " & CStr(DistinctResultsNarrow) & " distinct parcels among " & CStr(NumResultsNarrow) & " results.  " ) & "Click on details for information on a specific parcel, or map to open a GIS viewer.  <a href=""javascript:history.back()"" onClick=""history.go(-1)"">Return</a> to the previous page<br><br>"

	' get narrow query results
	Set g_objRecords = g_objConn.Execute( FunctionSearchQuery("narrow") )

ElseIf NumResultsBroad > 0 Then

	Response.Write  Ternary( (NumResultsBroad > 497) , "<span style='color:red;'>Search too broad.</span>  Displaying top " & CStr(NumResultsBroad) & " results.  Include more information above to narrow your search.  " , "No exact matches found.  Found " & CStr(DistinctResultsBroad) & " approximately matching parcels among " & CStr(NumResultsBroad) & " results.  " ) & "Click on details for information on a specific parcel, or map to open a GIS viewer.  <a href=""javascript:history.back()"" onClick=""history.go(-1)"">Return</a> to the previous page<br><br>"

	' get broad query results
	Set g_objRecords = g_objConn.Execute( FunctionSearchQuery("broad") )

End If

' now get ready to list out the search results.
If NumResultsNarrow > 0 And NumResultsBroad > 0 And g_objRecords.EOF Then
	Response.Write "Server error, matches found but could not be fetched"
ElseIf ( NumResultsNarrow > 0 Or NumResultsBroad > 0 ) And Not g_objRecords.EOF Then

%>
<br>
<script>
function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("tblSearchParcels");
  switching = true;
  // Set the sorting direction to ascending:
  dir = "asc";
  /* Make a loop that will continue until
  no switching has been done: */
  while (switching) {
    // Start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /* Loop through all table rows (except the
    first, which contains table headers): */
    for (i = 1; i < (rows.length - 1); i++) {
      // Start by saying there should be no switching:
      shouldSwitch = false;
      /* Get the two elements you want to compare,
      one from current row and one from the next: */
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      /* Check if the two rows should switch place,
      based on the direction, asc or desc: */
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          // If so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          // If so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /* If a switch has been marked, make the switch
      and mark that a switch has been done: */
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      // Each time a switch is done, increase this count by 1:
      switchcount ++;
    } else {
      /* If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again. */
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}
</script>
<center>
<table width="100%" id="tblSearchParcels">
<thead>
<tr class="mainColTableHeaderRow" >
<th style="text-align: left" onclick="sortTable(0)">Parcel ID</th>
<th style="text-align: left" onclick="sortTable(1)">Address</th>
<th style="text-align: left" onclick="sortTable(2)">Owner</th>
<th style="text-align: left" onclick="sortTable(3)">Value</th>
<th style="text-align: left">Map</th>
<th style="text-align: left">Details</th>
</tr>
</thead>
<%
	Do While Not g_objRecords.EOF 
%>


<tr>
<td><%=g_objRecords("parcel_id")%></td>

<td><%=(g_objRecords("street_number") & " " & g_objRecords("street_name") & " " & g_objRecords("suffix"))%><%=Ternary( (Trim(g_objRecords("apartment_no"))<>"") , " Apt. " & g_objRecords("apartment_no") , "" )%></td>

<td><%=g_objRecords("owner")%></td>

<td><%=FormatCurrency(g_objRecords("total_value"),0)%></td>

<td><%=MapLinkFunction(g_objRecords("parcel_id"))%></td>

<td><a class="mainColLink" href="?pid=<%=g_objRecords("parcel_id")%>">Details</a></td>
</tr>
<%
	g_objRecords.MoveNext
	Loop		
%>
</table>
</center>
<%
End If
%>
<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="../includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
<%

Destroy()

End Sub 'ShowSearch()



'########################################################################
' renders the static default page with verbiage and flexible search webform
Sub ShowHTML()

%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Assessing Online - City of Boston</title>
<!--#include virtual="/includes/metatags.inc"-->
</head>
<body>
<!--#include virtual="/includes/body_top.inc"-->
<!--#include file="../includes/left_links.inc"-->
<!--#include virtual="/includes/header_bottom.inc"-->
<style type="text/css"> 
 /* hide right column */
 #rightCol { display: none; }
</style>
		
<div class="MainHeaderFont">Assessing Online </div>

<style>
.black-box {
border:solid 2px #000000;
background:#fff;
color:#000;
padding: 6px;
}
</style>

<!--
<div class="black-box">
	<p style="margin:0; font-size: 16px">
	<span style="color: red;"><strong>Please note:</strong></span> Due to ongoing maintenance of our website, you may see outages with some of our applications. We apologize for any inconvenience that this may cause.</p>
</div> -->


<% If TodaysTime >= PublicDisclosureStartAnnouncing And TodaysTime <= PublicDisclosureEnd Then %>
<div class="mainColAttentionBoxBlack">
<font class="mainColAlertFont">
<b>FY<%=TaxYear%> Public Disclosure period:</b> The public disclosure period for assessed values runs from <%=FormatDateTime(PublicDisclosureStartOfficial,1)%> to <%=FormatDateTime(PublicDisclosureEnd,1)%>.  New assessments are shown in assessing search results.
<br><br>All values are subject to review and certification by the Massachusetts Department of Revenue.
</font> </div>
<%End If %>

<p>The Assessing Online application brings direct access for taxpayers, homeowners, real estate and legal professionals as well as business owners to property parcel data including assessed value, location, ownership and tax information for each piece of property in the city.  </p><p>The information assists homeowners directly in their ownership responsibilities by providing the current value and tax status of their property. Professional real estate, business and legal entities access and draw upon Boston property parcel data to support and enhance their specific business operations. The GIS data appended to this application provides valuable graphical contexts for researchers, analysts and other professionals interested in demographical patterns, property usage and development. </p>

<!-- <p>For software developers: <a href="https://data.cityofboston.gov/dataset/Property-Assessment-2014/qz7u-kb7x">2014 Property Assessments on Data.Boston</a></p> -->

<br><div class="MainColTabRow"></div><br> 
<font class="DeptPageSubHeadersFont">Search FY<%=CalendarYear%> Real Estate Assessments<%=Ternary( (TaxPeriod="Preliminary") , " and FY" & TaxYear & Ternary( TodaysTime >= PublicDisclosureStartAnnouncing And TodaysTime <= PublicDisclosureEnd , " Disclosed Values" , " Preliminary Taxes" ) , " and Taxes" )%></font>


<div class="MainAlertFont"><%=Server.HTMLEncode(Request.QueryString("error"))%></div>


<form action="" method="get">
<input type="search" name="q" id="q" size=30 placeholder="Search by address or parcel..." value="<%=QueryStringFlexibleQ%>">
<input type="submit" value="Search parcels">
</form>
<p><font size=1>examples:  1 City Hall Sq | 0504203000 | <!--KENNEDY JOHN | -->352R Blue Hill Ave Apt # 3</font></p>



<br><div class="MainColTabRow"></div><br> 
<font class="DeptPageSubHeadersFont"> How to Obtain an Online Application for Abatement and/or Exemption </font>





<%

	If TaxPeriod = "Preliminary" Or TodaysTime < AbatementExemptionStartThisYear Then
		%><p>Applications for FY<%=TaxYear%> Real Estate Property Tax  <a href="//www.cityofboston.gov/assessing/abatement.asp">Abatements</a>,  <a href="//www.cityofboston.gov/assessing/Exemptions/PersonalExemptions.asp">Personal Exemptions</a> (Blind, Elderly, Surviving Spouse, Veteran, National Guard) and/or <a href="//www.cityofboston.gov/assessing/exemptions/resexempt.asp">Residential Exemptions</a> are not yet available online.  Applications will become available for download on <%=FormatDateTime(AbatementExemptionStartThisYear,1)%>.  The due date for Abatement applications is <%=FormatDateTime(AbatementDeadlineThisYear,1)%>.  The due date for Exemption applications is <%=FormatDateTime(ExemptionDeadlineThisYear,1)%><!--, with the exception of the National Guard exemption, which is due <%=FormatDateTime(NationalGuardDeadlineThisYear,1)%>, three (3) months after the actual (not preliminary) tax bills are mailed-->.</p><%

	Else
	
		If TodaysTime < AbatementDeadlineThisYear Then
			%><p>The deadline to file a FY<%=TaxYear%> Real Estate Property Tax Abatement Application is <%=FormatDateTime(AbatementDeadlineThisYear,1)%> at 5:00 PM.</p><%

		ElseIf TodaysTime < DateAdd("d",28,AbatementDeadlineThisYear) Then

			%><p>The deadline to file a FY<%=TaxYear%> Real Estate Property Tax <a href="//www.cityofboston.gov/assessing/abatement.asp">Abatement</a> Application was <%=FormatDateTime(AbatementDeadlineThisYear,1)%> at 5:00 PM.  However, additional documentation for applications already on file is still being accepted.</p><%

		Else

			%><p>The deadline for filing a FY<%=TaxYear%> Real Estate Property Tax <a href="//www.cityofboston.gov/assessing/abatement.asp">Abatement</a> Application was <%=FormatDateTime(AbatementDeadlineThisYear,1)%>.  Applications for  FY<%=TaxYear+1%> will become available for download beginning <%=FormatDateTime(AbatementExemptionStartNextYear,1)%>.</p><%

		End If



		If TodaysTime < ExemptionDeadlineThisYear Then

			%><p>The deadline to file for a FY<%=TaxYear%> Personal Exemption (Blind, Elderly, Surviving Spouse, Veteran) and/or Residential Exemption Application is <%=FormatDateTime(ExemptionDeadlineThisYear,1)%> at 5:00 PM.</p><%

		Else

			%><p>The deadline to file for a FY<%=TaxYear%> <a href="//www.cityofboston.gov/assessing/Exemptions/PersonalExemptions.asp">Personal Exemption</a> (Blind, Elderly, Surviving Spouse, Veteran) and/or <a href="//www.cityofboston.gov/assessing/exemptions/resexempt.asp">Residential Exemption</a> Application was <%=FormatDateTime(ExemptionDeadlineThisYear,1)%>.  Applications for  FY<%=TaxYear+1%> will become available beginning  <%=FormatDateTime(AbatementExemptionStartNextYear,1)%>.</p><%

		End If

		If TodaysTime < NationalGuardDeadlineThisYear Then

			%><p>The deadline to file for a FY<%=TaxYear%> National Guard Exemption is <%=FormatDateTime(NationalGuardDeadlineThisYear,1)%> at 5:00 PM.</p><%

		Else

			%><p>The deadline to file for a FY<%=TaxYear%> <a href="//www.cityofboston.gov/assessing/Exemptions/PersonalExemptions.asp">National Guard Exemption</a> was <%=FormatDateTime(NationalGuardDeadlineThisYear,1)%>.  Applications for  FY<%=TaxYear+1%> will become available beginning  <%=FormatDateTime(AbatementExemptionStartNextYear,1)%>.</p><%

		End If

	End If 


	If TaxPeriod = "Actual" And TodaysTime < ExemptionDeadlineThisYear Then

%>


<p>Instructions for obtaining an online application for <a href="http://www.cityofboston.gov/assessing/abatement.asp">abatement</a>, <a href="http://www.cityofboston.gov/assessing/Exemptions/PersonalExemptions.asp">personal exemption</a>, and/or <a href="http://www.cityofboston.gov/assessing/exemptions/resexempt.asp">residential exemption</a>:</p>
<ol>
<li>Property owner must first enter identifying information such as parcel
   ID, last name, or street address in the search box above.</li>
<li>Click on "Details" among the search results associated with the owner's property, which will bring the owner to a property summary screen.
<li>If eligible, the property owner will be presented a link to the abatement application, personal exemption application, and/or a residential exemption application in the section entitled "Abatements/Exemptions". 
Note: If a personal exemption and/or a residential exemption have already been granted for the given tax year then this will be noted in the "Abatements/Exemption" section.Applications for abatement, personal
   exemption, and/or residential exemption should be returned to the Assessing
   Department, Room 301, City Hall OR to the Taxpayer Referral & Assistance
   Center (TRAC), mezzanine level, City Hall by the appropriate deadline noted
   above.</li>
</ol>

<p>Applications for abatement, personal exemption, and/or residential exemption should be returned to the Assessing Department, Room 301, City Hall OR to the Taxpayer Referral &amp; Assistance Center (TRAC), mezzanine level, City Hall.  Applications must be received by 5:00 PM on the due date. </p>

<%
	End If
%>


<br><div class="MainColTabRow"></div><br> 
<font class="DeptPageSubHeadersFont">Property Sales Data</font>
<!--<p>Are you a residential property owner and want to learn more about the sales of similar properties in your neighborhood that may affect your Fiscal Year 2016 assessment?  Visit <a href="http://boston.maps.arcgis.com/apps/webappviewer/index.html?id=e5ca1dbb90b845ffa997ef277ab134df">Boston residential property sales map for calendar year 2016</a>.</p>-->
<p>To research deeds, land sales, and transactions search the <a href="http://masslandrecords.com/" target="new"> Suffolk Registry of Deeds.</a>  Sales analysis and reports are also periodically published by the <a href="http://www.cityofboston.gov/dnd/" target="new">Department of Neighborhood Development</a> and the <a href="http://www.bostonredevelopmentauthority.org" target="new">BPDA</a>, typically as a part of demographic or Real Estate Trends summaries.</p>

<script type="text/javascript">
setTimeout(function(){var a=document.createElement("script");
var b=document.getElementsByTagName('script')[0];
a.src=document.location.protocol+"//dnn506yrbagrg.cloudfront.net/pages/scripts/0012/5475.js?"+Math.floor(new Date().getTime()/3600000);
a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
</script>


<!--#include virtual="/includes/footer_top.inc"-->
<!--#include file="../includes/right_links.inc"-->
<!--#include virtual="/includes/footer_bottom.inc"-->
<%

End Sub ' ShowHTML

%>
<!-- mat m --->