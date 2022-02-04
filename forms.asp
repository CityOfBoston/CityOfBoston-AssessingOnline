<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Assessing Forms | City of Boston</title>
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
        
          paramVal1 = "tcm:3-6032-64"
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
<div id="content_main_hd"><div><h2>Assessing Forms</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dd><h5>Boats</h5></dd><dd><dl class="faq"><dt>Boat Excise Tax Abatement</dt><dd class="hide" style="display:none;">Anyone who owns and moors his/her boat in Boston is required to pay an excise tax bill. If you have sold, traded your boat, had it stolen, declared a loss or junked, or have moved your boat out of Boston or out of Massachusetts, you can apply for an abatement of a portion of boat excise tax. <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9220", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boat Excise Tax Abatement Form</a>.</dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>Boat Mooring Permit Application</dt><dd class="hide" style="display:none;">Per Massachusetts General Law (<a href="http://www.amlegal.com/nxt/gateway.dll/Massachusetts/boston/chapterxviprohibitionspenaltiesandpermit?f=templates$fn=default.htm$3.0$vid=amlegal:boston_ma$anc=LPTOC51" target="_blank">City of Boston Code, Chapter 16 Section 48</a>), boats are <strong>not allowed</strong> to moor or dock in Boston waters without first obtaining a <a href="http://www.cityofboston.gov/payments/mooringpermit.asp" title="permit">permit</a> from the City. This permit must be displayed on the port side of the boat, near the transom.</dd></dl><dd><h5>Exempt Organizations</h5></dd><dd><dl class="faq"><dt>FY 2016 Statutory Exemption Information Requisition</dt><dd class="hide" style="display:none;">Massachusetts law provides for an exemption from local property taxes for certain qualifying organizations. This requisition form accompanies the FY 2016 abatement application based upon Statutory Exemption. Abatement applications must be filed by the third quarter payment deadline. Applicants will then have thirty (30) days from the date on which the abatement application was filed to complete and file the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-52758", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >FY 2016 Statutory Exemption Infomation Requisition Form</a>.</dd></dl><dl class="faq"><dt>FY 2017 Preliminary Consideration Information Requisition Application</dt><dd class="hide" style="display:none;"><p>Organizations seeking exemption from local property taxes in advance of the issuance of the fiscal year 2017 tax bill can file a <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-53214", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Preliminary Consideration Information Requisition Form</a>. Forms will be available in April 2016 and are due no later than August 1, 2016.</p></dd></dl><dl class="faq"><dt>Form 3ABC</dt><dd class="hide" style="display:none;"><p>Organizations and trusts owning real or personal property on January 1 preceding the fiscal year must file a <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21813", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Form 3ABC</a> Return of Property Held for Charitable and Other Purposes. The Form 3ABC is a state tax form that must be filed on an annual basis by March 1 preceding the start of the fiscal year. If the form is not filed in a timely manner in a given year, the organization's tax exemption may not be granted.</p><br /><p>Fraternal and veteran organizations are not required by law to file the Form 3ABC. Religious organizations are not required to file the Form 3ABC unless the organization owns tax-exempt property that is used for a purpose other than as a house of worship or as a parsonage.</p><br /><p><em>NOTE:</em> The 3ABC requirement applies to all organizations seeking the benefit of a statutory exemption, including new applicants as well as previously exempt properties. Click here for the Form 3ABC. The form can also be obtained at:
<br /><br />
Hobbs & Warren, Inc
<br />
11 Beacon Street
<br />
Boston, MA 02108
<br />
(617) 523-2282</p></dd></dl></dd><dd><h5>Personal Exemption (Blind, Elderly, Surviving Spouse, Veteran, etc)</h5></dd><dd><dl class="faq"><dt>FY 2017 Application for Personal Exemption</dt><dd class="hide" style="display:none;"><p>An exemption is a release from the obligation of having to pay taxes on all or a part of a parcel of real property. Personal exemptions are a reduction in taxes due to a particular personal circumstance (Blind, Surviving spouse, Minor child of deceased parent, Elderly, Disabled Veteran etc.). The personal exemption application for FY 2017 is available online until April 3, 2017 ONLY. Property owners who wish to file for a personal exemption should follow the instructions on the <a href="http://www.cityofboston.gov/assessing/search/">Assessing Online</a> page.</p></dd></dl></dd><dd><h5>Personal Property</h5></dd><dd><dl class="faq"><dt>Fiscal Year 2017 Application for Personal Property Abatement</dt><dd class="hide" style="display:none;"><p><strong>The FY 2017 Personal Property Abatement Application is available online from January 1, 2017 - February 1, 2017 ONLY. It must be filed by February 1, 2017.</strong></p><br /><p>FY 2017 Personal Property Abatement Form</p></dd></dl><dl class="faq"><dt>Change of Personal Property Tax Bill Mailing Address</dt><dd class="hide" style="display:none;"><p>Use the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-29893", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Personal Property Mailing Address Change</a> form if you need to change your business tax bill mailing address.</p></dd></dl></dd><dd><h5>Motor Vehicle Excise Tax</h5></dd><dd><dl class="faq"><dt>Motor Vehicle Excise Tax Abatement</dt><dd class="hide" style="display:none;">Persons who own and operate a motor vehicle in Boston are required to pay a Motor Excise tax bill. If your car has been sold, traded, stolen, declared a loss or junked, or have moved your car out of Boston or out of Massachusetts, you can obtain a Motor Vehicle Excise Tax Abatement application <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21893", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Motor Excise Tax Abatement Form</a>.</dd></dl></dd><dd><h5>Real Estate (Residential, Commercial etc.)</h5></dd><dd><dl class="faq"><dt>FY 2017 Application for Real Estate Tax Abatement</dt><dd class="hide" style="display:none;"><p>An abatement is a reduction of a property tax based upon a review and correction of a property's assessed value. Massachusetts law provides for an abatement procedure that must be followed when a taxpayer believes that their property is over-assessed, disproportionately assessed, improperly classified or exempt from taxation. Both the FY 2017 Abatement application (page 1) and the FY 2017 Information Requisition form (pages that follow) must be filed timely to comply with Massachusetts law.</p><br /><p>The FY 2017 Application for Real Estate Abatement is available online from January 1, 2017 - February 1, 2017 ONLY. Property owners who wish to file an abatement should follow the instructions on the <a href="http://www.cityofboston.gov/assessing/search/" title="Assessing Online">Assessing Online</a> page.</p></dd></dl><dl class="faq"><dt>FY 2017 Application for Residential Exemption</dt><dd class="hide" style="display:none;"><p>The City of Boston offers a residential exemption to homeowners that occupy their property as the principal residence. The Residential Exemption application for FY 2017 is available online from January 1, 2017 - April 3, 2017 ONLY. Homeowners who wish to file for the Residential Exemption should follow the instructions on the <a href="http://www.cityofboston.gov/assessing/search/" title="Assessing Online">Assessing Online</a> page.</p><br /><p>You may also apply online for the residential exemption. To access the form for your property, go to <a href="http://www.cityofboston.gov/assessing/search/" title="Assessing Online">Assessing Online</a> and enter identifying information such as parcel ID, last name, or street address in the search box. Click on "Details" among the search results associated with your property. On the property summary screen, click on the link to "file a Residential Exemption Application for FY2017". If a residential exemption has already been granted for the given tax year then this will be noted in the "Abatements/Exemption" section. Please note that applicants must print out their online residential exemption application and return it to the Assessing Department, Room 301, City Hall OR to the Taxpayer Referral & Assistance Center (TRAC), mezzanine level, City Hall by April 3, 2017.</p></dd></dl><dl class="faq"><dt>Change of Property Tax Bill Mailing Address</dt><dd class="hide" style="display:none;">The City of Boston operates under a Quarterly billing system. The fiscal year tax bill is sent to the owner of record as of January 1. If you purchased a property <span style="TEXT-DECORATION: underline">after</span> January 1, the next fiscal year bill will list the previous owner's name. In order to receive future bills at the appropriate address, please fill out the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-7610", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Property Tax Bill Change of Mailing Address Form</a>.</dd></dl><dl class="faq"><dt>Real Estate Parcel Consolidation </dt><dd class="hide" style="display:none;"><p>Taxpayers seeking to consolidate the parcel on which their home is located and its contiguous lot or lots into one property parcel for tax bill purposes must make a request to the Assessing Department by completing and submitting a signed Real Estate Parcel Consolidation Request form.</p><br /><p>Please read the Consolidation Instruction page for consolidation limitations and procedures prior to filling out the request form.</p><p><br />
Fiscal Year 2017 begins July 1, 2016 and ends June 30, 2017. <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-52698", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >FY17 Consolidation Instructions and Request Form</a><br /></p></dd></dl><dl class="faq"><dt>Real Estate Property Record Card </dt><dd class="hide" style="display:none;">Obtain a record card for property situated within the City of Boston by completing and mailing the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9229", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Property Record Card Request Form</a> A $5.00 fee per parcel is applicable for each record card payable by cash, check or money order made payable to the City of Boston.</dd></dl><dl class="faq"><dt>FY 2017 38D Property Tax Return (Form RC – Residential / Commercial)</dt><dd class="hide" style="display:none;">This return requests property income and expenses information pursuant to  Massachusetts General Laws Chapter 59, Section 38D, in order that the City of  Boston Assessing Department may determine the actual fair cash valuation of  the subject property. All information submitted is confidential pursuant to the law. Complete the return as it is and in its entirety. <strong>This form is to be completed online.</strong> FY 2017 38D Property Tax Return (Form RC – Residential / Commercial) will only be available for sixty (60) days following the mailing date of March 8, 2016 or March 10, 2016, whichever date is shown on the letter you received.</dd></dl><dl class="faq"><dt>FY 2017 38D Property Tax Return (Office)</dt><dd class="hide" style="display:none;"><p>This return requests property income and expenses information pursuant to Massachusetts General Laws Chapter 59, Section 38D, in order that the City of Boston Assessing Department may determine the actual fair cash valuation of the subject property. All information submitted is confidential pursuant to the law. Complete the return as it is and in its entirety. <strong>Alternative documents may not be substituted for this return.</strong> FY 2017 38D Property Tax Return (Office) will only be available for sixty (60) days following the mailing date of February 10, 2016.</p></dd></dl><dl class="faq"><dt>FY 2017 38D Property Tax Return (New Construction)</dt><dd class="hide" style="display:none;">This return requests property income and expenses information pursuant to Massachusetts General Laws Chapter 59, Section 38D, in order that the City of Boston Assessing Department may determine the actual fair cash valuation of the subject property. All information submitted is confidential pursuant to the law. Complete the return as it is and in its entirety. <strong>Alternative documents may not be substituted for this return.</strong> FY 2017 38D Property Tax Return (New Construction) will only be available for sixty (60) days following the mailing date of February 10, 2016.</dd></dl></dd></dl></div>

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
			
			  paramVal1 = "tcm:3-6032-64"
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
		
		 'paramVal1 = "tcm:3-6032-64" 
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



	<h2 class="header">Related Links</h2>


<ul>


          				
                                                                        <li><a href="http://www.mass.gov/anf/hearings-and-appeals/oversight-agencies/atb/" target="_blank" class="_external">Appellate Tax Board (ATB)</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.cityofboston.gov/cityclerk/">City Clerk</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/dor" target="_blank" class="_external">Massachusetts Dept of Revenue</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/dor/local-officials/" target="_blank" class="_external">Mass Dept of Revenue - Division of Local Services (DLS)</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.suffolkdeeds.com/ " target="_blank" class="_external">Suffolk County Registry of Deeds</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.cityofboston.gov/archivesandrecords/">City Archives</a></li>
                                                                

                                                                


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