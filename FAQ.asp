<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Frequently Asked Questions | City of Boston</title>
<!-- TemplateEndEditable -->
     <meta name="keywords" content="" />
     <meta name="description" content=""/>

     <link rel="stylesheet" href="/system/css/reset-fonts-grids.css" type="text/css" media="all" />
     <link rel="stylesheet" href="/system/css/style.css" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="/includes/css/print.css" media="print" />
     <link rel="icon" type="image/vnd.microsoft.icon" href="/favicon.ico" />

     <script type="text/javascript" src="/system/js/jquery.js"></script>
     <script type="text/javascript" src="/system/js/script.js"></script>



     <!--[if lte IE 6]><link rel="stylesheet" href="/system/css/ie.css" type="text/css"><![endif]-->

<!-- TemplateBeginEditable name="head" --><!-- TemplateEndEditable -->

<!--Google Analytics-->
<script type="text/javascript">
  var _gaq = _gaq || [];  
  var pluginUrl = '//www.google-analytics.com/plugins/ga/inpage_linkid.js';
  _gaq.push(['_require', 'inpage_linkid', pluginUrl]);
  _gaq.push(['_setAccount', 'UA-2187282-1']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

</head>


<body>




       <div id="doc4" class="home">


<div id="page_wrapper">
<div id="page_wrapper_inner">
<div id="hd">


	   
    
	
         
            <div id="hd_inner" class="hd_default" style="background:url(/Images_Documents/houseroofs_tcm3-13981.jpg) no-repeat 235px 0px;">  
         
         
	
		
<a href="http://www.cityofboston.gov/">
<h1 id="branding">cityofboston.gov - Official Web Site of the City of Boston</h1>
</a>
<!--    Start Top Navigation    -->                           
		<%
          Dim objXML, objXSL, xslTemplate, xslProc, paramVal1, paramVal2
        
          set objXML = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")
          objXML.async = false
          objXML.load(Server.MapPath("/system/xml/navigation.xml"))
        
          set objXSL = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")
          objXSL.async = false
          objXSL.load(Server.MapPath("/system/xslt/top.xslt"))
        
          set xslTemplate = Server.CreateObject("MSXML2.XSLTemplate")
          xslTemplate.stylesheet = objXSL
          set xslProc = xslTemplate.createProcessor()
        
          paramVal1 = "tcm:3-15888-64"
          if paramVal1 <> "" then
            xslProc.addParameter "currentPage", paramVal1
          end if
        
          xslProc.input = objXML
          xslProc.transform()
          Response.Write(xslProc.output)
        %><!--    End Top Navigation    -->									 
</div><!--close hd_inner div  -->
</div><!--close hd div   -->
<div id="bd_wrapper">
                                                 


      <div id="bd">
  

<div id="bd_inner">



  <div id="content_main">

			
<div id="content_main_inner">
<div class="sub_main_hd">




                   <div class="content">
                   <h2>Frequently Asked Questions </h2>
                   
                               <p>Below you will find answers to most frequently asked questions. For more information, please call the Assessing Department's Taxpayer Referral & Assistance Center (TRAC) office at (617) 635-4287 or visit us on the mezzanine level of Boston City Hall.</p>
                   
	   </div>


</div>



<div id="content_main_hd"><div><h2>Abatement Procedure</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is an abatement?</dt><dd class="hide" style="display:none;">An abatement is a reduction of property tax. It may be based on a reduction in the assessed value of taxable property, or a parcel may be exempted completely from the property tax based on ownership and use (a church, for example). A taxpayer must apply for abatement only for the current fiscal year and only if there is a dispute concerning the property valuation or the property classification. An application cannot be filed on taxes from previous years.</dd></dl><dl class="faq"><dt>What are the requirements for an abatement of real property taxes?</dt><dd class="hide" style="display:none;">A taxpayer may contest his or her tax liability on specific grounds:
<br /><br /><em><strong>Overvaluation</strong></em> - the assessed value is considered too high.
<br /><br /><em><strong>Disproportionate Assessment</strong></em> - pertains to entire property classes, not any individual unit or development.
<br /><br /><em><strong>Improper Classification</strong></em> - for example, a property is classified as commercial when it is actually residential.
<br /><br /><em><strong>Statutory Exemption</strong></em> - the property qualifies for exemption from taxation based on its ownership use.
<br /></dd></dl><dl class="faq"><dt>Abatement Procedure</dt><dd class="hide" style="display:none;"><p>For Fiscal Year 2017, abatement applications must be filed after the 3rd quarter tax bill is issued and no later than February 1, 2017. Application forms are available at the Assessing Department, Room 301, and at the Taxpayer Referral & Assistance Center (TRAC), Mezzanine level, Boston City Hall or by calling (617) 635-4287. Abatement application forms are also available online immediately following the issuance of the third quarter tax bill.</p></dd></dl><dl class="faq"><dt>What information will be requested when I file an abatement application?</dt><dd class="hide" style="display:none;">The Assessing Department is authorized by law to request information that is necessary to properly determine the fair cash value of the property. To preserve your right to appeal an abatement decision, you must complete and return an <strong>Information Requisition</strong> form. The failure to provide the information requested on the form within thirty (30) days of the date on which the application for abatement was filed will result in a denial of the application and may bar an appeal to the Appellate Tax Board.</dd></dl><dl class="faq"><dt>Assessing Department Actions</dt><dd class="hide" style="display:none;"><p>The Assessing Department attempts to process all abatement applications within three (3) months of filing. You will be informed of the status of the application through the following notices:</p><br /><p style="MARGIN-LEFT: 40px"><strong><em>Notice of Approval</em></strong><br />
The Assessing Department will abate the amount specified in the notice. Overpayments based on the abatement will be reimbursed.
<br /><br /><em><strong>Notice of Denial</strong></em><br />
No abatement will be granted. A denial will be issued in cases where the Assessing Department has made a decision based on the merits of the abatement application, failure of the applicant to file an Information Requisition, or for reasons of inaction in cases where the department has not made a determination on an application within (3) months of its filing date<strong>.</strong></p><br /><p style="TEXT-ALIGN: left"><strong>Valuation Division:</strong> (617) 635-1141</p><p style="TEXT-ALIGN: left"><strong>Board of Review:</strong> (617) 635-4260</p><p style="TEXT-ALIGN: left"><strong>Assessing Abatement Appeal Review Team</strong> (617) 635-2076</p></dd></dl><dl class="faq"><dt>Appeal to the Appellate Tax Board</dt><dd class="hide" style="display:none;"><p>You have 3 months from the date the Assessing Department made the decision (to grant or denied an abatement for any reason including inaction) to file an appeal.</p><p style="TEXT-ALIGN: center">Appellate Tax Board (ATB)
<br />
100 Cambridge Street
<br />
Floor 2, Suite 200
<br />
Boston, MA 02114
<br />
(617) 727-3100</p></dd></dl><dl class="faq"><dt>Where can I obtain more information about abatements?</dt><dd class="hide" style="display:none;">For further information about applications and filing deadlines, see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53617", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Abatement Procedure</a>.       </dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Assessed Values</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>How are values determined?</dt><dd class="hide" style="display:none;"><p>The Assessor determines the market value of every parcel of property in a city or town as of each January 1. There are three approaches to value: market, income and cost.</p><br /><p><strong>Market Approach</strong></p><p>Market sales of similar properties that sold in the year prior to January 1 are analyzed, compared and adjusted to forecast what the property would sell for on January. Most residential property is valued by the market approach</p><br /><p><strong>Income Approach</strong></p><p>The income approach is applicable to real estate that is normally bought and sold on the basis of its income-producing capacity. The approach requires significant data such as rents, occupancy rates, operating expenses, and investor requirements. The approach is most useful in valuing investment property where sufficient market sales are not available.</p><br /><p><strong>Cost Approach</strong></p><p>The cost approach involves an estimate of the current reproduction or replacement cost of the building, deducting an estimate of depreciation (or loss of value from any cause) and then adding an estimated value of land. The cost approach is most applicable to special-purpose properties that are not readily sold or rented.</p></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Assessing Data Resources</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>Is Boston property parcel data available to the public?</dt><dd class="hide" style="display:none;"><p>Yes, bulk parcel data for all properties in the City is available via Data Boston by clicking on the following link for <a href="https://data.cityofboston.gov/Permitting/Property-Assessment-2015/yv8c-t43q" title="Property Assessment Data">Property Assessment Data</a>.</p></dd></dl><dl class="faq"><dt>Is Boston property map data available to the public?</dt><dd class="hide" style="display:none;">Yes. Assessing Department property parcel map data is available through the City of Boston's Department of Innovation and Technology.
<br /><br /><a href="http://boston.maps.arcgis.com/home/item.html?id=cd6d9058ee9d4475b924751a2bb9d263" target="_blank">View Parcel Data</a></dd></dl><dl class="faq"><dt>How can I obtain a property record card?</dt><dd class="hide" style="display:none;"><p>Obtain a property record card for property situated within the City of Boston by completing the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9229", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Property Record Card Request Form</a> or by visiting the Assessing Department, Room 301, City Hall. Send the completed and signed form along with payment to:</p><br /><p>Assessing Department</p><p>Property Record Card Request</p><p>Room 301, City Hall</p><p>Boston, MA 02201</p><br /><p>A $5.00 fee per parcel is applicable for each record card and payable by cash or money order made payable to the City of Boston (<em>the fee is waived if the requestor owns the property</em>). A signature is required for an owner who seeks the waiver. A fee is applied to all other property classes.</p></dd></dl><dl class="faq"><dt>How can I obtain assessor (half-sheet) maps?</dt><dd class="hide" style="display:none;"><p>Copies of assessor half sheets can be obtained by visiting the Assessing Department Room 301, City Hall. Call 617-635-3742 for further information.</p><p>There are two sizes available and payable by check OR money order to the City Of Boston.
<br />
8.5 x 11 = $1.00
<br />
24 x 18 = $5.00</p></dd></dl><dl class="faq"><dt>How can I obtain an abutter list for mailings?</dt><dd class="hide" style="display:none;">An abutter list for creating mailings can be found by using the <a href="http://app01.cityofboston.gov/Abutter/">Abutter Mailing List Generator</a>. Using an address or parcel id, a mailing list can be created for notifying abutters.</dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Betterments</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is a betterment?</dt><dd class="hide" style="display:none;">A betterment is a specific type of public improvement undertaken by the City of Boston Public works Department. The laying out and construction of new streets and upgrading of sidewalks are considered <em>betterments</em>. Repaving or replacing streets, sidewalks and sewers are <strong>not</strong> considered betterments.</dd></dl><dl class="faq"><dt>Why am I being billed?</dt><dd class="hide" style="display:none;"><p>State Law allows the City to assess the cost of a betterment to affected properties. Usually, properties that abut the betterment are assessed. For each betterment, a lien that specifies the estimated amount for assessment for each affected property has been filed with the <a href="http://www.suffolkdeeds.com/">Suffolk County Registry of Deeds</a>.</p></dd></dl><dl class="faq"><dt>How was my betterment determined?</dt><dd class="hide" style="display:none;">Individual assessments are based on the overall cost of the betterment and parcel-specific factors as length of frontage and the land area of the parcel.
<br /><br />
The assessed owner has up to six months to petition the Public Improvement Commission for an abatement.</dd></dl><dl class="faq"><dt>What are my payment options?</dt><dd class="hide" style="display:none;"><p>You may pay the bill within thirty days with no penalty. Payments should be made to the City of Boston and mailed <em><strong>ONLY</strong></em> to the following address:</p><p style="TEXT-ALIGN: center"> </p><p style="TEXT-ALIGN: center">City of Boston
<br />
Office of the Collector-Treasurer
<br />
P. O. Box 9711
<br />
Boston, MA 02114</p><p style="TEXT-ALIGN: center"> </p><p style="TEXT-ALIGN: left">After thirty days, interest will accrue on any unpaid balance at the rate of seven (7) percent per year. Beginning with the next fiscal year (July 1 - June 30) the unpaid balance will be added to your annual Third Quarter property tax bill (issued in late December) as a <strong><em>special assessment.</em></strong> The special assessment, plus interest, will be spread over a ten-year period. You have the option to spread out the payments over a longer period of time, up to twenty years. To do so, contact the City of Boston Assessing Department before November 1.</p></dd></dl><dl class="faq"><dt>I have questions, who do I contact?</dt><dd class="hide" style="display:none;"><p>For questions regarding <strong><em>abatement</em></strong> or <strong><em>how your tax bill was determined</em></strong>, contact the <em><a href="/publicworks/engineering/pic.asp">Public Improvements Commission</a></em> at (617) 635-4965.</p><br /><p>For all other questions, contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635- 4287.</p></dd></dl><dl class="faq"><dt>For further Information</dt><dd class="hide" style="display:none;"><p><strong>FACT SHEET:</strong><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-29934", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Betterment Facts</a><br /><strong>Example:</strong><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-13049", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >BettermentNotice</a>.</p></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Boat Excise Tax/ Mooring Permit</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dd><h5>Boat Valuation</h5></dd><dd><dl class="faq"><dt>How is the valuation of boats determined?</dt><dd class="hide" style="display:none;">We follow guidelines set by the Commonwealth of Massachusetts (refer to MGL Chapter 60B) as shown below. Boats are taxed at a rate of ten dollars ($10) per thousand of valuation.
<br /><br /><table class="dark-blue" border="1" width="100%"><tbody><tr><td><center><strong>LENGTH OF VESSEL</strong></center></td><td colspan="3"><center><strong>VALUATIONS OF VESSELS</strong></center></td></tr><tr><td style="TEXT-ALIGN: center; VERTICAL-ALIGN: middle" rowspan="2"><center>(Overall center line length excluding bowsprits, boomkins and similar extensions)</center></td><td style="TEXT-ALIGN: center; VERTICAL-ALIGN: middle" colspan="3"><center>(based on age of vessel)</center></td></tr><tr><td style="TEXT-ALIGN: center; WIDTH: 65px; VERTICAL-ALIGN: middle">Under
<br />
4 Years
<br />
of age</td><td style="TEXT-ALIGN: center; WIDTH: 65px; VERTICAL-ALIGN: middle">4 thru 6 Years
<br />
of age</td><td style="TEXT-ALIGN: center; WIDTH: 65px; VERTICAL-ALIGN: middle">7 or More Years
<br />
of age</td></tr><tr><td><br />
Under 16 ft. (Exempt)</td><td><br />
$1,000</td><td><br />
$700</td><td><br />
$400</td></tr><tr><td>16 ft. but less than 17.5 ft.</td><td>$1,500</td><td>$1,000</td><td>$800</td></tr><tr><td>17.5 ft. but less than 20 ft.</td><td>$3,000</td><td>$2,000</td><td>$1,500</td></tr><tr><td>20 ft. but less than 22.5 ft.</td><td>$5,000</td><td>$3,300</td><td>$2,500</td></tr><tr><td>22.5 ft. but less than 25 ft.</td><td>$7,500</td><td>$5,000</td><td>$3,800</td></tr><tr><td>25 ft. but less than 27.5 ft.</td><td>$10,500</td><td>$7,000</td><td>$5,300</td></tr><tr><td>27.5 ft. but less than 30 ft.</td><td>$14,000</td><td>$9,300</td><td>$7,000</td></tr><tr><td>30 ft. but less than 35 ft.</td><td>$18,500</td><td>$12,300</td><td>$9,300</td></tr><tr><td>35 ft. but less than 40 ft.</td><td>$24,000</td><td>$16,000</td><td>$12,000</td></tr><tr><td>40 ft. but less than 50 ft.</td><td>$31,500</td><td>$21,000</td><td>$15,800</td></tr><tr><td>50 ft. but less than 60 ft.</td><td>$41,000</td><td>$27,300</td><td>$20,500</td></tr><tr><td>60 ft. or over</td><td>$50,000</td><td>$33,000</td><td>$24,800</td></tr></tbody></table></dd></dl></dd><dd><h5>Boat Excise Tax Bill</h5></dd><dd><dl class="faq"><dt>I have not paid my 2016 excise tax bill. How can I pay my bill?</dt><dd class="hide" style="display:none;"><p>You can pay your bill online at: <a href="http://www.cityofboston.gov/boats">www.cityofboston.gov/boats</a> or make a check out to the City of Boston, and mail to City of Boston, P. O. Box 55809, Boston, MA 02205.
<br /><br />
You can also come into City Hall to pay your bill on the Mezzanine Level, window 31. The Customer Service window (M-31) is open 9-5pm Monday-Friday. Please note that a mooring permit application still needs to be filed if your boat is moored in Boston. Once your check clears the bank and a mooring permit application is duly filed, a mooring permit will be mailed to your residence.</p><p>or </p><p>Visit the City Hall to Go Truck in Your Neighborhood
<br /><a href="/cityhalltogo">View Schedule</a></p></dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>What happens if I do not pay my boat excise tax bill?</dt><dd class="hide" style="display:none;">You will be denied a mooring permit.</dd></dl><dl class="faq"><dt>I did not get a bill. How can I get a bill sent to me so that I can apply for a mooring permit?</dt><dd class="hide" style="display:none;">Call the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 to see if a boat excise tax bill has been issued. If not, contact the Collector's office at (617) 635-4131 or visit City Hall mezzanine floor, Window (31) to have a boat excise tax bill issued.</dd></dl><dl class="faq"><dt>I paid my boat excise tax bill in XYZ town. Why I am receiving a bill from Boston?</dt><dd class="hide" style="display:none;">Please send us proof that you paid the bill in XYZ town.</dd></dl><dl class="faq"><dt>How do you determine who gets billed?</dt><dd class="hide" style="display:none;">At the end of each fiscal year we receive a list of boat owners who registered their boats in that fiscal year. We also receive a list of documented boats (a national form of registration) from the US Coast Guard. We use both lists to generate boat excise tax bills.</dd></dl><dd><h5>Boat Mooring Permit</h5></dd><dd><dl class="faq"><dt>Boat Mooring Docking Compliance Law/ Ordinance</dt><dd class="hide" style="display:none;">In May 2004, the City of Boston enacted an ordinance requiring any vessel moored in Boston to obtain a mooring permit from the Harbormaster. With national security on everyone's mind these days, closely monitoring activities within our harbor has become a top priority for law enforcement agencies.</dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>How do you make sure that everyone who moors a boat in Boston pays excise tax?</dt><dd class="hide" style="display:none;">Apart from security reasons, the new mooring permit process was put in place to ensure that anyone who moors his/her boat in Boston pays an excise tax bill.</dd></dl><dl class="faq"><dt>What happens if I moor my boat without a permit?</dt><dd class="hide" style="display:none;">Your boat will be removed from the harbor and stored at your expense in a designated area by the Harbormaster.</dd></dl><dl class="faq"><dt>I need to apply for a mooring permit. What do I do?</dt><dd class="hide" style="display:none;">In order to obtain a mooring permit, a boat owner must show proof that he/she paid their 2016 boat excise tax bill. For questions concerning boat excise tax as it applies to mooring permit applications contact: <a href="mailto:collecting@cityofboston.gov">collecting@cityofboston.gov</a>.</dd></dl><dl class="faq"><dt>This is my first time mooring my boat in Boston. How do I get a mooring permit?</dt><dd class="hide" style="display:none;">You can apply for a mooring permit online at: <a href="http://cityofboston.gov/boats/mooring/">http://cityofboston.gov/boats/mooring/</a>.</dd></dl><dl class="faq"><dt>I just purchased my boat. How do I get a mooring permit?</dt><dd class="hide" style="display:none;">In order to obtain a mooring permit, a boat owner must show proof that he/she paid their 2014 boat excise tax bill. For questions concerning boat excise tax as it applies to mooring permit applications contact: <a href="mailto:collecting@cityofboston.gov">collecting@cityofboston.gov</a>.</dd></dl><dd><h5>Questions</h5></dd><dd><dl class="faq"><dt>Who should I contact if I have other questions?</dt><dd class="hide" style="display:none;">If you have <strong>technical questions</strong> about the online permit application, please contact the Webmaster at <a href="mailto:OnlinePayments@cityofboston.gov">OnlinePayments@cityofboston.gov</a>(regarding technical issues while completing the online application).
<br /><br />
If you have questions or concerns about the receipt of <strong>your payment</strong>, please contact Treasury at <a href="mailto:Collecting@cityofboston.gov">Collecting@cityofboston.gov</a><br /><br />
If you have questions about a <strong>mooring location assignment</strong>, please contact the Harbor Master at <a href="mailto:Moorings.bpd@ci.boston.ma.us">Moorings.bpd@ci.boston.ma.us</a><br /><br />
If you have <strong>general questions</strong> about the mooring permit ordinance/application, please contact please contact Treasury at <a href="mailto:Collecting@cityofboston.gov">Collecting@cityofboston.gov</a></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Classification </h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is Classification?</dt><dd class="hide" style="display:none;">In 1978 the citizens of the Commonwealth of Massachusetts adopted a Constitutional amendment authorizing the General Court to classify real property into as many as four classes (residential, open space, commercial and industrial) and to tax such classes differently. The Department of Revenue supervises the implementation of property classification. In Boston, the determination to allocate the tax burden by class is made annually by the City Council, with the approval of the Mayor.</dd></dl><dl class="faq"><dt>What are the classes of property?</dt><dd class="hide" style="display:none;">Assessors in Massachusetts assign all real property according to its use. The four classes are: Residential, Open Space, Commercial and Industrial. Personal Property constitutes a separate class (see “What is personal Property?).
<br /><br /><strong>Residential</strong><br />
Includes all property containing one or more units used for human habitation. The class includes accessory land and buildings (e.g. pools, garages etc.). Single-Family homes as well as apartment buildings are in this category.
<br /><br /><strong>Open Space</strong><br />
Includes land maintained in an open or natural condition that contributes to the benefit and enjoyment of the public. Such land cannot be held for the production of income.
<br /><br /><strong>Commercial</strong><br />
Includes any property held for the purpose of conducting a business (e.g. office buildings, retail stores etc.).
<br /><br /><strong>Industrial</strong><br />
Includes any property involved in manufacturing, processing or extraction. It includes utility real property used for storage and generation. Not all parcels of real property fall into the four classes. Some property has mixed residential/commercial use.</dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Motor Vehicle Excise</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is motor vehicle excise?</dt><dd class="hide" style="display:none;">Chapter 60A of Mass. General Laws imposes an excise on the privilege of registering a motor vehicle or a trailer in the Commonwealth of Massachusetts. The excise is levied annually in lieu of a tangible personal property tax. Non-registered vehicles, however, remain subject to taxation as personal property.
<br /><br />
The excise is levied by the city or town where the vehicle is principally garaged and the revenues become part of the local community treasury.
<br /><br />
The Registry of Motor Vehicles prepares data for excise bills according to the information on the motor vehicle registration and sends it to city or town assessors. Cities and towns then prepare bills based on excise data sent by the Registry in conformity with Department of Revenue requirements.
<br /></dd></dl><dd><h5>Motor Vehicle Valuation</h5></dd><dd><dl class="faq"><dt>How is the excise determined?</dt><dd class="hide" style="display:none;">The amount of the excise is based on the value of the motor vehicle that is based upon the manufacturer's list price.
<br /><br />
Various percentages of the manufacturer's list price are applied. The formula is as follows:
<br /><br /><ul><li>In the year preceding the designated year of manufacture
<br />
(brand new car released before model year) - 50%</li><li>In the designated year of manufacture- 90%</li><li>In the second year - 60%</li><li>In the third year - 40%</li><li>In the fourth year - 25%</li><li>In the fifth and succeeding years -10%</li></ul><p><br /><strong>Calculating the excise</strong></p><br /><div>Once the value of the vehicle is determined, an excise at the rate of $25.00 per thousand is assessed. Excises are assessed annually, on a calendar year basis, by the assessors of the city or town in which the vehicle is garaged.
<br /><br />
If the motor vehicle is registered after January 31, it is taxed for the period extending from the first day of the month in which it is registered to the end of the calendar year. For example, if a vehicle is registered on April 30, it will be taxable as of April 1, for the nine months of the year (April through December) and the excise due therefore, will be 9/12 of the full excise. In no event shall the excise be assessed for less than $5.00 nor shall an abatement or refund under Section 1 of Chapter 60A reduce an excise to less than $5.00.</div></dd></dl></dd><dd><h5>Motor Vehicle Excise Tax Payment</h5></dd><dd><dl class="faq"><dt>How do I pay the motor vehicle excise? Can I pay online?</dt><dd class="hide" style="display:none;"><p>Yes, to pay your Motor Vehicle Excise tax visit: <a href="http://www.cityofboston.gov/excise" title="Motor Vehicle Excise Tax Payment Online">Motor Vehicle Excise Tax Payment Online</a>.
<br /><br /></p><p>In person, you can visit the Collecting Division Customer Service window M-1 (Mezzanine level) at City Hall, Monday-Friday 9-5pm.</p><p>or
<br /></p><p>Visit the City Hall to Go Truck in Your Neighborhood
<br /><a href="/cityhalltogo">View Schedule</a></p></dd></dl></dd><dd><h5>Motor Vehicle Excise Tax Abatement</h5></dd><dd><dl class="faq"><dt>When is payment due?</dt><dd class="hide" style="display:none;"><div><strong>Payment of the motor vehicle excise is due within 30 days from the date the excise bill is issued (not mailed, as is popularly believed).
<br /></strong></div><div><strong><br /></strong><em>NOTE: A person who does not receive a bill is still liable for the excise plus any interest charges accrued. Therefore, it is important to keep the Registry and the US post office informed of a current name and address so that excise bills can be delivered promptly. All owners of motor vehicles must pay an excise tax; therefore, it is the responsibility of the owner to contact the TRAC office if you have not received a bill.</em><br /></div></dd></dl><dl class="faq"><dt>What happens if my payment is late?</dt><dd class="hide" style="display:none;">If an excise is not paid within 30 days from the issue date, the local tax collector sends a demand. The charge for the demand is $5. Interest accrues on the overdue bill from the day after the due date until the date of payment at an annual rate of 12 percent.
<br /><br />
If the demand is not answered within 14 days, the collector may issue a warrant to the deputy tax collector or an appointed agent. The taxpayer is then additionally liable for a warrant fee of $5. The warrant notice sent by the deputy collector (or the appointed agent) to the taxpayer costs $14.
<br /><br />
If this notice is not answered than a final warrant, a service warrant will be delivered or exhibited to the taxpayer at his/her residence or place of business at a fee of $14. All bills should clearly state the interest and penalty charges.
<br /></dd></dl><dl class="faq"><dt>How does non-payment of motor vehicle excise affect license and registration?</dt><dd class="hide" style="display:none;">If the service warrant demanding final payment is ignored, the collector may then notify the Registrar of Motor Vehicles of such non-payment, including all accrued interest and penalty fees. The Registrar may then mark the individual's registration preventing the renewal of the motor vehicle registration and the owner's driver's license until such time as the Registrar is notified that full and final payment has been made to the city or town. This payment shall include a $20 release fee as final settlement of the delinquent excise. Once the bill had been paid, the municipality will give the motorist a receipt so he or she can return to the Registry to register his/her vehicle.
<br /><br />
Although the local tax collectors do notify the Registrar that the matter is resolved, it is strongly advised to retain the certified receipt of payment for presentation to the Registry of Motor Vehicles. Cities and towns relay computerized notification that excise bills have been paid only periodically to the Registry.
<br /><br />
Under the excise tax law, tax collectors have six years from the issue date of a bill to notify the Registry of non-payment by a driver (M.G.L. c.60A, s2A), unless the tax record shows a history of non-payment. However, under the Registry's own policy, this notification time has been reduced to just two years. If the record does show a history of delinquency, the tax collectors can electronically mark the driver's record and institute proceedings to collect for as many years back (beyond six years, in other words) as necessary and notify the Registry. The Registry, in turn, reviews each notification beyond two years individually. If a taxpayer has had a good history of payment and suddenly receives a bill dating back more than six years, the assessors will assign a tax collector to collect the bill; the tax collector, in turn, will attempt to collect and assess late fees and penalties, as is required by law, if applicable. However, the collector can no longer mark the driver's record for non-payment since the Registry only allows two years for notification from the issue date of the bill. Thus, the taxpayer's ability to renew the license, in this instance, is not hampered; but the bill must still be resolved with the local tax collector.
<br /><br />
For questions further information, contact the Tax Delinquent Service Office at 1-866-432-3713.</dd></dl><dl class="faq"><dt>How can I obtain a motor vehicle excise abatement form?</dt><dd class="hide" style="display:none;"><p>Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR you can access the form under <em>Related Links</em> at right. Follow the directions on the form and send it to the TRAC office.
<br /><br /><em>NOTE: On unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.
<br /></em><br /><strong>NEW REQUIREMENTS</strong><br /></p><p>The TRAC office must receive applications within 3 years after the excise is due OR within one year after the excise is paid.</p><br /><strong>Example:</strong> Assume that an excise tax bill is due on February 25, 2016. The abatement deadline would be February 25, 2019, OR one year after the payment of the bill, whichever is later.</dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>Under what circumstances might motor vehicle excise abatement be warranted?</dt><dd class="hide" style="display:none;"><p>Abatements can be filed if:
<br /></p><ul><li><p>the owner believes the assessment is incorrect, or</p></li><li><p>if the vehicle was traded, or</p></li><li><p>if the vehicle was stolen, or</p></li><li><p>if the vehicle was sold during the year in which it is being taxed and the registration was properly cancelled, or</p></li><li><p>if the owner moved from the City of Boston to another city or town, or before January 1</p></li><li><p>if the owner moved to another state and registered the vehicle and cancelled the registration in Massachusetts, or</p></li><li><p>If the registration is cancelled, it is most important to return the plate(s) to the Registry of Motor Vehicles and to obtain a return plate receipt.</p></li></ul><br /><p>When abatement is granted, excise bills are prorated by the month, thus the owner is responsible for the excise accrued through the month in which the car was last registered to him/her.
<br /></p></dd></dl><dl class="faq"><dt>What if I've moved out of Boston?</dt><dd class="hide" style="display:none;"><p>If a motor vehicle owner moves within Massachusetts and has not paid an excise tax for the current year you should:
<br /></p><br /><ul><li>Pay the motor vehicle excise to the city or town in which you resided  on January 1</li><li>File an application with the Taxpayer Referral & Assistance Center (TRAC) office for abatement together with the following:
<ol><li>proof of garaging as of January 1 of the billing year and</li><li>a copy of the Insurance Policy (cover selection page) as of January 1 of the tax year.</li></ol></li></ul><p><br />
Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.
<br /></p><br /><p><em>If the owner moved before the first of the year, he/she must pay the tax to the new community to which the owner moved. If the owner did not notify the Registry, the local assessor, and the post office that he/she moved before the first of the year, it may be necessary to file for an abatement with the former city or town which had sent the excise bill. Most cities or towns will dismiss the bill and reroute it to the new community once the owner furnishes proof that he/she had moved before the first of the year.</em></p></dd></dl><dl class="faq"><dt>What if I sold my car?</dt><dd class="hide" style="display:none;"><p>If an excise bill is received for a vehicle or trailer that has been sold, the seller must:</p><br /><ul><li><p>Return the plate(s) to the Registry of Motor Vehicles, obtain a return plate receipt</p></li><li><p>File an application with the Taxpayer Referral & Assistance Center (TRAC) office for abatement together with the following:</p><ol><li><p>return plate receipt and the bill of sale OR</p></li><li><p>New Registration Form</p></li></ol></li></ul><p><br />
Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.</p><br /><p dir="ltr"><em><strong>NOTE:</strong> It is important to remember that the bill for a vehicle you no longer own should not be ignored. On unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.</em><br /></p></dd></dl><dl class="faq"><dt>What if I traded my car?</dt><dd class="hide" style="display:none;"><p>If an excise bill is received for a vehicle, which was traded, and which was not owned in the calendar year stated on the bill, it is recommended to:
<br /></p><br /><ul><li><p>Pay the bill, and file an application for abatement with the TRAC office.</p></li><li><p>Provide a copy of the New Registration form OR Plate Return Receipt AND Purchase Agreement citing vehicle as Trade-in.</p></li><li><p>Pay the bill, and provide a copy of the registration for the new vehicle that indicates the date of transfer together with an application for abatement to the TRAC office. </p></li></ul><br /><p>Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.  
<br /><br /><em><strong>NOTE:</strong> On unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.</em></p><br /><p>TRAC can then adjust the bill to reflect the ownership for only part of the year, and grant the proper abatement. The bill is prorated back to the last day of the month in which the vehicle was owned and the excise bill on the new vehicle will be prorated as of the date the new vehicle was registered.</p></dd></dl><dl class="faq"><dt>What if my car is stolen?</dt><dd class="hide" style="display:none;"><p>If the vehicle is stolen and not recovered within 30 days, the owner will be entitled to an abatement if he/she provides TRAC with a copy of the following documentation:</p><br /><ul><li>Insurance Company Settlement Letter AND C-19 form (Affidavit of Lost or Stolen plate) from the Registry of Motor Vehicles OR</li><li>New Registration if plate transferred</li></ul><br /><p><em><strong>NOTE:</strong> Falsely reporting the theft of a motor vehicle or trailer will result in severe penalties and a person may be charged up to three times the excise due on the vehicle for an entire year.</em></p><br /><p>Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.</p><br /><p><strong>NOTE:</strong> on unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.
<br /></p></dd></dl><dd><h5>Motor Vehicle Excise Tax Exemptions</h5></dd><dd><dl class="faq"><dt>Am I eligible for any exemptions?</dt><dd class="hide" style="display:none;">The City of Boston has accepted Chapter 6GA, Section 1 of the Massachusetts General Laws that provides excise tax exemptions for vehicles owned by certain disabled individuals and veterans, ex-prisoners of war and their surviving spouses and certain charitable organizations. Please contact the Taxpayer Referral & Assistance Center (TRAC) for further details on eligibility.
<br /></dd></dl></dd><dd><h5>Questions & Information</h5></dd><dd><dl class="faq"><dt>Where can I get more information about motor vehicle excise?</dt><dd class="hide" style="display:none;">Questions about your motor vehicle excise should be directed to the Taxpayer Referral & Assistance Center. It is best to put all questions in writing and to request a written response so that procedures are clearly defined should additional difficulties arise. You can email Assessing via the <a href="http://www.cityofboston.gov/assessing/contactform.asp"><font color="#0033CC">Contact Form</font></a>. Indicate Motor Vehicle Excise as subject.
<br /></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Motor Vehicle Registration Law</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>Compliance With Motor Vehicle Registration Law</dt><dd class="hide" style="display:none;">You must register your vehicle in Massachusetts if you are a Massachusetts resident. The following criteria, although not exclusive, can be used by state and local agencies and the courts to determine residency. By law, you are considered a Massachusetts resident if you receive a local property tax exemption, file a state resident income tax return or receive a rental deduction, register to vote here, enroll your dependents in a local public school or pay resident tuition for them at a state college or university, receive public assistance from the state, declare that mortgaged or insured property located here is your principal residence, or obtain any employment, benefit or privilege by claiming Massachusetts residency. You may be fined up to $1,000 per year if you illegally register in another state, or misrepresent the principal place your motor vehicle is garaged in this state. You are also subject to assessment for unpaid taxes with penalties and interest.
<br /></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Municipal Liens</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>How do I get a municipal lien certificate? </dt><dd class="hide" style="display:none;">If you wish to obtain a Municipal Lien Certificate,
<br />
the following are required:
<ul><li><div>Ward, parcel, sub-parcel number
<br /></div></li><li><div>Self-addressed stamped envelope if you wish the municipal lien certificate mailed to you
<br /></div></li><li><div>Acceptable forms of payment: attorney's check, certified or registered check, and cash (if in person)</div></li></ul><br /><p><strong>Mail to:</strong><br /><br />
Collector of Taxes, City of Boston
<br />
P.O. Box 9711
<br />
Boston, MA 02114
<br />
Attn: MLC - Window M-32
<br />
617-635-4127</p></dd></dl><dl class="faq"><dt>How long does it take?</dt><dd class="hide" style="display:none;">Allow ten (10) business days for processing.</dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Personal Exemptions</h2><p /></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dd><h5>About Personal Exemptions</h5></dd><dd><dl class="faq"><dt>What is a personal exemption?</dt><dd class="hide" style="display:none;">An exemption is a release from the obligation of having to pay taxes on all or a part of a parcel of real property. Personal exemptions are a reduction in taxes due to a particular personal circumstance. The qualifications set forth in the Massachusetts General Laws. The burden is on the taxpayer to show that he or she falls within the expressed terms of the exemption provision.
<br /><br />
Personal exemptions must be filed no later than December fifteenth of each year or by three months from the issue date of the 3rd quarter tax bill.
<br /><br />
Exemptions are granted for one year only. An application must be filed each year.
<br /></dd></dl><dl class="faq"><dt>Who is eligible for a personal exemption?</dt><dd class="hide" style="display:none;"><p>Full or partial exemptions are provided in the General Laws for the following eligible persons:</p><br /><ul><li>Surviving Spouse (Widow/Widower), Minor Child of a Deceased Parent, Elderly - Clause 17D</li><li>Blind - Clause 37A</li><li>Veterans - Wartime Service Connected Disability Clause 22</li><li>Elderly - Clause 41C</li><li>Hardship - Clause 18</li><li>National Guard - Clause 56</li><li>Tax Deferral - Clause 41A taxpayers (65+)
<br /></li></ul></dd></dl><dl class="faq"><dt>How do I apply for personal exemptions?</dt><dd class="hide" style="display:none;"><p>Taxpayers have until April 3 of the tax year to file a personal exemption application with the Assessing Department. <strong>Exception:</strong> Filers for the National Guard exemption must submit a National Guard exemption application within 3 months after the actual (not preliminary) tax bills are mailed.</p><p><br />
The fiscal year personal exemption application is available online immediately following the issuance of the 3rd quarter tax bill. Those taxpayers seeking the National Guard exemption should file a National Guard exemption application, which is also available immediately following the issuance of the 3rd quarter tax bill. The filing of an application does not mean that you can postpone the payment of your tax. The tax that appears on each of the Quarterly tax bills must be paid in full. If the personal exemption is approved, a refund will follow.
<br /><br /><em>NOTE: A taxpayer may not receive more than one of these exemptions. If however, taxpayers qualify for two of these exemptions, the Taxpayer Referral & Assistance Center will make sure they receive the exemption that saves them the most money.</em><br /></p></dd></dl></dd><dd><h5>Surviving Spouse, Minor Child of Deceased Parent, Elderly Exemption</h5></dd><dd><dl class="faq"><dt>What is the Surviving Spouse exemption?</dt><dd class="hide" style="display:none;">The Surviving Spouse, Minor Child of Deceased Parent, Elderly exemption 17D* provides assistance to surviving spouses, minor children of a deceased parent, and elderly taxpayers who meet the age, whole estate and residency requirements below.
<br /><br /><em>Please Note: if you are elderly and have a limited income, you may be eligible for a greater amount of assistance under elderly exemption 41C or a tax deferral arrangement under deferral 41A.
<br /></em></dd></dl><dl class="faq"><dt>What is the exemption amount for Surviving Spouse?</dt><dd class="hide" style="display:none;"><p>Taxpayers who are eligible for personal exemption 17D will receive a reduction in their tax liability of $310. In addition, the City of Boston has elected to provide additional relief of up to $310, provided that the additional amount does not:</p><p style="LIST-STYLE-TYPE: none"><br /></p><ul><li>Reduce your final tax bill below the amount of tax you owed in the previous year; and</li><li style="LIST-STYLE-TYPE: none"><br /></li><li>Reduce the taxable value of your property below 10 percent of the assessed value.</li></ul></dd></dl><dl class="faq"><dt>How do I apply for the Surviving Spouse exemption?</dt><dd class="hide" style="display:none;"><p>Applications must be filed with the Assessing Department/ Taxpayer Referral & Assistance Center (TRAC) by April 3 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53611", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Surviving Spouse Exemption</a>.</p><p><br /><strong>Renewals:
<br /></strong> If you were granted an exemption last year, the Assessing Department/ Taxpayer Referral & Assistance Center (TRAC) will send you a renewal application. However, it is your responsibility to ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the TRAC at (617) 635-4287. Supporting documentation, including a birth certificate and all other materials that will help the Board of Assessors make a determination, will be requested.
<br /><br /><em>The filing of an application does not mean you can postpone the payment of your tax.</em><br /></p></dd></dl></dd><dd><h5>Blind Exemption</h5></dd><dd><dl class="faq"><dt>What is the Blind exemption?</dt><dd class="hide" style="display:none;">The Blind exemption 37A* provides assistance to taxpayers who are legally blind and meet the requirements below.
<br /></dd></dl><dl class="faq"><dt>What is the exemption amount for Blind exemption?</dt><dd class="hide" style="display:none;"><p>Taxpayers who are eligible for personal exemption 37A will receive a reduction in their tax liability of $500. In addition, the City of Boston has elected to provide additional relief of up to $500, provided that the additional amount does not:</p><br /><ul><li><p>Reduce your final tax bill below the amount of tax you owed in the previous year; and</p></li><li><p>Reduce the taxable value of your property below 10 percent of the assessed value.</p></li></ul></dd></dl><dl class="faq"><dt>How do I apply for the Blind exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filed with the Assessing Department/ Taxpayer Referral & Assistance Center (TRAC) by April 3 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53607", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Blind Exemption 37A</a>.
<br /></p><br /><p><strong>Renewals:
<br /></strong> If you were granted an exemption last year, the Assessing Department/ Taxpayer Referral & Assistance Center will send you a renewal application. However, it is your responsibility to ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the Assessing Department/ Taxpayer Referral & Assistance Center at (617) 635-4287.
<br /><br />
Supporting documentation, including certification from the Massachusetts Division of the Blind and all other materials that help the Board of Assessors make a determination will be requested.
<br /><br /><em>As a reminder, the filing of an application does not mean you can postpone the payment of your tax.
<br /></em></p></dd></dl></dd><dd><h5>Veteran Exemption</h5></dd><dd><dl class="faq"><dt>What is the Veterans exemption?</dt><dd class="hide" style="display:none;"><p>The veterans exemption 22* provides assistance to veterans who meet the disability and residency requirements listed. Please note that if you are an elderly veteran and have a limited income, you may be eligible for a greater amount of assistance under personal exemption 41C.</p></dd></dl><dl class="faq"><dt>What is the Veteran exemption amount?</dt><dd class="hide" style="display:none;"><p>Taxpayers who are eligible for veterans exemption 22* will receive a reduction in their tax liability of between $400 and $1,500, depending on the nature of their disability. In addition, the City of Boston has elected to provide additional relief of up to twice the amount, provided that the additional amount does not:</p><br /><ul><li>Reduce your final tax bill below the amount of tax you owed in the previous year; and</li><li>Reduce the taxable value of your property below 10 percent of the assessed value.</li></ul><br /><p>Paraplegic veterans with service-connected disabilities will be exempted from their tax liabilities.</p></dd></dl><dl class="faq"><dt>How do I apply for the Veterans exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filled out with the Assessing Department/Tax Referral & Assistance Center (TRAC) by April 3 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53612", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Veteran Exemption</a>.
<br /></p><br /><p><strong>Renewals:</strong><br />
If you were granted an exemption last year, the Assessing Department/ Taxpayer Referral & Assistance Center will send you a renewal application. However, it is your responsibility to ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the Assessing Department/ Taxpayer Referral & Assistance Center at (617) 635-4287. Supporting documentation, including a certificate of eligibility from the Veterans Administration and all other materials which will help the Board of Assessors make a determination, will be requested.
<br /><br />
The filing of an application does not mean you can postpone the payment of your tax.
<br /><br /><em><strong>NOTE:</strong> Applicants for Residential Exemption <strong>MUST</strong> provide their social security number on their application. This information will be kept confidential by the Assessing Department and used solely to confirm residency compliance.</em></p></dd></dl></dd><dd><h5>Elderly Exemption</h5></dd><dd><dl class="faq"><dt>What is the Elderly exemption?</dt><dd class="hide" style="display:none;">The elderly exemption 41C* provides assistance to elderly taxpayers who meet the age, income, whole estate and residency requirements below. Please note that if you are elderly but do not meet one or all of the personal exemption 41C requirements, you may be eligible for a lesser amount of assistance under personal exemption 17D or a deferral arrangement.
<br /></dd></dl><dl class="faq"><dt>What is the Elderly exemption amount?</dt><dd class="hide" style="display:none;">Taxpayers who are eligible for personal exemption 41C will receive a reduction in their tax liability of $750. In addition, the City of Boston has elected to provide additional relief of up to $750 provided that the additional amount does not:
<br /><br /><ul><li>Reduce your final tax bill below the amount of tax you owed in the previous year; and</li><li>Reduce the taxable value of your property below 10 percent of the assessed value.</li></ul></dd></dl><dl class="faq"><dt>How do I apply for the Elderly exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filed with the Assessing Department / Taxpayer Referral & Assistance Center (TRAC) by April 3 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53608", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Elderly Exemption 41C</a>.</p><p><br /><strong>Renewals:</strong><br />
IF you were granted an exemption last year, the Assessing Department / Taxpayer Referral & Assistance Center will send you a renewal application. However, it IS your responsibility TO ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the Assessing Department / Taxpayer Referral & Assistance Center at (617) 635 - 4287. Supporting documentation, including a birth certificate and all other materials that will help the Board of Assessors make a determination, will be requested.
<br /><br /><em>The filing of an application does NOT mean you can postpone the payment of your tax.</em><br /></p></dd></dl></dd><dd><h5>Hardship Exemption</h5></dd><dd><dl class="faq"><dt>What is the Hardship exemption?</dt><dd class="hide" style="display:none;"><p>The clause 18 hardship exemption provides assistance to those taxpayers who, in the judgment of the Board of Assessors, are unable to fulfill their tax obligations by reason of:</p><br /><ul><li>age</li><li>infirmity, and</li><li>financial condition</li></ul></dd></dl><dl class="faq"><dt>What is the Hardship exemption amount?</dt><dd class="hide" style="display:none;">Taxpayers who are eligible for hardship exemption 18 are released from all or a portion of their tax liability, as determined by the Board of Assessors.</dd></dl><dl class="faq"><dt>How do I apply for the Hardship exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filled out with the Assessing Department by April 3 of the tax year.</p><br /><p>If you think you qualify, notify the Taxpayer Referral & Assistance Center at (617) 635-4287 after you receive your fourth quarter tax bill. Supporting medical and financial documentation is required to assist the Board of Assessors in making a determination.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53609", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Hardship Exemption 18</a>.</p></dd></dl></dd><dd><h5>National Guard Exemption</h5></dd><dd><dl class="faq"><dt>What is the National Guard exemption?</dt><dd class="hide" style="display:none;">The National Guard exemption provides tax relief to those homeowners in the National Guard or Military Reserve serving overseas during the fiscal year.</dd></dl><dl class="faq"><dt>What is the National Guard exemption amount?</dt><dd class="hide" style="display:none;">Taxpayers who are eligible for the National Guard exemption will receive a 100% reduction in their real estate tax liability for the given year.</dd></dl><dl class="faq"><dt>How do I apply for the National Guard exemption?</dt><dd class="hide" style="display:none;"><p>A National Guard exemption application  should be filled out and returned to the Assessing Department, Room 301, One City Hall Square, Boston, MA 02201-1050, no later than 3 months after the actual (not preliminary) tax bills are mailed.</p><p><br />
For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53610", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 National Guard Exemption</a>.
<br /></p></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Personal Property </h2><p><br xmlns="http://www.w3.org/1999/xhtml" />
Every business in the City of Boston is required by State Law to file a Form of List/State Tax Form 2 annually by March 1. All taxable personal property owned, held, or leased should be listed. (M.G.L. Chapter 59,  Section 29)
<br xmlns="http://www.w3.org/1999/xhtml" /><br xmlns="http://www.w3.org/1999/xhtml" /><strong xmlns="http://www.w3.org/1999/xhtml">Contact Information:</strong><br xmlns="http://www.w3.org/1999/xhtml" /><br xmlns="http://www.w3.org/1999/xhtml" /><em xmlns="http://www.w3.org/1999/xhtml">Telephone:</em> (617) 635-1165
<br xmlns="http://www.w3.org/1999/xhtml" /><em xmlns="http://www.w3.org/1999/xhtml">Email:</em><a xmlns="http://www.w3.org/1999/xhtml" href="mailto:PersonalProperty@boston.gov">PersonalProperty@boston.gov</a><br xmlns="http://www.w3.org/1999/xhtml" /><em xmlns="http://www.w3.org/1999/xhtml">Fax:</em> (617) 635-4145 - Attn: Personal Property
<br xmlns="http://www.w3.org/1999/xhtml" /><br xmlns="http://www.w3.org/1999/xhtml" /></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>Electronic Filing Requirement for State Tax Form 2/ Form of List</dt><dd class="hide" style="display:none;"><p>On January 1, 2013, The City of Boston adopted an electronic filing requirement for the submission of all personal property assets.  All owners of personal property, except those who demonstrate that electronic filing would present an undue hardship, are required to file electronically. Electronic filing serves to increase the efficiency and accuracy of the filing and review processes as well as significantly reduce the flow of paper. </p><p> 
<br />
Personal Property owners have the following filing options: 1) using our online filing website, or 2) filing in EXCEL by electronic mail or mailed data CD.</p><br /><ul><li>Online filing: In our January mailing, a username and temporary password were issued to all new account holders that will enable filers to enter, review and edit data until they are ready to make their final submission. If you took advantage of online filing last year, your account number/business ID is your User Name and you can use the password you created last year. Online filing link: <a href="https://assessppof.cityofboston.gov/BostonOnline/">https://assessppof.cityofboston.gov/BostonOnline/</a></li></ul><br /><ul><li>Filing an EXCEL spreadsheet: Click on the link that follows to access a formatted and downloadable EXCEL spreadsheet as well as instructions. <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-35439", "AA", "BB", "CC", true).URL %>" class="xls" >Electronic filing Spreadsheet</a></li></ul><p><br />
Paper copies of the State Tax Form 2/Form of List will be mailed to those who contact us and demonstrate the aforementioned hardship. The Personal Property Unit’s contact information is located at the top of this page.</p><p><br />
Please be advised that all information filed, whether electronically or on paper, is still subject to the confidentiality requirements of Massachusetts General Laws, Chapter 59, § 32.</p></dd></dl><dl class="faq"><dt>What is Personal Property?</dt><dd class="hide" style="display:none;">Personal property is "tangible" property (that is, physical), and is subject to the personal property tax unless exempted by statute. Tangible personal property ranges from the chairs in a barber shop to the furnishings of a doctor's waiting room, from the drills used by a dentist to the poles owned by a utility.</dd></dl><dl class="faq"><dt>Can Personal Property be Exempt?</dt><dd class="hide" style="display:none;"><p>Professional tools used by plumbers, carpenters, auto mechanics and other trades are exempt from the personal property tax. In legal terms, this exemption covers "tools of trade", (e.g., small tools that can fit in a tool box). Tools of other professionals not listed in the above paragraph are considered taxable. These include dentist's drills and X-ray machines. Computers are also subject to the personal property tax, but in cases where they are utilized by a corporation for internal purposes only (e.g., for such functions as internal accounting or administrative operations), these computers are not subject to taxation.
<br />
 
