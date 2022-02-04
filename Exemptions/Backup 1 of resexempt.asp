<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Residential Exemption | City of Boston</title>
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
        
          paramVal1 = "tcm:3-14133-64"
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
<div id="content_main_hd"><div><h2>Residential Exemption </h2><p><p xmlns="http://www.w3.org/1999/xhtml">Since 1983, the City of Boston has offered a residential exemption to homeowners that occupy their property as the principal residence.</p><p xmlns="http://www.w3.org/1999/xhtml"><br />
Taxpayers who own and occupy their home can save on their tax bill by having a portion of their tax bill exempted from taxation. To qualify for the residential exemption, homeowners must own and occupy their home on January 1 preceding the start of the fiscal year.
<br /><br />
The value of the exemption is subtracted from the total full valuation. The fiscal year residential exemption is 30% of the average value of all residential property in the City.</p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is the Residential Exemption?</dt><dd class="hide" style="display:none;"><p>The City of Boston offers a residential exemption to property that serves as a property owner's principal residence. To be eligible, the owner must occupy the property as their principal residence on January 1 preceding the fiscal year for which they are applying. A fiscal year runs from July 1st to the following June 30th.</p><p><strong><br />
Examples:</strong></p><p><br />
Fiscal Year 2016 (July 1, 2015 - June 30th, 2016): To be eligible for the residential exemption, the property owner must have owned and occupied their property on January 1, 2015.
<br /></p><br /><p>Fiscal Year 2017 (July 1, 2016 - June 30, 2017): To be eligible for the residential exemption, the owner must have owned and occupied their property on January 1, 2016.</p><p><br />
The residential exemption is applied to the Fiscal Year Third Quarter tax bill that is issued in late December.
<br /></p><br /><p><em>Taxpayers who have received a residential exemption for any given fiscal year are sent a renewal application the following fall for the next fiscal year.</em></p></dd></dl><dl class="faq"><dt>Who Can Apply?</dt><dd class="hide" style="display:none;"><p>A taxpayer who owns and occupies residential property as their principal residence as of January 1 may apply for the residential exemption.
<br /><br />
For the purpose of this exemption, <strong>the principal residence is the address from which your Massachusetts income tax return is filed.</strong> To verify eligibility, your Social Security Number is required for identification purposes. The information will be kept confidential and be used solely to confirm a personal income tax filing from your address with the Commonwealth of MA Department of Revenue.
<br /><br />
An individual owner may qualify for a residential exemption on <strong>ONE</strong> parcel only.</p><br /><p>For details and requirements: See <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51483", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 Residential Exemption</a>.</p></dd></dl><dl class="faq"><dt>When must an application be filed?</dt><dd class="hide" style="display:none;"><p>The Residential Exemption appears on the Fiscal Year 3rd Quarter tax bill. Owners who do not receive a credit on this bill - and believe they may be entitled to a Residential Exemption - must file an application for a Residential Exemption with the Assessing Department by April 1 of the tax year.
<br /></p><p>The filing deadline: See the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51483", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >2016 Residential Exemption</a>.</p></dd></dl><dl class="faq"><dt>How do I apply?</dt><dd class="hide" style="display:none;"><p>Application forms are available at the Assessing Department, Room 301, City Hall or at the Taxpayer Referral & Assistance Center (TRAC), Rm M5, City Hall. The TRAC (617-635-4287) is open Monday through Friday from 9am - 5pm.</p><br /><p>You may also apply online for the residential exemption beginning on January 1st of the tax year until the filing deadline. To access the form for your property, go to <a href="http://www.cityofboston.gov/assessing/search/" title="Assessing Online">Assessing Online</a> and enter identifying information such as parcel ID, last name, or street address in the search box. Click on "Details" among the search results associated with your property. On the property summary screen, click on the link to "file a Residential Exemption Application for FY2014". If a residential exemption has already been granted for the given tax year then this will be noted in the "Abatements/Exemption" section. Please note that applicants must print out their online residential exemption application and return it to the Assessing Department, Room 301, City Hall OR to the Taxpayer Referral & Assistance Center (TRAC), mezzanine level, City Hall by March 31, 2014.</p><p>Or you can visit the City Hall to Go Truck in Your Neighborhood
<br /><a href="/cityhalltogo">View Schedule</a></p></dd></dl><dl class="faq"><dt>May other exemptions apply?</dt><dd class="hide" style="display:none;"><p>The Residential Exemption is granted in addition to any other personal exemption to which a taxpayer may be entitled. However, no parcel of real estate may be assessed for less than ten percent (10%) of its fair cash value. There is an exception for certain persons with physical infirmities and financial hardship.</p></dd></dl><dl class="faq"><dt>What is the Residential Exemption Review Process? </dt><dd class="hide" style="display:none;"><p>The Taxpayer Referral & Assistance Center (TRAC) has three (3) months from the date on which the application was filed to determine the merits of the application.
<br /><br />
The filing of an application does not mean that you can postpone the payment of your tax. The tax appearing on each of the quarterly tax bills must be paid in full. If the application for Residential Exemption is subsequently approved, the Office of the Collector-Treasurer will issue a refund.</p></dd></dl><dl class="faq"><dt>How is the value of the exemption calculated?</dt><dd class="hide" style="display:none;">A residential exemption is the dollar value that is exempt from taxation. Homeowners who qualify benefit by having a portion of their property value exempt from taxation. If, for example, the residential exemption value were $95,000, a home with an assessed value of $295,000 would be taxed on just $200,000 of value. This exemption value, when multiplied by the current residential tax rate, represents the dollar savings amount of the exemption.</dd></dl><dl class="faq"><dt>Compliance with Requirements</dt><dd class="hide" style="display:none;">The Assessing Department conducts periodic reviews to ensure that only those owners who actually occupy their property as their principal residence receive the exemption. Owners who do not comply with the requirements of the residential exemption - or who fail to respond to requests for documentation - will lose the exemption benefit.
<br /></dd></dl><dl class="faq"><dt>Appeal of Decision</dt><dd class="hide" style="display:none;">If the application is denied, the taxpayer may file an appeal to the Commonwealth of Massachusetts Appellate Tax Board (ATB) within three (3) months of the date on which the TRAC made its decision. The ATB is located at 100 Cambridge Street, 2nd floor Suite 200, Boston, MA 02114. The telephone number is (617) 727-3100.</dd></dl></dd></dl></div>

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
			
			  paramVal1 = "tcm:3-14133-64"
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
		
		 'paramVal1 = "tcm:3-14133-64" 
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


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51483", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-51483" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-51483" tridion:type="Multimedia" tridion:targetattribute="href">2016 Residential Exemption</a></li>
                                                                

          				
                                                                        <li><a href="http://www.mass.gov/legis/laws/mgl/59-5c.htm" target="_blank" class="_external">Massachusetts General Laws - Residential Exemption</a></li>
                                                                

                                                                

          				

                                                                
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