<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
  Response.Status="301 Moved Permanently"
  Response.AddHeader "Location","https://www.boston.gov/departments/assessing/how-file-personal-exemption-property-taxes" 

%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Exemptions | City of Boston</title>
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
        
          paramVal1 = "tcm:3-12147-64"
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
                   <h2>Exemptions</h2>
                   
                               <p>An exemption is a release from the obligation of having to pay taxes on all or part of a parcel of real property.</p>
                   
	   </div>


</div>




<div class="content_main_sub">
                      <p><a href="/assessing/exemptions/personalexemptions.asp">Personal
<br /></a> Personal exemptions are a reduction in taxes due to a particular personal circumstance and qualifications set forth in the Massachusetts general laws.</p><p><a href="/assessing/exemptions/resexempt.asp">Residential</a><br />
Taxpayers who own and occupy their home can save on their tax bill by having a portion of their tax bill exempted from taxation. To qualify for the residential exemption, homeowners must own and occupy their home on January 1.??</p><p><a href="http://www.cityofboston.gov/assessing/Exemptions/CooperativeHousingExemption.asp">Cooperative Housing
<br /></a> The Cooperative Housing Residential Tax Exemption allows Cooperative Corporations organized under Chapter 157B of the Massachusetts General Laws to seek exemptions on behalf of shareholders who occupy their cooperative unit as their principal residence.</p><p><a href="/assessing/exemptions/chariexemp.asp">Statutory
<br /></a> In order for an organization to procure exemption from local property taxes, the entity must take steps to ensure its eligibility.</p>
</div>


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
			
			  paramVal1 = "tcm:3-12147-64"
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
		
		 'paramVal1 = "tcm:3-12147-64" 
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