<br /><strong>Tangible</strong> personal property subject to some other type of local tax is also exempt from the personal property tax. Motor vehicle and trailer excise, ship and boat excise, the farm animal and equipment excise, and mobile home park license fees are all included in this category. For example, boats, fishing gear and nets - up to $10,000 in value - owned and used in a commercial fishing business are exempt.
<br />
 
<br /><strong>Intangible</strong> personal property is exempt from the personal property tax. Intangible property includes stocks, bonds, cash, mortgages and other evidence of ownership of property rights. Property owned by Individuals, Sole Proprietors, Partnerships, and Trusts.
<br />
    
<br />
In general, all tangible personal property located in Massachusetts is taxable unless expressly exempt.
<br />
 
<br /><strong>Properties Owned by Business Corporations</strong><br />
For business corporations, poles, underground conduits, wires, pipes (property generally owned by utility companies) and machinery used in the conduct of business are taxable. Taxable examples of "machinery used in the conduct of business" would include property used on behalf of that corporation's customers (e. g., using computers and equipment to process data on behalf of clients).
<br />
 
<br />
Exempt examples of "machinery" would include property directly used in any purchasing, selling, accounting or administrative function; inventory or stock in trade; or personal property directly used in connection with laundering or dry-cleaning processes, the refrigeration of goods or the air conditioning of the premises.
<br />
 
