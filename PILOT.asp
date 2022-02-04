<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>PILOT Task Force | City of Boston</title>
<!-- TemplateEndEditable -->
     <meta name="keywords" content="" />
     <meta name="description" content="Assessing | PILOT"/>

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
        
          paramVal1 = "tcm:3-6037-64"
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
                   <h2>PILOT Task Force</h2>
                   
                               <p>(Payment in Lieu of Taxes)</p>
                   
	   </div>


</div>




<div class="content_main_sub">
                      <p style="TEXT-ALIGN: center"><img src="/images_documents/pilot_web_tcm3-8827.jpg"  style="WIDTH: 450px; HEIGHT: 126px" title="pilot" alt="pilot" width="450" height="126" /></p><p style="TEXT-ALIGN: center"><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21904", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >PILOT Task Force Final Report</a> (December 2010)</p><hr /><p style="TEXT-ALIGN: left">In January 2009, former Mayor Thomas Menino created a Task Force to examine the relationship between the City and tax-exempt institutions, specifically the major educational and medical institutions. Most of these tax-exempt, land-owning institutions make a voluntary payment-in-lieu-of taxes ("PILOT") to the City to help cover the cost of providing the institutions with essential City services (i.e. police, fire, snow removal). However, the PILOT contributions vary considerably between the institutions. The Task Force will be responsible for reviewing the current PILOT system, as well as the institutions' community benefits, and will ultimately make recommendations to strengthen the partnership between Boston and its tax-exempt institutions.</p><h4 style="TEXT-ALIGN: left">Objectives</h4><p style="TEXT-ALIGN: left">The following are the PILOT Task Force's primary objectives:</p><ul><li><p>Set a standard level of contributions - in programs and payments - to be met by all major tax-exempt land owners in Boston.</p></li><li><p>Develop a methodology for valuing community partnerships made by tax-exempt institutions.</p></li><li><p>Propose a structure for a consolidation program and payment negotiation system, which will allow the City and its tax-exempt institutions to structure longer term, sustainable partnerships focused on improving services for Boston's residents.</p></li><li><p>Clarify the costs associated with providing City services to tax-exempt institutions.</p></li><li><p>If necessary, provide recommendations on legislative changes needed at the City or state level.</p></li></ul><h5>Resources</h5><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8009", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >PILOT Interim report</a></p><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16644", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >PILOT Task Force Executive Summary</a> (April 2010)</p>
</div>
	<h3 class="section_hd">Meeting Minutes</h3>
	<ul class="block ">
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_MtgMin_%202.9.09_tcm3-8012.pdf" >February 9, 2009</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_MtgMin_3.27.09_tcm3-8013.pdf" >March 27, 2009</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_HearMin_4.27.09_tcm3-8008.pdf" >April 27, 2009</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_MtgMin_%206.11.09_tcm3-8014.pdf" >June 11, 2009</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_MtgMin_9.03.09_tcm3-8016.pdf" >September 3, 2009</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_MtgMinutes_%2012.18.09_tcm3-9242.pdf" >December 18, 2009</a></li>
                                                                
	
	</ul>
	<h3 class="section_hd">Meeting Handouts & Presentations</h3>
	<ul class="block ">
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_Presentation_2.09_tcm3-8022.pdf" >PILOT Presentation February, 2009</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/PILOT_MtgHandout_3.27.09_tcm3-8011.pdf" >Handout - March 27, 2009</a></li>
                                                                
	
	</ul>
	<h3 class="section_hd">Supplemental Information (CRS = Community Service Report)</h3>
	<ul class="block ">
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_Beth_Israel_tcm1-4121%5B1%5D_tcm3-8830.pdf" >CSR Beth_Israel</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_Harvard_Univ_tcm1-4126%5B2%5D_tcm3-8831.pdf" >CSR Harvard University</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_Brigham_Womens_tcm3-8832.pdf" >CSR Brigham & Women Hospital</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_Northeastern_Univ_tcm1-4127%5B2%5D_tcm3-8838.pdf" >CSR Northeastern University</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_BostonCollege_tcm1-4124%5B1%5D_tcm3-8833.pdf" >CSR Boston College</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_MassGeneral__tcm1-4123%5B1%5D_tcm3-8839.pdf" >CSR Mass General Hospital</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_BU_tcm1-4125%5B2%5D_tcm3-8834.pdf" >CSR Boston University</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CS_Financial_Partners_Healthcare_tcm1-4128%5B2%5D_tcm3-8837.pdf" >CS Financial Partners Healthcare</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CSR_Children_tcm3-8835.pdf" >CSR Children's Hospital</a></li>
                                                                
				
          				

                                                                
                                                                        <li><a href="/images_documents/CS_Overview_Partners_%20Healthcare_tcm3-9238.pdf" >CS Overview Partners Healthcare</a></li>
                                                                
	
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
			
			  paramVal1 = "tcm:3-6037-64"
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
		
		 'paramVal1 = "tcm:3-6037-64" 
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


          				
                                                                        <li><a href="/assessing/PILOT_Contributions.asp">Payment-in-lieu-of-taxes (PILOT) Contributions</a></li>
                                                                

                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16618", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16618" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16618" tridion:type="Multimedia" tridion:targetattribute="href">PILOT Meetings Schedule</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8010", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8010" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8010" tridion:type="Multimedia" tridion:targetattribute="href">PILOT Task Force Members</a></li>
                                                                


</ul>



	<h2 class="header">Press Releases</h2>


<ul>


          				
                                                                        <li><a href="http://www.cityofboston.gov/news/default.aspx?id=4907">PILOT Task Force Releases Recommendations </a></li>
                                                                

                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-8023", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-8023" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-8023" tridion:type="Multimedia" tridion:targetattribute="href">Press Release Mayor's Announcement January, 2009</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16211", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16211" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16211" tridion:type="Multimedia" tridion:targetattribute="href">PILOT Task Force Draft Recommendations</a></li>
                                                                


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