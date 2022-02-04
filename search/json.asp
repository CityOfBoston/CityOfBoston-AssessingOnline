<%
  Response.CharSet = "utf-8"
  Response.ContentType = "application/json"
  Response.AddHeader "Access-Control-Allow-Origin", "*"
%>
<!--#include virtual="/includes/stdf.inc"-->
<%
Dim g_sError

' global variables for validated querystring/postdata parameters
Dim QueryStringPID, QueryStringParcel, QueryStringStreetNum, QueryStringStreetName, QueryStringOwner, QueryStringStreetSuffix, QueryStringUnitNumber

Dim TodaysTime, TaxPeriod, CalendarYear, TaxYear, AssessmentDate, LienOwnerDate

Dim AbatementExemptionStartThisYear, AbatementExemptionStartNextYear, AbatementDeadlineThisYear, ExemptionDeadlineThisYear, PublicDisclosureStart, PublicDisclosureEnd

Dim TaxRateResidential, TaxRateCommercial, OwnershipLastUpdate


'<!--============ BEGIN CONSTANTS ============-->
' update these dates in July
' startdates are Jan-01, or Dec-30 or Dec-31 if not a weekday
AbatementExemptionStartThisYear = CDate("2016-01-01 00:01")
AbatementExemptionStartNextYear = CDate("2017-01-01 00:01")

' abatementdeadlines are Feb-01, or Feb-02 or Feb-03 if not a weekday
AbatementDeadlineThisYear = CDate("2016-02-01 17:01")

' national guard deadline is 3 months after bills are mailed
NationalGuardDeadlineThisYear = CDate("2016-03-31 17:01")


' exemptiondeadlines are Apr-01, or Apr-02 or Apr-03 if not a weekday
ExemptionDeadlineThisYear = CDate("2016-04-01 17:01")

' Business Improvement District due dates, update as needed
BIDDueDateQ1 =  "August 1, 2015"
BIDDueDateQ2 =  "November 2, 2015"
BIDDueDateQ3 =  "February 1, 2016"
BIDDueDateQ4 =  "May 2, 2016"

' public disclosure is in November every three years (2012, 2015, 2018)
PublicDisclosureStartOfficial =  CDate("2015-11-16 00:01")
PublicDisclosureStartOnWeb =  CDate("2015-11-14 00:01")
PublicDisclosureEnd = CDate("2015-11-24 17:01")

' tax year changes with the July data update not January
TaxYear = 2016

' tax period changes to "Preliminary" with the July data update, and to "Actual" with the January data update
' for testing purposes, the taxperiod can be overridden.  Example default.asp?period=actual
TaxPeriod = "Actual"

' set the database to "assessingupates" for staging, "assessingsearch" for production; references the connectionstring in global.asa
AssessingSearchDB = "assessingsearch"


' tax rates change in January not July
TaxRateResidential = "$11.00"
TaxRateCommercial = "$26.81"

' ownershiplastupdate is the day Assessing exported data from their owners table and sent it to Webteam
OwnershipLastUpdate = "Dec 23, 2015"

' TodaysTime will default to Now()
' for testing purposes, the date can be overridden.  Example default.asp?date=Jul-01-2011
'TodaysTime = CDate("2014-01-02 12:30")
TodaysTime = Now()
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
	myRegExp.pattern = "^(.*)\s+(AL|AV|BL|CI|CC|CT|DR|HW|LA|PK|PW|PL|PZ|RD|RO|SQ|ST|TE|XT|WY|WH|Alley|Avenue|Blvd|Circle|Court|Drive|Extension|Highway|Lane|Park|Parkway|Place|Plaza|Road|Row|Square|Street|Terrace|Way|Wharf|AVE|BOULEVARD|CIR|HWY|PLZ|TER)$"
	Set myMatches = myRegExp.Execute(Trim(QueryStringStreetName))
	If myMatches.Count > 0 Then 
		QueryStringStreetName = myMatches(0).SubMatches(0)
		QueryStringStreetSuffix = myMatches(0).SubMatches(1)
	End If

	' regex to distinguish ownername from a street+suffix
	' when the q string contains only letters no numbers
	' this part will not match if any digits are present, only letters and spaces
	' matches (BOWDOIN) (ST) but not: BOWDOIN
	myRegExp.pattern = "^([A-Z\s]+)\s(AL|AV|BL|CI|CC|CT|DR|HW|LA|PK|PW|PL|PZ|RD|RO|SQ|ST|TE|XT|WY|WH|Alley|Avenue|Blvd|Circle|Court|Drive|Extension|Highway|Lane|Park|Parkway|Place|Plaza|Road|Row|Square|Street|Terrace|Way|Wharf|AVE|BOULEVARD|CIR|HWY|PLZ|TER)$"
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
' renders the webpage for showing data on a single parcel
Sub ShowValuationsSections(ByRef RecordSetTaxbill)

Dim sSQL
Dim RecordSetOutbuildings


	sSQL = "SELECT * FROM [cpa] WHERE parcel_id='" & QueryStringPID & "'"
	
	Set g_objRecords = g_objConn.Execute(sSQL)

	If g_objRecords.EOF Then
		g_sError = "No Records Found"
		Exit Sub
	End If