<br /><strong>Manufacturing Corporations (Domestic and Foreign)</strong><br />
The Commissioner of Revenue for the Commonwealth determines what is a manufacturing corporation. Machinery of a manufacturing corporation (domestic or foreign) is not subject to personal property taxation; however, poles, underground conduits, wires and pipes of manufacturing corporations are taxable.
<br />
 
<br /><strong>All Other Business Corporations
<br /></strong>Other business corporations such as insurance companies, public service corporations, utilities, savings banks and cooperative banks are subject to taxation on poles, underground conduits, wires and pipes, as well as machinery used in the manufacture or in the supply or distribution of water.</p></dd></dl><dl class="faq"><dt>Where is Personal Property Assessed?</dt><dd class="hide" style="display:none;">Generally, all tangible personal property is assessed in the city or town in which the personal property is situated as of January 1. The principal exception is in situations where personal property has only a temporary location as of January 1. In the latter case, the property is assessed at the residence of the owner.</dd></dl><dl class="faq"><dt>What is the State Tax Form 2/Form of List?</dt><dd class="hide" style="display:none;"><p><span>Each year, prior to March 1, all persons subject to taxation in a city or town must submit a list of all their personal property that is not exempt from taxation. These personal estate items must be included on the document known as the State Tax Form 2/Form of List.</span></p><p><span> </span></p><p><span>The City of Boston Board of Assessors requires that this information be filed electronically unless doing so would prove an undue hardship.</span></p><p><span> </span></p><p><span>For those taxpayers who demonstrate such hardship, blank State Tax Form 2/Forms of List are available at the Assessing Department, Personal Property Unit, Room 301, Boston City Hall, Boston, MA 02201 or by calling (617) 635-1165.</span></p><p><span> </span></p><p><span>Taxpayers are not required to estimate the value of the property included on the State Tax Form 2/Form of List. The Assessing Department will determine the valuation, based on standard reference tables. In the event that a taxpayer does not submit the list, the assessor will ascertain as best he can the personal estate belonging to the taxpayer and will estimate its value.</span></p><p><span> </span></p><p><strong><span>NOTE: The State Tax Form 2/Form of List is NOT open to public inspection.</span></strong></p><p><span> </span></p><p><strong><span>Penalty</span></strong></p><p><span>There is a penalty for failing to file the State Tax Form 2/Form of List pursuant to Massachusetts General Laws c. 59, §64. A personal property taxpayer's application for abatement may not be granted unless the taxpayer can show good cause for failure to file timely. Further, if the assessment of the personal estate exceeds by 50% the amount which would have been assessed had the list been timely filed, then only the amount which exceeds this 50% may be abated.</span></p><p><span> </span></p><p><strong><span>Audits</span></strong></p><p><span>The Assessing Department has the authority to audit personal books, papers, records and other data in order to determine the accuracy of reporting. The assessors may assess taxes on unreported or inaccurately reported taxable personal property discovered by the audit within 3 years and 6 months of the date a return is due or filed, whichever is later.</span></p><p><span> </span></p><p><span>The Assessing Department has conducted over 1000 audits over the past six fiscal years.</span></p></dd></dl><dl class="faq"><dt>What if I miss the March 1 filing deadline?</dt><dd class="hide" style="display:none;"><p>Contact the Assessing Department’s Personal Property Unit as soon as possible at (617) 635-1165, or by e-mail at <a href="mailto:PersonalProperty@boston.gov">PersonalProperty@boston.gov</a>. The filing deadline may be extended if sufficient reason can be shown for not filing on time. Not filing subjects the business to the maximum penalties.</p></dd></dl><dl class="faq"><dt>I need to change my business personal property tax bill mailing address. How do I do that?</dt><dd class="hide" style="display:none;"><p>Fill out the following form:  <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9221", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Business Change of Tax Bill Mailing Address Form</a><br /></p><p><br /><strong>Information Requests</strong></p><p>The Assessing Department may require an owner or lessee of personal property to provide certain information in writing, as may be reasonably necessary, to determine the actual fair cash valuation of the property. Failure to comply with the request within thirty (30) days will bar any appeal of the tax assessed, unless the owner or lessee was unable to comply with the request for reasons beyond his or her control. Any false statement that is knowingly made will also bar the taxpayer from any statutory appeal.</p></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Property Identification</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is a Ward and Parcel?</dt><dd class="hide" style="display:none;">The ward and parcel is a unique identifier assigned to each individual property in the City of Boston. The ward number is the location of the property in each neighborhood of the City. (For example, Ward 01 represents East Boston). The parcel number is the identifying number of each individual property. (For example, 0001-000 would be a parcel number).</dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Property Taxes, Rates</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What are the fiscal year tax rates?</dt><dd class="hide" style="display:none;"><table class="dark-blue" width="100%" border="1"><tbody><tr><td style="TEXT-ALIGN: center" colspan="2"><strong>FY 2016 Tax Rate (per thousand dollars value)</strong></td></tr><tr><td>Residential</td><td>$11.00</td></tr><tr><td>Commercial, Industrial, Personal Property</td><td>$26.81</td></tr></tbody></table><br />
Each fiscal year the tax rate is applied to the 3rd Quarter tax bill.</dd></dl><dl class="faq"><dt>What are property taxes?</dt><dd class="hide" style="display:none;">The major source of revenue for the 351 cities and towns in Massachusetts is the property tax. The property tax is an "ad valorem" (based on value) tax. The tax is apportioned to individual properties based on the value of the property. In Massachusetts, estimates of value are called assessments. The assessment of a large number of parcels for property tax purposes constitutes a highly specialized field of appraisal. In Massachusetts, the property tax is assessed on real and personal property to the person who is owner on January 1.</dd></dl><dl class="faq"><dt>How is the tax rate determined?</dt><dd class="hide" style="display:none;"><p>The tax rate for residential property is determined by taking the residential share of the property tax levy (the amount of the total tax dollars to be paid by residential owners) and dividing that amount by the total assessed value of all residential properties. The same procedure is also used to determine the tax rate for commercial/industrial and personal property owners.</p><br /><p>Prior to the Classification Amendment of 1978, there was just one tax for all properties. Classification allows for the shifting of a portion of the tax burden of residential property onto commercial/industrial and personal property.</p></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Proposition 2½</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is Proposition 2½? How does it limit property taxes?</dt><dd class="hide" style="display:none;"><p>Proposition 2½ is the initiative petition adopted by voters of the Commonwealth of Massachusetts in 1980.
<br /><br />
Its principal features relate to the total amount of property taxes which a city or town can raise each year. Other parts of the initiative limit state agency assessments on cities and towns, prohibit unfunded state mandates, and repeal school committee fiscal autonomy and binding arbitration for certain public employees. In addition, it reduces the motor vehicle excise tax and allows renters a deduction on their state income tax.
<br /><br />
Proposition 2½ contains two limitations on the amount of property taxes a city or town can raise:</p><ul><li style="list-style: none"><br /></li><li>The property tax levy (the amount raised) can never exceed 2½% of the full cash value of all taxable property in the city or town. This is known as the 2½ levy ceiling.
<br /></li><li>The property tax levy cannot increase from year to year by more than 2½%, with certain exceptions for new growth, or through overrides and exclusions as adopted by the voters. This is known as the 2½ levy limit.
<br /></li></ul></dd></dl><dl class="faq"><dt>How does Proposition 2½ affect my tax bill?</dt><dd class="hide" style="display:none;">The levy limit provision of Proposition 2½ affects the total amount of taxes to be raised by a city or town. It does not apply to an individual tax bill.</dd></dl><dl class="faq"><dt>How does Classification work with Proposition 2½?</dt><dd class="hide" style="display:none;">The Classification amendment, allows cities and towns to categorize real estate into four classes and to distribute the tax burden among these classes. Proposition 2½ affects the total amount of tax that can be raised. Classification affects what classes of taxpayers will pay for what specific share of the total amount of tax.</dd></dl><dl class="faq"><dt>How does Proposition 2½ affect the tax rate?</dt><dd class="hide" style="display:none;">Proposition 2½ sets the maximum amount of property taxes (the levy) that a city/town can raise. Once the amount to be raised is determined, a tax rate is calculated by dividing the amount to be raised by the total valuation of the city/town. Whether the tax rate for a community will increase or decrease from the prior year will depend upon the levy decided and whether the property values appreciate, depreciate or remain steady in a particular community.</dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Real Estate Taxes, Tax Bills and Payments</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dd><h5>Tax Bills</h5></dd><dd><dl class="faq"><dt>What's the difference between the calendar year and the fiscal year?</dt><dd class="hide" style="display:none;"><p>The City of Boston operates on a Fiscal Year basis for tax billing purposes. The Calendar year is January 1 - December 31. The Fiscal Year is July 1 -June 30.</p><br /><p><strong>Fiscal Year 2017 runs from July 1, 2016 - June 30, 2017.</strong></p></dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>When are real property tax bills mailed and payments due?</dt><dd class="hide" style="display:none;"><p>The City of Boston employs a Quarterly tax billing system. Tax bills are mailed four times a year:</p><br /><p>1st Quarter - July 1st
<br />
2nd Quarter - October 1st
<br />
3rd Quarter - January 1st
<br />
4th quarter - April 1st.</p><br /><p>The bills are sent thirty (30) days prior to the dates they are due. The quarterly tax payments are due thirty days from the date the tax bill is issued on the following dates:</p><br /><p>August 1st
<br />
November 1st
<br />
February 1st
<br />
May 1st</p><br /><strong><em>NOTE: if the 1st of the month falls on a weekend, taxes and abatement applications are due the first Monday immediately following the 1st.
<br /><br /></em></strong> If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5:00 p.m., Monday through Friday.</dd></dl><dl class="faq"><dt>What happens if I do not pay my tax bill?</dt><dd class="hide" style="display:none;">Tax payments must be received on or before the due date to avoid interest charges. If payment is not made within 30 days of the original date of mailing, the account will begin to accrue interest at the rate of 14% per annum, computed from the date the bill was due.
<br /><br />
In addition, a demand notice will be sent and a demand fee of $5.00 is charged against the account. If the account remains outstanding 14 days after the issuance of the demand notice, a warrant notice is sent. The warrant fee is $12.00.
<br /><br />
Please note that demand and warrant notices are sent only on the third and fourth quarter bills.
<br /><br />
If the account remains delinquent after June 30th of the fiscal year, a tax lien (a legal claim placed on property for debt) is placed on the property and is recorded with the Suffolk County Registry of Deeds. In addition, the property is placed in the tax title system. A tax lien is the first step in the foreclosure process. All taxes, costs and interest must be paid to prevent foreclosure.
<br /><br />
If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5:00 p.m., Monday through Friday.
<br /></dd></dl><dl class="faq"><dt>I did not receive my tax bill? How do I request a copy of my tax bill?</dt><dd class="hide" style="display:none;">You may request a duplicate tax bill via the Assessing <a href="http://www.cityofboston.gov/assessing/contactform.asp"><font color="#0033CC">Contact Form</font></a> or calling the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287. Have your ward and parcel number on hand when you call. Duplicate tax bills are sent via regular mail only or may be picked up in person at the TRAC office
<br /></dd></dl><dl class="faq"><dt>What should I do if I recently sold my property, but I am still receiving a tax bill?</dt><dd class="hide" style="display:none;">If you receive a bill, please forward it to the new owner immediately as it is his/her responsibility to make payment.</dd></dl><dl class="faq"><dt>How do I change my tax bill mailing address?</dt><dd class="hide" style="display:none;"><p>If you have a new address and want your bill mailed there permanently, you can use the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9227", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Real Estate Change of Tax Bill Mailing Address Form</a> or call the TRAC office at 617-635-4287 to request a form.  Fill out the form and return it directly to Assessing Tax Data Administration, Room 301, Boston City Hall, Boston, MA 02201.
<br /></p></dd></dl><dl class="faq"><dt>Who is responsible for the taxes if a property is sold after January 1?</dt><dd class="hide" style="display:none;">Although the tax bill will bear the name of the assessed owner as of January 1, the new owner is responsible for all taxes once the sale of the property is finalized. The amount of tax owed by the old owner is determined at the time of closing and is typically deducted from the selling price. Once this deduction is made, the new owner must pay all bills, as they become due in order to avoid collection actions, including foreclosure. The lawyers assisting each party should already have investigated any outstanding taxes and obtained a Municipal Lien Certificate. Once the agreement is made, the new owner is obligated to pay any outstanding taxes due on the property.
<br /></dd></dl><dl class="faq"><dt>How can I change the tax bill to my name, after purchasing a parcel of property?</dt><dd class="hide" style="display:none;">New owners at the time of recording your deed should be sure to fill out the Assessing Department card, "Mail Address Change Form" given to you with the Municipal Lien Certificate.
<br /><br /><strong>NOTE:</strong> You should NOT use a change of address form to change the name on a tax bill, nor should you attempt to inform us of a change by sending a tax bill with the previous owner's name crossed out and the new owners name written in.
<br /><br />
The Collecting Division is required by Massachusetts General Law to bill the assessed owner as of January 1, and must issue the bill of the same fiscal year (July 1 to June 30) to the owner as of January 1.
<br /><br />
The name will change automatically on the next fiscal year bill. If, after the passage of time, the name still is not changed on the bill, please contact Assessing Department Tax Data Administration unit at (617) 635-3783.
<br /><br />
You can change your tax bill mailing address however. Print out the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-7610", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Property Tax Bill Change of Mailing Address Form</a>, complete the form and send it directly to Assessing Tax Data Administration, Room 301, Boston City Hall, Boston, MA 02201. Or, you can call the TRAC and request the form at (617) 635-4287.
<br /></dd></dl><dl class="faq"><dt>Why am I receiving 2 tax bills this year - 1 for my condo unit and 1 for my parking space - when I only received one tax bill for both the condo unit and parking last year?</dt><dd class="hide" style="display:none;">As part of the Assessing Department's commitment to maintaining accurate, consistent and up-to-date property data throughout the city, it may be determined that the parking associated with a condo unit should be billed separately. As such, a condo owner may begin receiving two bills - one for the condo unit (listed as Class: CD) and one for the condo parking space (listed as Class: CP) - when they received only one bill for both components in the past. In such a case, the parking space property value that was previously included in the value of the condo is removed and forms the basis of the new parking space tax bill. Both bills will require payment, since they collectively represent the value of the unit and its parking.</dd></dl><dd><h5>Tax Payments</h5></dd><dd><dl class="faq"><dt>How can I obtain tax bill payments information?</dt><dd class="hide" style="display:none;"><p>Go to <a href="http://www.cityofboston.gov/assessing/search"><font color="#0033CC">Assessing–On-line</font></a> on the menu. Complete the input screen for the particular property you are searching for. When you have accessed the property screen click on <strong>Tax Payments</strong>.</p></dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>Why should I pay interest on a late payment when I never received my tax bill?</dt><dd class="hide" style="display:none;">Under state law, failure to receive a bill does not affect the validity of the tax or any interest or fines incurred due to late payment(s).
<br /><br />
It is the responsibility of the taxpayer to secure his/her tax bill when one is not received. You can request a Duplicate Tax Bill via the Assessing <a href="http://www.cityofboston.gov/assessing/contactform.asp"><font color="#0033CC">Contact Form</font></a> or by calling the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 to request the bill. Actual duplicate tax bills are sent via regular mail only or may be picked up in person at the TRAC Office. The TRAC Office will mail you a duplicate bill on request. However, the request must be received early enough to allow sufficient time to avoid late charges.
<br /></dd></dl><dl class="faq"><dt>What happens if the check I mail is returned due to insufficient funds, or signature?</dt><dd class="hide" style="display:none;">If your check is returned due to insufficient funds, absence of signature, the account will have the same status as an 'unpaid' account. It is the Collecting Division's policy not to redeposit checks. The Collecting Division's Teller Operations makes every effort to notify via first class mail. Also, you should receive notice from your bank of the bad check and your bank statement will reflect that the check has not been cashed.
<br /><br />
As provided by law, a penalty charge of $25.00 or if check is greater than $2,500.00, 1% of the amount of the check (whichever is greater) will be assessed to your tax account for each bad check received, in addition to any other fees and interest applicable. You should, therefore, mail or submit in person a replacement certified or registered check.
<br /><br />
If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5p.m., Monday through Friday.
<br /></dd></dl><dl class="faq"><dt>What happens when a tax bill is paid, but you receive a demand notice for tax not paid or, you find out that you overpaid?</dt><dd class="hide" style="display:none;"><strong>Proof of Payment
<br /></strong> The Collecting Division proof of payment policy is based on guidelines issued by independent auditors. Any request for an adjustment in payment, such as a transfer of funds or a refund, must meet the following requirements:
<br /><br />
Request must be in writing.
<br /><br />
Photocopies of the front and back of the canceled check(s) applied to the account or original receipts of all payments applied to the account (or any combination of the two) must be submitted.
<br /><br />
If one check was issued to pay more than one account, (as many banks and mortgage companies usually do) in addition to the photocopy of the front and back of the canceled check(s) used to pay the account, you must provide a list of all the ward and parcel numbers which said check was to pay.
<br /><br />
For payments made by money order, a photocopy of the original money order, not the "non-negotiable consumer's copy: ' is required.
<br /><br /><strong>On receipt of the written request and submission of complete documentation, our research staff examines the information verifying such with our records.
<br /><br /></strong> If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5:00 p.m., Monday through Friday.
<br /></dd></dl><dd><h5>Tax Payments</h5></dd><dd><dl class="faq"><dt>Can I pay my real estate tax bill online?</dt><dd class="hide" style="display:none;"><p>Yes, The City of Boston has a new property tax online-bill payments program. You can pay property tax bills online using direct debit from your checking or savings account.
<br /></p><p><a href="http://www.cityofboston.gov/realestate/default.asp"><font color="#0033CC">Pay Online</font></a><br /><br /><strong>Note</strong>: Online payment services are closed daily from 11PM to midnight. For questions regarding tax bill payments Contact the Collector's office at (617) 635-4136
<br /></p></dd></dl><dl class="faq"><dt>Can I pay my real estate tax bill in person?</dt><dd class="hide" style="display:none;">Yes, the City of Boston's Collecting Division is located on the Mezzanine Level at window 31 (M-31), and is open Monday-Friday 9:00-5:00 pm.</dd></dl></dd><dd><h5>Tax Payment Records</h5></dd><dd><dl class="faq"><dt>How do I obtain PRIOR fiscal year taxes owed information?</dt><dd class="hide" style="display:none;">Call the Collector's office at (617) 635-4131 or 4132.</dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>How do I obtain CURRENT fiscal year taxes owed information?</dt><dd class="hide" style="display:none;">Call the Taxpayer Referral & Assistance Center at (617) 635-4287.</dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Residential Exemption </h2><p><p xmlns="http://www.w3.org/1999/xhtml">Since 1983, the City of Boston has offered a residential exemption to homeowners that occupy their property as the principal residence.</p><p xmlns="http://www.w3.org/1999/xhtml"><br />
Taxpayers who own and occupy their home can save on their tax bill by having a portion of their tax bill exempted from taxation. To qualify for the residential exemption, homeowners must own and occupy their home on January 1 preceding the start of the fiscal year.
<br /><br />
The value of the exemption is subtracted from the total full valuation. The fiscal year residential exemption is 30% of the average value of all residential property in the City.</p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is the Residential Exemption?</dt><dd class="hide" style="display:none;"><p>The City of Boston offers a residential exemption to property that serves as a property owner's principal residence. To be eligible, the owner must occupy the property as their principal residence on January 1 preceding the fiscal year for which they are applying. A fiscal year runs from July 1st to the following June 30th.</p><p><strong><br />
Examples:</strong></p><p><br />
Fiscal Year 2017 (July 1, 2016 - June 30th, 2017): To be eligible for the residential exemption, the property owner must have owned and occupied their property on January 1, 2016.
<br /></p><br /><p>Fiscal Year 2018 (July 1, 2017 - June 30, 2018): To be eligible for the residential exemption, the owner must have owned and occupied their property on January 1, 2017.</p><p><br />
The residential exemption is applied to the Fiscal Year Third Quarter tax bill that is issued in late December.
<br /></p><br /><p><em>Taxpayers who have received a residential exemption for any given fiscal year are sent a renewal application the following fall for the next fiscal year.</em></p></dd></dl><dl class="faq"><dt>Who Can Apply?</dt><dd class="hide" style="display:none;"><p>A taxpayer who owns and occupies residential property as their principal residence as of January 1 may apply for the residential exemption.
<br /><br />
For the purpose of this exemption, <strong>the principal residence is the address from which your Massachusetts income tax return is filed.</strong> To verify eligibility, your Social Security Number is required for identification purposes. The information will be kept confidential and be used solely to confirm a personal income tax filing from your address with the Commonwealth of MA Department of Revenue.
<br /><br />
An individual owner may qualify for a residential exemption on <strong>ONE</strong> parcel only.</p><br /><p>For details and requirements: See <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53613", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Residential Exemption</a>.</p></dd></dl><dl class="faq"><dt>When must an application be filed?</dt><dd class="hide" style="display:none;"><p>The Residential Exemption appears on the Fiscal Year 3rd Quarter tax bill. Owners who do not receive a credit on this bill - and believe they may be entitled to a Residential Exemption - must file an application for a Residential Exemption with the Assessing Department by April 3 of the tax year.
<br /></p><p>The filing deadline: See the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53613", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Residential Exemption</a>.</p></dd></dl><dl class="faq"><dt>How do I apply?</dt><dd class="hide" style="display:none;"><p>Application forms are available at the Assessing Department, Room 301, City Hall or at the Taxpayer Referral & Assistance Center (TRAC), Rm M5, City Hall. The TRAC (617-635-4287) is open Monday through Friday from 9am - 5pm.</p><br /><p>You may also apply online for the residential exemption beginning on January 1st of the tax year until the filing deadline. To access the form for your property, go to <a href="http://www.cityofboston.gov/assessing/search/" title="Assessing Online">Assessing Online</a> and enter identifying information such as parcel ID, last name, or street address in the search box. Click on "Details" among the search results associated with your property. On the property summary screen, click on the link to "file a Residential Exemption Application for FY2017". If a residential exemption has already been granted for the given tax year then this will be noted in the "Abatements/Exemption" section. Please note that applicants must print out their online residential exemption application and return it to the Assessing Department, Room 301, City Hall OR to the Taxpayer Referral & Assistance Center (TRAC), mezzanine level, City Hall by April 3, 2017.</p><p>Or you can visit the City Hall to Go Truck in Your Neighborhood
<br /><a href="http://siteedit/cityhalltogo">View Schedule</a></p></dd></dl><dl class="faq"><dt>May other exemptions apply?</dt><dd class="hide" style="display:none;"><p>The Residential Exemption is granted in addition to any other personal exemption to which a taxpayer may be entitled. However, no parcel of real estate may be assessed for less than ten percent (10%) of its fair cash value. There is an exception for certain persons with physical infirmities and financial hardship.</p></dd></dl><dl class="faq"><dt>What is the Residential Exemption Review Process? </dt><dd class="hide" style="display:none;"><p>The Taxpayer Referral & Assistance Center (TRAC) has three (3) months from the date on which the application was filed to determine the merits of the application.
<br /><br />
The filing of an application does not mean that you can postpone the payment of your tax. The tax appearing on each of the quarterly tax bills must be paid in full. If the application for Residential Exemption is subsequently approved, the Office of the Collector-Treasurer will issue a refund.</p></dd></dl><dl class="faq"><dt>How is the value of the exemption calculated?</dt><dd class="hide" style="display:none;">A residential exemption is the dollar value that is exempt from taxation. Homeowners who qualify benefit by having a portion of their property value exempt from taxation. If, for example, the residential exemption value were $95,000, a home with an assessed value of $295,000 would be taxed on just $200,000 of value. This exemption value, when multiplied by the current residential tax rate, represents the dollar savings amount of the exemption.</dd></dl><dl class="faq"><dt>Compliance with Requirements</dt><dd class="hide" style="display:none;">The Assessing Department conducts periodic reviews to ensure that only those owners who actually occupy their property as their principal residence receive the exemption. Owners who do not comply with the requirements of the residential exemption - or who fail to respond to requests for documentation - will lose the exemption benefit.
<br /></dd></dl><dl class="faq"><dt>Appeal of Decision</dt><dd class="hide" style="display:none;">If the application is denied, the taxpayer may file an appeal to the Commonwealth of Massachusetts Appellate Tax Board (ATB) within three (3) months of the date on which the TRAC made its decision. The ATB is located at 100 Cambridge Street, 2nd floor Suite 200, Boston, MA 02114. The telephone number is (617) 727-3100.</dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Statutory Exemptions</h2><p>An exemption from local taxation is a privilege allowed by the state legislature. It releases a property owner from the obligation to pay all or a portion of the taxes assessed on property. The law places the burden of establishing entitlement to an exemption upon the person or organization seeking an exemption.</p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is the charitable exemption?</dt><dd class="hide" style="display:none;"><p>Massachusetts law provides for an exemption from local property taxes on certain personal and real property of qualifying charitable organizations. Not all charitable organizations will qualify for this exemption, and not all real estate of qualified organizations will be eligible for exemption. The term "charitable" is defined in M.G.L. Chapter 59, Section 5, Clause Third, and is further defined in the many Massachusetts court opinions that have been published with respect to this exemption.</p></dd></dl><dl class="faq"><dt>What is the religious organization exemption?</dt><dd class="hide" style="display:none;"><p>Massachusetts law provides for an exemption from local property taxes for houses of worship and parsonages that are owned by or held in irrevocable trust for the exclusive benefit of a religious organization (M.G.L. Chapter 59, Section 5, Clause Eleventh). The exemption cannot be extended to any portion of a house of worship that is used for other than religious worship or instruction. The house of worship must be owned and occupied as such on July 1 of the tax year.</p></dd></dl><dl class="faq"><dt>How Do I Apply for a Statutory Exemption?</dt><dd class="hide" style="display:none;"><p>Organizations seeking a tax exemption from real estate taxes or personal property taxes must file for the exemption with the City of Boston’s Assessing Department. This is the case even if the organization already has tax-exempt status with the State. There are a number of basic requirements that must be met before an organization should consider applying for a statutory exemption. Click <a href="http://www.cityofboston.gov/assessing/Exemptions/chariexemp.asp">here</a> for the Assessing Department’s Statutory Exemption page.</p><br /><p>An applying organization must have owned and occupied the property at issue in a manner consistent with their exempt mission as of July 1 of the tax year. Any organization that owns and occupies a property after that date may be eligible for a tax exemption in the following tax year.</p><br /><p>If the basic requirements above are met, the organization may file for exemption. There are two ways an organization can file for consideration for exemption: 1) the Preliminary Consideration Procedure, or 2) the Standard Abatement Procedure.</p><br /><p><strong>Preliminary Consideration</strong> can be pursued prior to the issuance of the third quarter tax bill. Applications are generally made available in April preceding the start of the fiscal year and must be filed generally no later than August 1. By way of example, an organization seeking exemption consideration for fiscal year 2017 would be able to seek a Preliminary Consideration Application between April and August 1 of calendar year 2016.</p><br /><p>The <strong>Standard Abatement Procedure</strong> is available beginning with the issuance of the third quarter tax bill and ending with the last date of payment for that period. By way of example, an organization seeking exemption consideration for fiscal year 2017 will be able to obtain an application once the third quarter tax bill has been issued in January 2017. Applications for abatement must be filed no later than the last date of payment for the third quarter bill.</p></dd></dl><dl class="faq"><dt>What is the deadline to file a Preliminary Consideration Requisition Form for statutory exemption? </dt><dd class="hide" style="display:none;"><p>Forms are generally made available in April preceding the start of fiscal year and must be filed generally no later than July 31. For fiscal year 2017, the Preliminary Consideration Requisition Form will be available in April and will be due no later than August 1, 2016.</p></dd></dl><dl class="faq"><dt>What is the deadline to file a department-approved application for abatement?</dt><dd class="hide" style="display:none;">Abatement applications are available beginning with the issuance of the third quarter tax bill and ending with the last date of payment for that period.</dd></dl><dl class="faq"><dt>Should my organization pay any real estate tax bills issued during the statutory exemption application process?</dt><dd class="hide" style="display:none;">Yes. Filing a department-approved abatement application does not permit an organization to postpone the payment of the tax. If the total tax on real estate is more than three thousand dollars ($3,000), the tax generally must be paid on time to preserve the organization's appeal rights. Please refer to <a href="http://www.malegislature.gov/Laws/GeneralLaws/PartI/TitleIX/Chapter59/Section64" target="_blank">M.G.L. Chapter 59, Section 64</a>, for more information.</dd></dl><dl class="faq"><dt>If approved for a statutory exemption, how will my organization receive reimbursement for the payment of tax bills?</dt><dd class="hide" style="display:none;"><p>If approved for a statutory exemption by filing for Preliminary Consideration, the exemption should be reflected on the third quarter tax bill. Organizations may need to contact the Collector-Treasurer at (617) 635-4131 in order to obtain a refund for any taxes paid for the fiscal year at issue.</p><br /><p>If approved for a statutory exemption by filing an abatement application, the reimbursement will be issued as either a credit on the fourth quarter tax bill or as a refund check depending on the timing of the approval. Organizations should refer to the abatement application approval notice for more information.</p></dd></dl><dl class="faq"><dt>What are the filing requirements for the Form 3ABC?</dt><dd class="hide" style="display:none;"><p>Organizations and trusts owning real or personal property on January 1 preceding the fiscal year must file a <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21813", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" target="_blank" >Form 3ABC</a> Return of Property Held for Charitable and Other Purposes. The Form 3ABC is a state tax form that <strong>must</strong> be filed on an annual basis by March 1 preceding the start of the fiscal year. If the form is not filed in a timely manner in a given year, the organization’s tax exemption may not be granted.</p><br /><p>Fraternal and veteran organizations are not required by law to file the Form 3ABC. Religious organizations are not required to file the Form 3ABC <em>unless</em> the organization owns tax-exempt property that is used for a purpose other than as a house of worship or as a parsonage.</p><br /><p><em>NOTE:</em> The 3ABC requirement applies to all organizations seeking the benefit of a statutory exemption, including new applicants as well as previously exempt properties. The form can be obtained online or at the following address:
<br /><br />
Hobbs & Warren, Inc.
<br />
11 Beacon Street
<br />
Boston, MA 02108
<br />
(617) 523-2282</p></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Tax Deferral for Elderly</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What are the requirements for Tax Deferral?</dt><dd class="hide" style="display:none;"><p>The following conditions are required:</p><ul><li style="LIST-STYLE-TYPE: none"><br /></li><li><p>Reached the age of 65 as of July 1 of the tax year</p></li><li><p>Owned and occupied the property for at least five (5) years as of July 1 of the tax year</p></li><li><p>Resided in Massachusetts for at least ten (10) years</p></li><li><p>A gross income not exceeding $57,000 for Fiscal Year 2016</p></li></ul></dd></dl><dl class="faq"><dt>How long can I defer my taxes?</dt><dd class="hide" style="display:none;">Taxes may be deferred annually until the taxes are due, including accrued interest, equal 50% of the then assessed value of the property.</dd></dl><dl class="faq"><dt>When must the deferred taxes be repaid?</dt><dd class="hide" style="display:none;">The deferred taxes must be repaid when the property is sold, transferred or upon the demise of the owner.</dd></dl><dl class="faq"><dt>When/where do I file?</dt><dd class="hide" style="display:none;">Applications may be filed with the Assessing Department, Room 301, City Hall by April 1 of the tax year.
<br /><br />
For Fiscal Year 2017, the filing period deadline is <strong>April 3, 2017</strong>.</dd></dl><dl class="faq"><dt>I started deferring my taxes prior to fiscal year 2008, and was paying at an 8% interest rate. How can I get the new 4% interest rate?</dt><dd class="hide" style="display:none;">Seniors who may have previously deferred their taxes at the higher rate have had any new taxes deferred at 4%. However, previously deferred taxes will remain at 8%.</dd></dl><dl class="faq"><dt>If enrolled in the deferral program, can I still receive other exemptions (i.e elderly, veterans, blind, residential, etc.)?</dt><dd class="hide" style="display:none;">Yes, you may be enrolled in the deferral program and also receive other exemptions.</dd></dl><dl class="faq"><dt>For more information or how to apply:</dt><dd class="hide" style="display:none;"><p>For further information or to see if you qualify, contact the Assessing Department's Taxpayer Referral & Assistance Center (TRAC) at 617-635-4287 or visit the TRAC office in City Hall on the Mezzanine level. Office hours are Monday - Friday, 9AM - 5PM.</p><br /><p>For details and requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53614", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2017 Tax Deferral 41A</a>.</p></dd></dl></dd></dl></div><div id="content_main_hd"><div><h2>Residential Property Field Inspections</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>Who are the Assessors and whom do they reprensent?</dt><dd class="hide" style="display:none;"><p>The Assessing Department is responsible for accurately determining the value of all real and personal property located within the City of Boston for the purpose of taxation. Assessors are obliged to assess all property at its full and fair market value as of January 1 of each year. The department is responsible for the administration of all property tax data records and maintains accurate parcel ownership data based upon recorded property transactions at the Registry of Deeds.</p><br /><p>A City Assessor is a person who calculates or estimates the value of real and/or personal property, chiefly for tax purposes. Assessors sent from the City of Boston represent the Boston Assessing Department, Room 301 City Hall.</p><br /><p>You can request to see the Assessors City-issued ID as well as request their business card.</p></dd></dl><dl class="faq"><dt>What is the purpose of your visit?</dt><dd class="hide" style="display:none;"><p>Assessors are to assess the actual value of your home. They may ask property related questions or request a “walk through”, or do an outside estimation to fairly estimate the value of the property.
<br /></p></dd></dl><dl class="faq"><dt>Why is this visit necessary?</dt><dd class="hide" style="display:none;"><p>Without this information, the City Assessing Department will establish its own estimation of value based on data in our files. In efforts to fairly value the property, assessors will visit properties to properly value the property.</p></dd></dl><dl class="faq"><dt>Can I say “no” to entry into my home?</dt><dd class="hide" style="display:none;">You can say no to the request of the assessor to enter your home if an inspection was not previously set with the assessor. In this event, the assessor may request to take measurements of the outside of the home for property assessment purposes.</dd></dl><dl class="faq"><dt>Why are you doing this?</dt><dd class="hide" style="display:none;"><p>Current property conditions and valuations are constantly changing. In effort to fairly value all properties, assessors will review properties to maintain accurate valuations. Your home has not been singled out for assessment. The Assessing Department is responsible for accurate assessments of all properties in Boston. Field inspections are part of the assessment process.</p></dd></dl><dl class="faq"><dt>What are common questions I should expect from the Assessor?</dt><dd class="hide" style="display:none;">- How many bedrooms are in the property
<br />
- How many bathrooms are in the property? What type (full/half)?
<br />
- Have you done any remodeling/renovations to your home?
<br />
- Do you have central air conditioning in your home?
<br />
- Do you have a basement and is it finished?
<br />
- It there any major damage to the interior of your home?
<br />
- Is this your primary residence (for residential exemption purposes)?
<br />
- What would you say is the overall condition of the interior of your home?</dd></dl><dl class="faq"><dt>What type of questions WILL NOT be asked?</dt><dd class="hide" style="display:none;">- Personal Information
<br />
- Immigration Status
<br />
- Mortgage/Loan Default Status
<br />
- Social security number
<br />
- Credit Card information</dd></dl><dl class="faq"><dt>Who can I call to learn more?</dt><dd class="hide" style="display:none;">You may contact the City of Boston Assessing Information Desk at (617) 635-4321 to speak with a representative and be connected to an Assessor.</dd></dl></dd></dl></div>

