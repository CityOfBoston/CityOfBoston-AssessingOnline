<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Assessing Department | City of Boston</title>
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
        
          paramVal1 = "tcm:3-6025-64"
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
                   <h2>Assessing Department</h2>
                   
                               <p>The Assessing Department is responsible for accurately determining the value of all real and personal property located within the City of Boston for the purpose of taxation. Assessors are obliged to assess all property at its full and fair market value as of January 1 of each year. The department is responsible for the administration of all property tax data records and maintains accurate parcel ownership data based upon recorded property transactions at the Registry of Deeds. It also administers the tax billing for the motor vehicle excise and boat excise tax.
<br /></p>
                   
	   </div>


</div>



<h3>Search FY2015 Real Estate Assessments and Taxes and FY2016 Preliminary Taxes</h3>
<br />
<form action="/assessing/search/" method="get">

                <input type="text" name="q" id="q" size=30>

                <input type="submit" value="Search parcels" >

</form>
<br />
<p style="font-size: xx-small;">examples: 1 City Hall Sq | 0504203000 | KENNEDY JOHN</p>

<hr><div class="content_main_sub">
<div class="bluebox">


              

<div style="TEXT-ALIGN: center"><h4>Now Available: <a href="https://data.cityofboston.gov/Permitting/Property-Assessment-2015/yv8c-t43q" title="2015 Property Assessment Data">2015 Property Assessment Data</a> via <a href="https://data.cityofboston.gov/">Data Boston</a></h4></div>

</div>
</div><ul class="stories spotlightBorder">
<li>

<div class="image_wrap1">
<div class="image_wrap2">





                      <img src="/images_documents/house_75_tcm3-8393.jpg"  alt="Townhouse (75)" />



</div>
</div>

<div class="content float_75">
<h4>FY 2016 Revaluation: Public Disclosure Period</h4>
     
           The Assessing Department has established a public disclosure period - from November 16-20 and November 23-24 - in order to provide taxpayers with the opportunity to review Fiscal Year 2016 property assessments. Revaluation information, including property assessments, will be available online beginning Monday, November 16.
     



</div>




</li>
</ul><ul class="stories spotlightBorder">
<li>

<div class="image_wrap1">
<div class="image_wrap2">


                      
                              
                                            <a href="/assessing/trac.asp"><img src="/images_documents/TRACMarquis_tcm3-14002_tcm3-14002.jpg"  alt="TRAC Marquee (75)" /></a>
                              
                      






</div>
</div>

<div class="content float_75">
<h4>TRAC</h4>
     
           The Assessing Department's Taxpayer Referral & Assistance Center - known as TRAC provides "one-stop" service to Boston taxpayers on tax related matters. The TRAC office is located on the mezzanine floor of City Hall.
     


	
          				
                                                                        <p><a href="/assessing/trac.asp">Taxpayer Referral & Assistance Center &raquo;</a></p>
                                                                

                                                                
	



</div>




</li>
</ul><ul class="stories spotlightBorder">
<li>

<div class="image_wrap1">
<div class="image_wrap2">


                      
                              
                                            <a href="/assessing/PILOT.asp"><img src="/images_documents/PILOT%20institutions_tcm3-21908.jpg"  alt="PILOT Institution (75)" /></a>
                              
                      






</div>
</div>

<div class="content float_75">
<h4>PILOT Task Force Releases Recommendations</h4>
     
           A final report has been issued by the nine members of the Mayor's Payment In Lieu Of Taxes (PILOT) Task Force. The recommendations propose a standard level of contributions for all major tax-exempt property owners and set forth a methodology for valuing community partnerships.
     


	
          				
                                                                        <p><a href="/assessing/PILOT.asp">PILOT (Payment in Lieu of Taxes) Task Force &raquo;</a></p>
                                                                

                                                                
	



</div>




