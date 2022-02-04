<% Response.CharSet = "utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Assessing Department | City of Boston</title>
<!-- TemplateEndEditable -->
     <meta name="keywords" content="" />
     <meta name="description" content=""/>

     <link rel="stylesheet" href="/system/css/reset-fonts-grids.css" type="text/css" media="all" />
     <link rel="stylesheet" href="/system/css/style.css" type="text/css" media="all" />
     <link rel="stylesheet" type="text/css" href="/includes/css/print.css" media="print">
     <link rel="icon" type="image/vnd.microsoft.icon" href="/favicon.ico" />

     <script type="text/javascript" src="/system/js/jquery.js"></script>
     <script type="text/javascript" src="/system/js/script.js"></script>
     <!--[if lte IE 6]><link rel="stylesheet" href="/system/css/ie.css" type="text/css"><![endif]-->
<script type="text/javascript" src="http://m.cityofboston.gov/mobify/redirect.js"></script>
<script type="text/javascript">try{_mobify("//m.cityofboston.gov/");} catch(err) {};</script>
<!-- TemplateBeginEditable name="head" --><!-- TemplateEndEditable -->
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
<span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_1", "ComponentID" : "tcm:3-3472", "ComponentTemplateID" : "tcm:3-816-32", "ComponentVersion" : 5, "IsQueryBased" : false , "SwapLabel" : "default" } --><div class="sub_main_hd">




                   <div class="content">
                   <h2>Assessing Department</h2>
                   
                               <p>The Assessing Department is responsible for accurately determining the value of all real and personal property located within the City of Boston for the purpose of taxation. Assessors are obliged to assess all property at its full and fair market value as of January 1 of each year. The department is responsible for the administration of all property tax data records and maintains accurate parcel ownership data based upon recorded property transactions at the Registry of Deeds. It also administers the tax billing for the motor vehicle excise and boat excise tax.
</p>
                   
	   </div>


</div>



</span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_2", "ComponentID" : "tcm:3-21964", "ComponentTemplateID" : "tcm:3-820-32", "ComponentVersion" : 7, "IsQueryBased" : false , "SwapLabel" : "default" } --><h3>Search FY2011 Real Estate Assessments and Taxes </h3>
<br />
<form action="/assessing/search/" method="get">

                <input type="text" name="q" id="q" size=30>

                <input type="submit" value="Search parcels" >

</form>
<br />
<p style="font-size: xx-small;">examples: 1 City Hall Sq | 0504203000 | KENNEDY JOHN</p>

<hr></span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_3", "ComponentID" : "tcm:3-8696", "ComponentTemplateID" : "tcm:3-831-32", "ComponentVersion" : 4, "IsQueryBased" : false , "SwapLabel" : "default" } --><ul class="stories spotlightBorder">
<li>

<div class="image_wrap1">
<div class="image_wrap2">


                      
                              
                                            <a href="http://www.cityofboston.gov/assessing/trac.asp"><img src="/Images_Documents/TRACMarquis_tcm3-14002.jpg"  alt="TRACMarquis" /></a>
                              
                      






</div>
</div>

<div class="content float_75">
<h4>TRAC</h4>
     
           The Assessing Department's Taxpayer Referral & Assistance Center - known as TRAC provides "one-stop" service to Boston taxpayers on tax related matters. The TRAC office is located on the mezzanine floor of City Hall.
     


	
          				
                                                                        <p><a href="http://www.cityofboston.gov/assessing/trac.asp">Taxpayer Referral & Assistance Center &raquo;</a></p>
                                                                

                                                                
	



</div>




</li>
</ul></span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_4", "ComponentID" : "tcm:3-21909", "ComponentTemplateID" : "tcm:3-12630-32", "ComponentVersion" : 1, "IsQueryBased" : false , "SwapLabel" : "default" } --><ul class="stories spotlightBorder">
<li>

<div class="image_wrap1">
<div class="image_wrap2">


                      
                              
                                            <a href="http://www.cityofboston.gov/assessing/PILOT.asp"><img src="/Images_Documents/PILOT%20institutions_tcm3-21908.jpg"  alt="PILOT Institution" /></a>
                              
                      






</div>
</div>

<div class="content float_75">
<h4>PILOT Task Force Releases Recommendations</h4>
     
           A final report has been issued by the nine members of the Mayor's Payment In Lieu Of Taxes (PILOT) Task Force. The recommendations propose a standard level of contributions for all major tax-exempt property owners and set forth a methodology for valuing community partnerships.
     


	
          				
                                                                        <p><a href="http://www.cityofboston.gov/assessing/PILOT.asp">PILOT (Payment in Lieu of Taxes) Task Force &raquo;</a></p>
                                                                

                                                                
	