<div class='SegmentHolder'>

                  
</div>



</div><!-- Close #content_main_inner -->
</div><!-- Close #content_main  -->
                 

	<div id="nav_sub">



<!--    Start OnLine Service component    -->






			<!--    Start Left Navigation    -->
			<%
			  'Dim objXML, objXSL, xslTemplate, xslProc, paramVal1, paramVal2
			
			  set objXML = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")
			  objXML.async = false
			  objXML.load(Server.MapPath("/system/xml/navigation.xml"))
			
			  set objXSL = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")
			  objXSL.async = false
			  objXSL.load(Server.MapPath("/system/xslt/left.xslt"))
			
			  set xslTemplate = Server.CreateObject("MSXML2.XSLTemplate")
			  xslTemplate.stylesheet = objXSL
			  set xslProc = xslTemplate.createProcessor()
			
			  paramVal1 = "tcm:3-15888-64"
			  if paramVal1 <> "" then
				xslProc.addParameter "currentPage", paramVal1
			  end if
			  
			  paramVal2 = "default"
			  if paramVal2 <> "" then
				xslProc.addParameter "ifCSS", paramVal2
			  end if
			
			  xslProc.input = objXML
			  xslProc.transform()
			  Response.Write(xslProc.output)
			%><!--    End Left Navigation    -->

		  
    
    <ul>
        <li><strong>Contact Us</strong></li>
        			
          	
                <li><a href="http://www.cityofboston.gov/contact/?id=78">Assessing Department</a></li>
             

            
        			
          	
                <li><a href="/assessing/contacts.asp">Assessing Department's Division Contacts</a></li>
             

            
        			
          	
                <li><a href="/assessing/humanresources.asp">Assessing Jobs & Careers</a></li>
             

            
        			
          	
                <li><a href="/contact/directions.asp">City Hall Hours & Directions</a></li>
             

            
        			
          	
                <li><a href="/311">311 Services</a></li>
             

            
        
    </ul>    
    
	
	<ul class="default_form">
	<li><strong>City Departments</strong></li>
		<!--    Start Department component    -->
		<%
		  'Dim objXML, objXSL, xslTemplate, xslProc, paramVal1, paramVal2
		
		  set objXML = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")
		  objXML.async = false
		  objXML.load(Server.MapPath("/system/xml/navigation.xml"))
		
		  set objXSL = Server.CreateObject("MSXML2.FreeThreadedDOMDocument")
		  objXSL.async = false
		  objXSL.load(Server.MapPath("/system/xslt/drop.xslt"))
		
		  set xslTemplate = Server.CreateObject("MSXML2.XSLTemplate")
		  xslTemplate.stylesheet = objXSL
		  set xslProc = xslTemplate.createProcessor()
		
		 'paramVal1 = "tcm:3-15888-64" 
		  'if paramVal1 <> "" then
		  '  xslProc.addParameter "currentPage", paramVal1
		  'end if
		
		  xslProc.input = objXML
		  xslProc.transform()
		  Response.Write(xslProc.output)
		%><!--    End Department component    -->
    </ul>      
    