</li>
</ul>	<h3 class="section_hd">Assessing Forms</h3>
	<ul class="block blue">
				
          				
                                                                        <li><a href="/assessing/forms.asp">Assessing Forms</a></li>
                                                                

                                                                
	
	</ul>
	<h3 class="section_hd">Tax Payments</h3>
	<ul class="block blue">
				
          				
                                                                        <li><a href="/assessing/RETaxes_Bills_Payments.asp">Real Property Tax Bill & Payment Information</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/realestate/">Pay Real Estate Property Tax (CURRENT tax year)</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/persproperty/default.asp">Pay Business Personal Property Tax</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/excise/">Pay Motor Excise Tax (CURRENT and LAST calendar year)</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/boats/">Pay Boat Excise Tax</a></li>
                                                                

                                                                
	
	</ul>
	<h3 class="section_hd">Reports & Publications</h3>
	<ul class="block blue">
				
          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16824", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16824" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16824" tridion:type="Multimedia" tridion:targetattribute="href">Everything You've Ever Wanted to Know About Property Taxes</a></li>
                                                                
				
          				
                                                                        <li><a href="/assessing/facts.asp">Facts & Figures (FY 2002 - FY 2015) </a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="/assessing/PILOT_Contributions.asp">Payment-in-lieu-of-taxes (PILOT) Contributions</a></li>
                                                                

                                                                
				
          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8886", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8886" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8886" tridion:type="Multimedia" tridion:targetattribute="href">Taxable Property Supplement FY 2009 - Educational and Medical Institutions</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8885", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8885" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8885" tridion:type="Multimedia" tridion:targetattribute="href">Exempt Property Analysis: Educational and Medical Institutions FY 2009</a></li>
                                                                
	
	</ul>


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
			
			  paramVal1 = "tcm:3-6025-64"
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
		
		 'paramVal1 = "tcm:3-6025-64" 
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
 	<h2 class="header">Announcements</h2>
 	<ul>
 	<li>
 	<p><b>FY 2016 1st & 2nd Quarter Taxpayer Information</b></p>
 	<p><p>Valuable taxpayer information for the first two quarters of Fiscal Year 2016 that begins July 1, 2015.</p><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51610", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >FY 2016 1st & 2nd Quarter Information</a></p></p>
 	</li>
 	<li>
 	<p><b>FY 2016 Abatement Period</b></p>
 	<p>The FY 2016 abatement period will begin on January 1, 2016. The filing deadline is February 1, 2016. For more information, please visit Abatement Procedure on the left menu.</p>
 	</li>
 	<li>
 	<p><b>FY 2016 Revaluation</b></p>
 	<p>In the coming weeks, assessors from the City of Boston Assessing Department will be performing field inspections at properties throughout the City in preparation for the fiscal year 2016 revaluation. This representative will carry a photo ID badge by which his or her status as an Assessing Department employee can be verified.</p>
 	</li>
 	<li>
 	<p><b>FY 2015 Taxpayer Information 3rd Quarter</b></p>
 	<p>Valuable taxpayer information for the third quarter of Fiscal Year 2015 that begins July 1, 2014.</p>
 	<p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-49405", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-49405" tridion:type="Multimedia" tridion:targetattribute="href" >FY 2015 Taxpayer Information 3rd Quarter</a></p>
 	</li>
 	</ul>



	<h2 class="header">Taxpayer Information</h2>


<ul>


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-42396", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-42396" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-42396" tridion:type="Multimedia" tridion:targetattribute="href">2011 - 2013 Residential Sales by Type</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16243", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16243" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16243" tridion:type="Multimedia" tridion:targetattribute="href">Assessing Calendar</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16993", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href">Guide to Application Dates for Abatements, Exemptions and Deferrals</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-17014", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-17014" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-17014" tridion:type="Multimedia" tridion:targetattribute="href">Glossary of Assessing Terms</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8867", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8867" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8867" tridion:type="Multimedia" tridion:targetattribute="href">Boston Land Use Codes</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8893", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8893" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8893" tridion:type="Multimedia" tridion:targetattribute="href">Public Access to Copies of Tax Records</a></li>
                                                                


</ul>



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