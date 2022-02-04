<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Condo Conversion | City of Boston</title>
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
        
          paramVal1 = "tcm:3-12922-64"
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
                   <h2>Condo Conversion & Tax Bills</h2>
                   
	   </div>


</div>




<div class="content_main_sub">
                      <h3>Massachusetts Law Governs Tax Bill Ownership Recordings</h3><p><img src="/images_documents/Condo_tcm3-12924.jpg"  title="Condo" style="HEIGHT: 150px; WIDTH: 72px; FLOAT: left" hspace="10" alt="Condo" vspace="10" width="72" height="150" />Due to the property tax structure established by Massachusetts statute, there are occasions where property may change hands or uses and those changes are not immediately reflected on the tax bills sent out by the City.</p><p>The tax bills for any given Fiscal Year relate to the property's status and attributes as of the January 1 preceding that Fiscal Year. For example, for Fiscal Year 2017 (7/1/2016 - 6/30/2017) tax bills address the owner of record of the property as of January 1, 2016.</p><br /><br /><br /><h3>Condo Conversion and Tax Bills</h3><p>The timing of property ownership recordings can create confusion in many instances, especially when a property has been converted into a condominium. For every condominium created there will be a window of time when the condo unit owners are not each receiving their own Individualized tax bill. <strong>This DOES NOT mean that each condo owner is not responsible for property taxes.</strong></p><p>For a period of time before the condo unit owners get their own individualized tax bills, each unit owner is responsible for paying his share of the total property tax bill. A unit owner's share of the bill can be calculated by multiplying the unit owner's percentage interest in the common area of his condominium by the bill amount.</p><p><strong>Example:</strong> a five-unit building converts to condominium on August 30th, 2016 and the building gets a quarterly property tax bill in November 2016 for $2,500. The condominiums Master Deeds lists out the common area percentages. The tax bill amount for each owner is shown below:</p><br /><table class="dark-blue" style="WIDTH: 100%" border="1"><tbody><tr><td style="TEXT-ALIGN: center"><strong>Unit</strong></td><td style="TEXT-ALIGN: center"><strong>Common Area Percentage</strong></td><td style="TEXT-ALIGN: center"><strong>Tax Bill Amount Owner Is Responsible For</strong></td></tr><tr><td style="TEXT-ALIGN: center">1</td><td style="TEXT-ALIGN: center">25%</td><td style="TEXT-ALIGN: center">$625</td></tr><tr><td style="TEXT-ALIGN: center">2</td><td style="TEXT-ALIGN: center">20%</td><td style="TEXT-ALIGN: center">$500</td></tr><tr><td style="TEXT-ALIGN: center">3</td><td style="TEXT-ALIGN: center">20%</td><td style="TEXT-ALIGN: center">$500</td></tr><tr><td style="TEXT-ALIGN: center">4</td><td style="TEXT-ALIGN: center">20%</td><td style="TEXT-ALIGN: center">$500</td></tr><tr><td style="TEXT-ALIGN: center">5</td><td style="TEXT-ALIGN: center">15%</td><td style="TEXT-ALIGN: center">$375</td></tr></tbody></table><br /><p><em>Note: Keep track of any payments that you make on your taxes for your unit, if another unit owner does not pay their portion of the overall tax bill you want to have proof showing that you have paid your portion.</em></p><p>For fiscal year 2017, most condominium conversions recorded before January 1, 2016, received 1st quarter tax bills on July 1, 2016. In the case of large scale conversions, or when inaccurate plans or other problems are encountered while reviewing recorded instruments, the Assessing Department will issue bills for those condominiums in the 3rd quarter. Most conversions recorded during calendar year 2016 will be billed in time for the 1st quarter of fiscal year 2018. Please refer to the timeline below for information about upcoming years:</p><div style="TEXT-ALIGN: center"><br /><table class="dark-blue" width="100%" border="1"><tbody><tr><td style="TEXT-ALIGN: center"><strong>Calendar Year Converted</strong></td><td style="TEXT-ALIGN: center"><strong>Conversion Reflected on 1st Quarter Tax Bills for Fiscal Year</strong></td></tr><tr><td style="TEXT-ALIGN: center">2015</td><td style="TEXT-ALIGN: center">2017</td></tr><tr><td style="TEXT-ALIGN: center">2016</td><td style="TEXT-ALIGN: center">2018</td></tr><tr><td style="TEXT-ALIGN: center">2017</td><td style="TEXT-ALIGN: center">2019</td></tr></tbody></table><br /><p>If you have questions, contact the Assessing Department Tax Data Administration unit at (617) 635-3783.</p></div>
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
			
			  paramVal1 = "tcm:3-12922-64"
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
		
		 'paramVal1 = "tcm:3-12922-64" 
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