</div>




</li>
</ul></span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_5", "ComponentID" : "tcm:3-14052", "ComponentTemplateID" : "tcm:3-826-32", "ComponentVersion" : 4, "IsQueryBased" : false , "SwapLabel" : "default" } -->	<h3 class="section_hd">Assessing Forms</h3>
	<ul class="block blue">
				
          				
                                                                        <li><a href="http://www.cityofboston.gov/assessing/forms.asp">Real Estate forms, Business Personal Property, Exempt Organizations, Personal Exemption, Residential Exemption, 121A Properties, Motor Excise, Boat Excise etc.</a></li>
                                                                

                                                                
	
	</ul>
</span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_6", "ComponentID" : "tcm:3-8856", "ComponentTemplateID" : "tcm:3-826-32", "ComponentVersion" : 10, "IsQueryBased" : false , "SwapLabel" : "default" } -->	<h3 class="section_hd">Tax Payments</h3>
	<ul class="block blue">
				
          				
                                                                        <li><a href="http://www.cityofboston.gov/assessing/RETaxes_Bills_Payments.asp">Real Property Tax Bill & Payment Information</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/realestate/">Pay Real Estate Property Tax (CURRENT tax year)</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/persproperty/default.asp">Pay Business Personal Property Tax</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/excise/">Pay Motor Excise Tax (CURRENT and LAST calendar year)</a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="https://payments.cityofboston.gov/boats/">Pay Boat Excise Tax</a></li>
                                                                

                                                                
	
	</ul>
</span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_7", "ComponentID" : "tcm:3-8868", "ComponentTemplateID" : "tcm:3-826-32", "ComponentVersion" : 9, "IsQueryBased" : false , "SwapLabel" : "default" } -->	<h3 class="section_hd">Reports & Publications</h3>
	<ul class="block blue">
				
          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16824", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16824" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16824" tridion:type="Multimedia" tridion:targetattribute="href">Everything You've Ever Wanted to Know About Property Taxes</a></li>
                                                                
				
          				
                                                                        <li><a href="/assessing/facts.asp">Facts & Figures (FY 2002 - FY 2010) </a></li>
                                                                

                                                                
				
          				
                                                                        <li><a href="/assessing/PILOT_Contributions.asp">Payment-in-lieu-of-taxes (PILOT) Contributions</a></li>
                                                                

                                                                
				
          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8886", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8886" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8886" tridion:type="Multimedia" tridion:targetattribute="href">Taxable Property Supplement FY 2009 – Educational and Medical Institutions</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8885", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8885" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8885" tridion:type="Multimedia" tridion:targetattribute="href">Exempt Property Analysis: Educational and Medical Institutions FY 2009</a></li>
                                                                
	
	</ul>
</span>


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
             

            
        			
          	
                <li><a href="http://www.cityofboston.gov/contact/directions.asp">City Hall Hours & Directions</a></li>
             

            
        			
          	
                <li><a href="http://www.cityofboston.gov/mayor/24/">Mayor's 24 Hour Constituent Service</a></li>
             

            
        
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
      <form method="get" name="search" action=" http://search.cityofboston.gov/search">
<input type="hidden" name="site" value="All_Cityofboston"/>
          <input type="hidden" name="client" value="cob_frontend"/>
          <input type="hidden" name="proxystylesheet" value="cob_frontend"/>
          <input type="hidden" name="output" value="xml_no_dtd"/>
          <input type="hidden" name="partialfields" value=""/>
          <label for="searchField">Search:</label>
          <input type="text" name="q" size="15" id="searchField"/> 
          <input type="submit" class="button" value="Go!" />
      </form>
	</div>
<span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_8", "ComponentID" : "tcm:3-14056", "ComponentTemplateID" : "tcm:3-12635-32", "ComponentVersion" : 8, "IsQueryBased" : false , "SwapLabel" : "default" } --> 	<h2 class="header">Announcements</h2>
 	<ul>
 	<li>
 	<p><b>FY 2011 Taxpayer Information 3rd & 4th Quarter</b></p>
 	<p>Valuable taxpayer information for the Third and Fourth quarters of Fiscal Year 2011.</p>
 	<p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21869", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-21869" tridion:type="Multimedia" tridion:targetattribute="href" >FY 2011 Taxpayer Information 3rd & 4th Quarters</a></p>
 	</li>
 	<li>
 	<p><b>New Filers of Personal Property Tax Returns</b></p>
 	<p>All businesses in the City of Boston are required to file a personal property tax return in 2011.</p>
 	<p><a href="http://www.cityofboston.gov/assessing/perpro_tax_ret.asp" >New Filers of Personal Property Tax Returns</a></p>
 	</li>
 	</ul>
