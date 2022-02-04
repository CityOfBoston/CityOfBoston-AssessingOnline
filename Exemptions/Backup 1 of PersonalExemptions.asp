<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Personal Exemptions | City of Boston</title>
<!-- TemplateEndEditable -->
     <meta name="keywords" content="" />
     <meta name="description" content=""/>

     <script type="text/javascript" src="//m.cityofboston.gov/mobify/redirect.js"></script>
     <script type="text/javascript">try{_mobify("http://m.cityofboston.gov/");} catch(err) {};</script>

     <link rel="stylesheet" href="/system/css/reset-fonts-grids.css" type="text/css" media="all" />
     <link rel="stylesheet" href="/system/css/style.css" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="/includes/css/print.css" media="print" />
     <link rel="icon" type="image/vnd.microsoft.icon" href="/favicon.ico" />

     <script type="text/javascript" src="/foresee/foresee-trigger.js"></script>
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
        
          paramVal1 = "tcm:3-14132-64"
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
<div id="content_main_hd"><div><h2>Personal Exemptions</h2><p /></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dd><h5>About Personal Exemptions</h5></dd><dd><dl class="faq"><dt>What is a personal exemption?</dt><dd class="hide" style="display:none;">An exemption is a release from the obligation of having to pay taxes on all or a part of a parcel of real property. Personal exemptions are a reduction in taxes due to a particular personal circumstance. The qualifications set forth in the Massachusetts General Laws. The burden is on the taxpayer to show that he or she falls within the expressed terms of the exemption provision.
<br /><br />
Personal exemptions must be filed no later than December fifteenth of each year or by three months from the issue date of the 3rd quarter tax bill.
<br /><br />
Exemptions are granted for one year only. An application must be filed each year.
<br /></dd></dl><dl class="faq"><dt>Who is eligible for a personal exemption?</dt><dd class="hide" style="display:none;"><p>Full or partial exemptions are provided in the General Laws for the following eligible persons:</p><br /><ul><li>Surviving Spouse (Widow/Widower), Minor Child of a Deceased Parent, Elderly - Clause 17D</li><li>Blind - Clause 37A</li><li>Veterans - Wartime Service Connected Disability Clause 22</li><li>Elderly - Clause 41C</li><li>Hardship - Clause 18</li><li>National Guard - Clause 56 (NEW)</li><li>Tax Deferral - Clause 41A taxpayers (65+)
<br /></li></ul></dd></dl><dl class="faq"><dt>How do I apply for Personal Exemptions?</dt><dd class="hide" style="display:none;"><p>Taxpayers have until April 1 of the tax year to file a personal exemption application with the Assessing Department. <strong>Exception:</strong> Filers for the new National Guard exemption must submit a standard application for abatement within 30 days of the mailing of the 3rd quarter tax bill.</p><p><br />
The fiscal year Personal Exemption application is available online immediately following the issuance of the 3rd quarter tax bill. Those taxpayers seeking the National Guard exemption should file a standard abatement application, which is also available immediately following the issuance of the 3rd quarter tax bill. The filing of an application does not mean that you can postpone the payment of your tax. The tax that appears on each of the Quarterly tax bills must be paid in full. If the personal exemption is approved, a refund will follow.
<br /><br /><em>NOTE: A taxpayer may not receive more than one of these exemptions. If however, taxpayers qualify for two of these exemptions, the Taxpayer Referral & Assistance Center will make sure they receive the exemption that saves them the most money.</em><br /></p></dd></dl></dd><dd><h5>Surviving Spouse, Minor Child of Deceased Parent, Elderly Exemption</h5></dd><dd><dl class="faq"><dt>What is the Surviving Spouse exemption?</dt><dd class="hide" style="display:none;">The Surviving Spouse, Minor Child of Deceased Parent, Elderly exemption 17D* provides assistance to surviving spouses, minor children of a deceased parent, and elderly taxpayers who meet the age, whole estate and residency requirements below.
<br /><br /><em>Please Note: if you are elderly and have a limited income, you may be eligible for a greater amount of assistance under elderly exemption 41C or a tax deferral arrangement under deferral 41A.
<br /></em></dd></dl><dl class="faq"><dt>What is the exemption amount for Surviving Spouse?</dt><dd class="hide" style="display:none;"><p>Taxpayers who are eligible for personal exemption 17D will receive a reduction in their tax liability of $308. In addition, the City of Boston has elected to provide additional relief of up to $308, provided that the additional amount does not:</p><p style="LIST-STYLE-TYPE: none"><br /></p><ul><li>Reduce your final tax bill below the amount of tax you owed in the previous year; and</li><li style="LIST-STYLE-TYPE: none"><br /></li><li>Reduce the taxable value of your property below 10 percent of the assessed value.</li></ul></dd></dl><dl class="faq"><dt>How do I apply for the Surviving Spouse exemption?</dt><dd class="hide" style="display:none;"><p>Applications must be filed with the Assessing Department/ Taxpayer Referral & Assistance Center (TRAC) by April 1 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51477", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 Surviving Spouse Exemption</a>.</p><p><br /><strong>Renewals:
<br /></strong> If you were granted an exemption last year, the Assessing Department/ Taxpayer Referral & Assistance Center (TRAC) will send you a renewal application. However, it is your responsibility to ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the TRAC at (617) 635-4287. Supporting documentation, including a birth certificate and all other materials that will help the Board of Assessors make a determination, will be requested.
<br /><br /><em>The filing of an application does not mean you can postpone the payment of your tax.</em><br /></p></dd></dl></dd><dd><h5>Blind Exemption</h5></dd><dd><dl class="faq"><dt>What is the Blind exemption?</dt><dd class="hide" style="display:none;">The Blind exemption 37A* provides assistance to taxpayers who are legally blind and meet the requirements below.
<br /></dd></dl><dl class="faq"><dt>What is the exemption amount for Blind exemption?</dt><dd class="hide" style="display:none;"><p>Taxpayers who are eligible for personal exemption 37A will receive a reduction in their tax liability of $500. In addition, the City of Boston has elected to provide additional relief of up to $500, provided that the additional amount does not:</p><br /><ul><li><p>Reduce your final tax bill below the amount of tax you owed in the previous year; and</p></li><li><p>Reduce the taxable value of your property below 10 percent of the assessed value.</p></li></ul></dd></dl><dl class="faq"><dt>How do I apply for the Blind exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filed with the Assessing Department/ Taxpayer Referral & Assistance Center (TRAC) by April 1 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51478", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 Blind Exemption 37A</a>.
<br /></p><br /><p><strong>Renewals:
<br /></strong> If you were granted an exemption last year, the Assessing Department/ Taxpayer Referral & Assistance Center will send you a renewal application. However, it is your responsibility to ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the Assessing Department/ Taxpayer Referral & Assistance Center at (617) 635-4287.
<br /><br />
Supporting documentation, including certification from the Massachusetts Division of the Blind and all other materials that help the Board of Assessors make a determination will be requested.
<br /><br /><em>As a reminder, the filing of an application does not mean you can postpone the payment of your tax.
<br /></em></p></dd></dl></dd><dd><h5>Veteran Exemption</h5></dd><dd><dl class="faq"><dt>What is the Veterans exemption?</dt><dd class="hide" style="display:none;"><p>The veterans exemption 22* provides assistance to veterans who meet the disability and residency requirements listed. Please note that if you are an elderly veteran and have a limited income, you may be eligible for a greater amount of assistance under personal exemption 41C.</p></dd></dl><dl class="faq"><dt>What is the Veteran exemption amount?</dt><dd class="hide" style="display:none;"><p>Taxpayers who are eligible for veterans exemption 22* will receive a reduction in their tax liability of between $400 and $1,500, depending on the nature of their disability. In addition, the City of Boston has elected to provide additional relief of up to twice the amount, provided that the additional amount does not:</p><br /><ul><li>Reduce your final tax bill below the amount of tax you owed in the previous year; and</li><li>Reduce the taxable value of your property below 10 percent of the assessed value.</li></ul><br /><p>Paraplegic veterans with service-connected disabilities will be exempted from their tax liabilities.</p></dd></dl><dl class="faq"><dt>How do I apply for the Veterans exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filled out with the Assessing Department/Tax Referral & Assistance Center (TRAC) by April 1 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51479", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 Veteran Exemption</a>.
<br /></p><br /><p><strong>Renewals:</strong><br />
If you were granted an exemption last year, the Assessing Department/ Taxpayer Referral & Assistance Center will send you a renewal application. However, it is your responsibility to ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the Assessing Department/ Taxpayer Referral & Assistance Center at (617) 635-4287. Supporting documentation, including a certificate of eligibility from the Veterans Administration and all other materials which will help the Board of Assessors make a determination, will be requested.
<br /><br />
The filing of an application does not mean you can postpone the payment of your tax.
<br /><br /><em><strong>NOTE:</strong> Applicants for Residential Exemption <strong>MUST</strong> provide their social security number on their application. This information will be kept confidential by the Assessing Department and used solely to confirm residency compliance.</em></p></dd></dl></dd><dd><h5>Elderly Exemption</h5></dd><dd><dl class="faq"><dt>What is the Elderly exemption?</dt><dd class="hide" style="display:none;">The elderly exemption 41C* provides assistance to elderly taxpayers who meet the age, income, whole estate and residency requirements below. Please note that if you are elderly but do not meet one or all of the personal exemption 41C requirements, you may be eligible for a lesser amount of assistance under personal exemption 17D or a deferral arrangement.
<br /></dd></dl><dl class="faq"><dt>What is the Elderly exemption amount?</dt><dd class="hide" style="display:none;">Taxpayers who are eligible for personal exemption 41C will receive a reduction in their tax liability of $750. In addition, the City of Boston has elected to provide additional relief of up to $750 provided that the additional amount does not:
<br /><br /><ul><li>Reduce your final tax bill below the amount of tax you owed in the previous year; and</li><li>Reduce the taxable value of your property below 10 percent of the assessed value.</li></ul></dd></dl><dl class="faq"><dt>How do I apply for the Elderly exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filed with the Assessing Department / Taxpayer Referral & Assistance Center (TRAC) by April 1 of the tax year.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51480", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 Elderly Exemption 41C</a>.</p><p><br /><strong>Renewals:</strong><br />
IF you were granted an exemption last year, the Assessing Department / Taxpayer Referral & Assistance Center will send you a renewal application. However, it IS your responsibility TO ensure that a renewal is filed each year.
<br /><br /><strong>New Applications:</strong><br />
If you think that you qualify, notify the Assessing Department / Taxpayer Referral & Assistance Center at (617) 635 - 4287. Supporting documentation, including a birth certificate and all other materials that will help the Board of Assessors make a determination, will be requested.
<br /><br /><em>The filing of an application does NOT mean you can postpone the payment of your tax.</em><br /></p></dd></dl></dd><dd><h5>Hardship Exemption</h5></dd><dd><dl class="faq"><dt>What is the Hardship exemption?</dt><dd class="hide" style="display:none;"><p>The clause 18 hardship exemption provides assistance to those taxpayers who, in the judgment of the Board of Assessors, are unable to fulfill their tax obligations by reason of:</p><br /><ul><li>age</li><li>infirmity, and</li><li>financial condition</li></ul></dd></dl><dl class="faq"><dt>What is the Hardship exemption amount?</dt><dd class="hide" style="display:none;">Taxpayers who are eligible for hardship exemption 18 are released from all or a portion of their tax liability, as determined by the Board of Assessors.</dd></dl><dl class="faq"><dt>How do I apply for the Hardship exemption?</dt><dd class="hide" style="display:none;"><p>Application must be filled out with the Assessing Department by April 1 of the tax year.</p><br /><p>If you think you qualify, notify the Taxpayer Referral & Assistance Center at (617) 635-4287 after you receive your fourth quarter tax bill. Supporting medical and financial documentation is required to assist the Board of Assessors in making a determination.</p><br /><p>For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51481", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 Hardship Exemption 18</a>.</p></dd></dl></dd><dd><h5>National Guard Exemption</h5></dd><dd><dl class="faq"><dt>What is the National Guard exemption?</dt><dd class="hide" style="display:none;">The National Guard Exemption, recently adopted by the Mayor's Office and the Boston City Council, is a new program that will allow National Guard Members and Military Reservists who are on active duty serving in foreign countries to receive a real estate tax exemption.</dd></dl><dl class="faq"><dt>What is the National Guard exemption amount?</dt><dd class="hide" style="display:none;">Taxpayers who are eligible for the National Guard exemption will receive a 100% reduction in their real estate tax liability for the given year.</dd></dl><dl class="faq"><dt>How do I apply for the National Guard exemption?</dt><dd class="hide" style="display:none;"><p>A standard application for abatement of real estate tax should be filled out and returned to the Assessing Department, Room 301, City Hall, Boston, MA 02201, no later than 30 days following the issuance of the 3rd Quarter tax bill.</p><p><br />
For information on requirements see <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51482", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 National Guard Exemption</a>.
<br /></p></dd></dl></dd></dl></div>

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
			
			  paramVal1 = "tcm:3-14132-64"
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
		
		 'paramVal1 = "tcm:3-14132-64" 
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


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51478", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-51478" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-51478" tridion:type="Multimedia" tridion:targetattribute="href">2016 Blind Exemption 37A</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51480", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-51480" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-51480" tridion:type="Multimedia" tridion:targetattribute="href">2016 Elderly Exemption 41C</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51481", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-51481" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-51481" tridion:type="Multimedia" tridion:targetattribute="href">2016 Hardship Exemption 18</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51482", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-51482" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-51482" tridion:type="Multimedia" tridion:targetattribute="href">2016 National Guard Exemption</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51477", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-51477" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-51477" tridion:type="Multimedia" tridion:targetattribute="href">2016 Surviving Spouse. Minor Child of Deceased Parent, Elderly (age 70+) Exemption</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51479", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-51479" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-51479" tridion:type="Multimedia" tridion:targetattribute="href">2016 Veteran Exemption</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16993", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href">Guide to Application Dates for Abatements, Exemptions and Deferrals</a></li>
                                                                


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