</div><!-- Close #nav_sub -->

<div id="content_sub">
	<div id="search">
      <form method="get" name="searchform" action="http://search.cityofboston.gov/search">
<input type="hidden" name="site" value="All_Cityofboston"/>
          <input type="hidden" name="client" value="cob_frontend"/>
          <input type="hidden" name="proxystylesheet" value="cob_frontend"/>
          <input type="hidden" name="output" value="xml_no_dtd"/>
          <input type="hidden" name="partialfields" value=""/>
          <label for="searchField">Search:</label>
          <input type="text" name="q" size="15" id="searchField"/> 
          <input type="submit" class="button" value="Go!" />
      </form>
	</div><!-- Close #search -->



	<h2 class="header">Taxpayer Information</h2>


<ul>


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-52534", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-52534" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-52534" tridion:type="Multimedia" tridion:targetattribute="href">2013-2014 Residential Sales by Type</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16243", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16243" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16243" tridion:type="Multimedia" tridion:targetattribute="href">Assessing Calendar</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16993", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href">Guide to Application Dates for Abatements, Exemptions and Deferrals</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-17014", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-17014" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-17014" tridion:type="Multimedia" tridion:targetattribute="href">Glossary of Assessing Terms</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8867", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8867" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8867" tridion:type="Multimedia" tridion:targetattribute="href">Boston Land Use Codes</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8893", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8893" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8893" tridion:type="Multimedia" tridion:targetattribute="href">Public Access to Copies of Tax Records</a></li>
                                                                