</span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_9", "ComponentID" : "tcm:3-9209", "ComponentTemplateID" : "tcm:3-825-32", "ComponentVersion" : 28, "IsQueryBased" : false , "SwapLabel" : "default" } -->


	<h2 class="header">Taxpayer Information</h2>


<ul>


          				

                                                                
                                                                        <li><a href="http://www.cityofboston.gov/assessing/res_sales_prop.asp">2009 Sales of Residential Properties</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21883", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-21883" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-21883" tridion:type="Multimedia" tridion:targetattribute="href">FY 2011 Just the Facts</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16243", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16243" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16243" tridion:type="Multimedia" tridion:targetattribute="href">Assessing Calendar</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16993", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href">Guide to Application Dates for Abatements, Exemptions and Deferrals</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-17014", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-17014" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-17014" tridion:type="Multimedia" tridion:targetattribute="href">Glossary of Assessing Terms</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8867", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8867" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8867" tridion:type="Multimedia" tridion:targetattribute="href">Boston Land Use Codes</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8893", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8893" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8893" tridion:type="Multimedia" tridion:targetattribute="href">Public Access to Copies of Tax Records</a></li>
                                                                


</ul>
</span><span><!-- Start SiteEdit Component Presentation: {"ID" : "cp_10", "ComponentID" : "tcm:3-3481", "ComponentTemplateID" : "tcm:3-825-32", "ComponentVersion" : 2, "IsQueryBased" : false , "SwapLabel" : "default" } -->


	<h2 class="header">Related Links</h2>


<ul>


          				
                                                                        <li><a href="http://www.mass.gov/?pageID=afagencylanding&L=4&L0=Home&L1=Hearings+%26+Appeals&L2=Oversight+Agencies&L3=Appellate+Tax+Board&sid=Eoaf" target="_blank" class="_external">Appellate Tax Board (ATB)</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.cityofboston.gov/cityclerk/">City Clerk</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/?pageID=dorhomepage&L=1&L0=Home&sid=Ador" target="_blank" class="_external">Massachusetts Dept of Revenue</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/?pageID=dorhomepage&L=1&L0=Home&sid=Ador" target="_blank" class="_external">Mass Dept of Revenue Division of Local Services (DLS)</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.suffolkdeeds.com/ " target="_blank" class="_external">Suffolk County Registry of Deeds</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.cityofboston.gov/archivesandrecords/sources.asp">City Archives</a></li>
                                                                

                                                                


</ul>
</span>
     
</div><!-- Close #content_sub -->
<div id="content_sub_footer"></div><!-- This adds the bottom border to the bottom of #content_sub -->
</div></div><!-- Close #bd and #bd_inner -->
<div id="nav_sub_footer"><!-- This adds the bottom border and addition links to the bottom of #nav_sub -->
	<ul>
      			
          				
                                                                        <li><a href="/contact">Contact Info</a></li>
                                                                

                                                                
      			
          				
                                                                        <li><a href="http://www.cityofboston.gov/alerts/">Email Alert</a></li>
                                                                

                                                                
      			
          				
                                                                        <li><a href="http://www.cityofboston.gov/copyright/troubleopeningfiles.asp">Trouble Opening Files</a></li>
                                                                

                                                                
      
	</ul><!-- Close #nav_sub_footer -->
</div>
</div><!-- Close #bd_wrapper -->
<div id="ft_wrapper"><div id="ft">
      <ul>
          			
          				
                                                                        <li><a href="http://www.cityofboston.gov/copyright/privacyandsecurity.asp">Privacy & Security</a></li>
                                                                

                                                                
          
          <li>&#169; City of Boston. All rights reserved.</li>
      </ul>
</div><!-- Close #ft_wrapper and #ft -->
</div></div><!-- Close #page_wrapper and #page_wrapper_inner -->
</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-2187282-1");
pageTracker._trackPageview();
} catch(err) {}</script>
<!-- SiteEdit Settings: { "PageID" : "tcm:3-6025-64", "PageVersion" : 30, "TargetTypeID" : "", "ComponentPresentationLocation" : 1} --></body>
</html>