%>
{"est_cpa": "<%=FormatCurrency(g_objRecords("total_cpa"))%>"}
<%
End Sub 'ShowValuationsSections()

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

	' query the taxbillw table and also get preliminary tax, landuse, and any condo main value
	sSQL = ""
	sSQL = sSQL & "SELECT TOP 1 [taxbillw].*, COALESCE([tax_preliminary].tax,0) as taxprelim, [Landuse_Described].description, [propertycodes_described].*, [Res_exempt].personal_exemption, [Res_exempt].residential_exemption, [parcel].condo_main "
	sSQL = sSQL & "FROM [taxbillw] "
	sSQL = sSQL & "LEFT OUTER JOIN [cpa] "
	sSQL = sSQL & "ON [taxbillw].parcel_id=[cpa].parcel_id "
	sSQL = sSQL & "LEFT OUTER JOIN [tax_preliminary] "
	sSQL = sSQL & "ON [taxbillw].parcel_id=[tax_preliminary].parcel_id "
	sSQL = sSQL & "LEFT OUTER JOIN [Landuse_Described] "
	sSQL = sSQL & "ON  [taxbillw].land_use=[Landuse_Described].short_description "
	sSQL = sSQL & "LEFT OUTER JOIN [propertycodes_described] "
	sSQL = sSQL & "ON  [taxbillw].property_type=[propertycodes_described].[property-code] "
	sSQL = sSQL & "LEFT OUTER JOIN [Res_exempt] "
	sSQL = sSQL & "ON  [taxbillw].parcel_id=[Res_exempt].parcel_id "
	sSQL = sSQL & "LEFT OUTER JOIN [parcel] "
	sSQL = sSQL & "ON  [taxbillw].parcel_id=[parcel].parcel_id "
	sSQL = sSQL & "WHERE [taxbillw].parcel_id='" & sParcelID & "'"
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


%>
	<%
		' render the two colum section of the single-parcel page
        ' show the value/tax section, except during public disclosure, or for untaxed properties
		If TodaysTime < PublicDisclosureStartOnWeb Or TodaysTime > PublicDisclosureEnd Or RecordSetTaxbill("land_use")="E" Or RecordSetTaxbill("land_use")="EA" Or RecordSetTaxbill("land_use")="CM" Then Call ShowValuationsSections(RecordSetTaxbill)
	%>
<%

Else

	' when parcel not found in database
	%><%

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
		strSQL = strSQL & "SELECT [parcel].*,[taxbillw].[total_value] "
		strSQL = strSQL & "FROM [parcel] "
		strSQL = strSQL & "LEFT JOIN [taxbillw] on [parcel].[parcel_id] = [taxbillw].[parcel_id] "
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
		strSQL = strSQL + " SELECT TOP 500 [A].*,[taxbillw].[total_value] "
		strSQL = strSQL + " FROM [parcel_all_owners] AS [A] "
		strSQL = strSQL + " LEFT JOIN [taxbillw] on [A].[parcel_id] = [taxbillw].[parcel_id] " 
		strSQL = strSQL + " WHERE ([A].[owner] LIKE '%" & Sanitize(QueryStringOwner) & "%' OR [A].[owner] LIKE '%" & Sanitize(strOwnerReversed) & "%') "
		strSQL = strSQL + strSQLwhere
	ElseIf Len(QueryStringOwner) > 0 Then
		strSQL = ""
		strSQL = strSQL + " SELECT TOP 500 [A].*,[taxbillw].[total_value] "
		strSQL = strSQL + " FROM [parcel_all_owners] AS [A] "
		strSQL = strSQL + " LEFT JOIN [taxbillw] on [A].[parcel_id] = [taxbillw].[parcel_id] " 
		strSQL = strSQL + " WHERE [A].[owner] LIKE '%" & Sanitize(QueryStringOwner) & "%' "
		strSQL = strSQL + strSQLwhere
	Else
		strSQL = ""
		strSQL = strSQL + " SELECT TOP 500 [A].*,[taxbillw].[total_value] "
		strSQL = strSQL + " FROM [parcel] AS [A] "
		strSQL = strSQL + " LEFT JOIN [taxbillw] on [A].[parcel_id] = [taxbillw].[parcel_id] " 
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
<%

End Sub 'ShowSearchForm()


'########################################################################
' ShowSearch presents search results for address/owner/parcel searches
Sub ShowSearch()

Dim strSQL, NumResultsNarrow, NumResultsBroad, sMatchingWhat, DistinctResultsNarrow, DistinctResultsBroad

%>
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
<%

ElseIf NumResultsNarrow > 0 Then

	' get narrow query results
	Set g_objRecords = g_objConn.Execute( FunctionSearchQuery("narrow") )

ElseIf NumResultsBroad > 0 Then

	' get broad query results
	Set g_objRecords = g_objConn.Execute( FunctionSearchQuery("broad") )

End If

If NumResultsNarrow > 0 And NumResultsBroad > 0 And g_objRecords.EOF Then
ElseIf ( NumResultsNarrow > 0 Or NumResultsBroad > 0 ) And Not g_objRecords.EOF Then

%>

{
  "addresses": [<% Do While Not g_objRecords.EOF %>{
    "parcelID": "<%=g_objRecords("parcel_id")%>",
    "address": "<%=(g_objRecords("street_number") & " " & g_objRecords("street_name") & " " & g_objRecords("suffix"))%><%=Ternary( (Trim(g_objRecords("apartment_no"))<>"") , " Apt. " & g_objRecords("apartment_no") , "" )%>",
    "owner": "<%=g_objRecords("owner")%>",
    "value": "<%=FormatCurrency(g_objRecords("total_value"),0)%>"
  }<% g_objRecords.MoveNext %><% If not g_objRecords.EOF Then %>,<% End If %><% Loop %>]
}
<%
End If
%>
<%

Destroy()

End Sub 'ShowSearch()



'########################################################################
' renders the static default page with verbiage and flexible search webform
Sub ShowHTML()

%>
<%

End Sub ' ShowHTML

%>