</ul>
     
</div><!-- Close #content_sub -->
<div id="content_sub_footer"></div><!-- This adds the bottom border to the bottom of #content_sub -->
</div></div><!-- Close #bd and #bd_inner -->
<div id="nav_sub_footer"><!-- This adds the bottom border and addition links to the bottom of #nav_sub -->
	<ul>
      			
          				
                                                                        <li><a href="http://www.cityofboston.gov/contact">Contact Info</a></li>
                                                                

                                                                
      			
          				
                                                                        <li><a href="/alerts/">Email Alert</a></li>
                                                                

                                                                
      			
          				
                                                                        <li><a href="/copyright/troubleopeningfiles.asp">Trouble Opening Files</a></li>
                                                                

                                                                
      
	</ul>
</div><!-- Close #nav_sub_footer -->
</div><!-- Close #bd_wrapper -->
<div id="ft_wrapper"><div id="ft">
      <ul>
          			
          				
                                                                        <li><a href="http://www.cityofboston.gov/copyright/privacyandsecurity.asp">Privacy & Security</a></li>
                                                                

                                                                
          
          <li><a href="/copyright/default.asp">&#169; 2014 City of Boston. All rights reserved.</a><a href=""></a></li>
      </ul>
</div><!-- Close #ft -->
</div><!-- Close #ft_wrapper -->


</div><!-- Close #page_wrapper_inner -->
</div><!-- Close #page_wrapper -->
</div><!-- Close #home -->



</body>
</html>