<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Triennial Revaluation | City of Boston</title>
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
        
          paramVal1 = "tcm:3-16970-64"
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


                  <div class="image_wrap1"><div class="image_wrap2">
                         <img src="/images_documents/assessing%20house_tcm3-8697.jpg"  alt="Townhouse (125)" >
                  </div></div>

	  <div class="content float_150">
                  <h2>Triennial Revaluation</h2>
                  
	  </div>




</div>




<div class="content_main_sub">
                      <p>Massachusetts law requires that all property be assessed at its fair cash value - what a willing buyer would pay to a willing seller. The rationale for full value assessments is equity. Two houses of equal value should be assigned equal assessments.</p><p>The Assessors of each community are responsible for developing a program to accomplish a fair cash valuation of all property within the community. A continuing program of equalization must be developed in order to maintain fair cash value and to meet the triennial certification requirement established by law.</p><p><strong>Data Collection/Analysis</strong></p><p>Important components of a continuing equalization program include a periodic inspection of properties undergoing renovation, or that have sold; performing sales-ration analysis by location and style of property; and a continuing program of updating assessment maps.</p><p>Inspection of the principal structures of a parcel is an important aspect of the revaluation program. Assessors will inspect each structure unless permission to inspect is denied. Where inspection is denied, the assessor will estimate the data sought based upon observation of the structure and neighborhood.</p><p>If the occupant is not home, several additional attempts are usually made to visit the home. Usually a notification will be left at the home informing the owner that an unsuccessful visit has been made and that the owner should contact the assessor's office to arrange for an appointment. If no appointment is made, the data collector will estimate the value in the same manner as if access were denied.</p><p><strong>How Values are Determined</strong></p><p>The job of an assessor is to determine the market value of every parcel of property in the City as of January 1. In practice, there are three universally accepted approaches to value: market, income and cost.</p><p><em>Market Approach</em> - market sales of similar properties which sold in the year prior to January 1 are analyzed, compared and adjusted to forecast what the property would sell for on January 1. When there are many sales, the market approach is the most accurate and dependable tool in the determination of value. Most residential property is valued by the market approach.</p><p><em>Income Approach</em> - the income approach is most applicable to real estate that is normally bought and sold on the basis of its income-producing capabilities, such as retail stores, office buildings and industrial properties. The approach requires significant data such as rents, occupancy rates, operating expenses and investor requirements. The approach is most useful in valuing investment properties where sufficient market sales are not available.</p><p>The income approach considers the income stream that a property is likely to produce for an investor over a definite period of time. The process of capitalization converts the future benefits of ownership into present worth or market value. The elements of capitalization are income (I), rate (R) and value (V). The income approach formula is expressed as follows:  value equals income divided by rate (V - I/R).</p><p><em>Cost Approach</em> - The cost approach involves an estimate of the current reproduction or replacement cost of the building, deducting an estimate of depreciation (or loss of value from any cause) and then adding an estimated value of land. Reproduction cost is the amount of money necessary to erect a new structure that is an exact replica of the existing building. It is appropriate in the case of recent construction. Replacement cost is the expenditure necessary to build a new building in utility to the original and able to serve as a substitute in function. It is more applicable to older buildings.</p><p><strong>Final Correlation</strong></p><p>The final step in the appraisal process is to analyze the value indications from the cost, market, and income approaches and determine a single market value determination for the parcel of property.</p><p><strong>Certification of Values</strong></p><p>The Commissioner of Revenue determines triennially whether assessed values in the City represent full and fair cash valuation for each class of real and personal property. The City cannot implement the levy allocation provisions of the Classification Act unless the Commissioner has certified that local assessments reflect full and fair cash value. When the assessments are completed, the assessor submits a request for certification review to the Department of Revenue (DOR). The Bureau of Local Assessment within the DOR conducts a statistical analysis and performs a preliminary field review. If all of the standards have been met, the Bureau notifies the City of preliminary certification.</p><p>After receiving preliminary certification, the assessors implement a program of public disclosure intended to provide taxpayers with an opportunity to inquire about proposed assessments. Upon completion of the public information effort, the assessors are required to supply the Bureau of Local Assessment with a list of all parcels that will have a proposed final valuation greater than ten percent from the initial proposed valuation.</p><p>Once the community receives certification form the Bureau of Local Assessment that the proposed values represent full and fair cash values, the City starts the classification process.</p>
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
			
			  paramVal1 = "tcm:3-16970-64"
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
		
		 'paramVal1 = "tcm:3-16970-64" 
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



	<h2 class="header">Related Links/Revaluation</h2>


<ul>


          				
                                                                        <li><a href="http://www.mass.gov/dor" target="_blank" class="_external">Massachusetts Dept of Revenue</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/dor/local-officials/" target="_blank" class="_external">Massachusetts DOR/Division of Local Services</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.malegislature.gov/Laws/GeneralLaws/PartI/TitleIX/Chapter59/Section2a" target="_blank" class="_external">M.G.L. Chapter 59 s 2A Classification of Property</a></li>
                                                                

                                                                


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