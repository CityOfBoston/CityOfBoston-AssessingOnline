<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Boat Excise | City of Boston</title>
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


	   
    
	
         
            <div id="hd_inner" class="hd_default" style="background:url(/Images_Documents/boatsmoored_tcm3-13732.jpg) no-repeat 235px 0px;">  
         
         
	
		
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
        
          paramVal1 = "tcm:3-6030-64"
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
<div id="content_main_hd"><div><h2>Boat Excise Tax/ Mooring Permit</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dd><h5>Boat Valuation</h5></dd><dd><dl class="faq"><dt>How is the valuation of boats determined?</dt><dd class="hide" style="display:none;">We follow guidelines set by the Commonwealth of Massachusetts (refer to MGL Chapter 60B) as shown below. Boats are taxed at a rate of ten dollars ($10) per thousand of valuation.
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
If you have <strong>general questions</strong> about the mooring permit ordinance/application, please contact please contact Treasury at <a href="mailto:Collecting@cityofboston.gov">Collecting@cityofboston.gov</a></dd></dl></dd></dl></div>

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
			
			  paramVal1 = "tcm:3-6030-64"
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
		
		 'paramVal1 = "tcm:3-6030-64" 
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


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9220", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-9220" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-9220" tridion:type="Multimedia" tridion:targetattribute="href">Boat Excise Tax Abatement Form</a></li>
                                                                

          				
                                                                        <li><a href="https://payments.cityofboston.gov/boats/">Pay Boat Excise Tax</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.cityofboston.gov/police/divisions/harborpatrol.asp">City of Boston Harbor Master</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/dfwele/dle/elereg.htm" target="_blank" class="_external">Massachusetts Environmental Police/Boat Bureau (Massachusetts documented boats)</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.uscg.mil/hq/cg5/nvdc/default.asp" target="_blank" class="_external">National Vessel Documentation Center (federal documented boats)</a></li>
                                                                

                                                                


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