<!-- Start social media -->
<div id="socialmedia_bar">
	<div id="feedbackcode">
		<a href="#" title="Give us your feedback!" onclick="FBY.showForm('1162');return false;"><img src="/images/feedbackifylg.png" class="feedbackify_btn" /></a>
	</div>
	<div id="addthiscode">
		<div class="addthis_toolbox addthis_default_style addthis_16x16_style">

		<a class="addthis_button_email" title="email"></a>
		<a class="addthis_button_print" title="print"></a> 
		<a class="addthis_button_favorites" title="Add to Favorites"></a>
		<a class="addthis_button_facebook" title="Share to Facebook"><img src="/images/addthis/facebook.png" /></a>
		<a class="addthis_button_twitter" title="Tweet This"><img src="/images/addthis/twitter.png" /></a>
		<a class="addthis_button_reddit" title="Reddit This"><img src="/images/addthis/reddit.png" /></a>
		<a class="addthis_button_compact"></a>
		</div>
	</div>

<script type="text/javascript">var addthis_config = { data_ga_property: 'UA-2187282-1', data_ga_social: true }; </script>
<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js#username=cobwebmaster"></script>

<script type="text/javascript">
var fbJsHost = (("https:" == document.location.protocol) ? "https://" : "http://");
document.write(unescape("%3Cscript src='" + fbJsHost + "fby.s3.amazonaws.com/fby.js' type='text/javascript'%3E%3C/script%3E"));
</script>

</div><!-- Close #socialmedia_bar -->
</div><!-- Close #page_wrapper_inner -->
</div><!-- Close #page_wrapper -->
</div><!-- Close #home -->

<!-- BoldChat Visitor Monitor HTML v4.00 (Website=- None -,ChatButton=- None -,ChatInvitation=- None -) -->
<script type="text/javascript">
  var _bcvma = _bcvma || [];
  _bcvma.push(["setAccountID", "405217549826735998"]);
  _bcvma.push(["pageViewed"]);
  (function(){
    var vms = document.createElement("script"); vms.type = "text/javascript"; vms.async = true;
    vms.src = ('https:'==document.location.protocol?'https://':'http://') + "vmss.boldchat.com/aid/405217549826735998/bc.vms4/vms.js";
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(vms, s);
  })();
</script>
<noscript>
<a href="http://www.boldchat.com" title="Live Chat" target="_blank"><img alt="Live Chat" src="https://vms.boldchat.com/aid/405217549826735998/bc.vmi" border="0" width="1" height="1" /></a>
</noscript>
<!-- /BoldChat Visitor Monitor HTML v4.00 -->

</body>
</html>