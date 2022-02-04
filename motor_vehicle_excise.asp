<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Motor Vehicle Excise | City of Boston</title>
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


	   
    
	
         
            <div id="hd_inner" class="hd_default" style="background:url(/Images_Documents/car1_tcm3-14266.jpg) no-repeat 235px 0px;">  
         
         
	
		
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
        
          paramVal1 = "tcm:3-6034-64"
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
<div id="content_main_hd"><div><h2>Motor Vehicle Excise</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>What is motor vehicle excise?</dt><dd class="hide" style="display:none;">Chapter 60A of Mass. General Laws imposes an excise on the privilege of registering a motor vehicle or a trailer in the Commonwealth of Massachusetts. The excise is levied annually in lieu of a tangible personal property tax. Non-registered vehicles, however, remain subject to taxation as personal property.
<br /><br />
The excise is levied by the city or town where the vehicle is principally garaged and the revenues become part of the local community treasury.
<br /><br />
The Registry of Motor Vehicles prepares data for excise bills according to the information on the motor vehicle registration and sends it to city or town assessors. Cities and towns then prepare bills based on excise data sent by the Registry in conformity with Department of Revenue requirements.
<br /></dd></dl><dd><h5>Motor Vehicle Valuation</h5></dd><dd><dl class="faq"><dt>How is the excise determined?</dt><dd class="hide" style="display:none;">The amount of the excise is based on the value of the motor vehicle that is based upon the manufacturer's list price.
<br /><br />
Various percentages of the manufacturer's list price are applied. The formula is as follows:
<br /><br /><ul><li>In the year preceding the designated year of manufacture
<br />
(brand new car released before model year) - 50%</li><li>In the designated year of manufacture- 90%</li><li>In the second year - 60%</li><li>In the third year - 40%</li><li>In the fourth year - 25%</li><li>In the fifth and succeeding years -10%</li></ul><p><br /><strong>Calculating the excise</strong></p><br /><div>Once the value of the vehicle is determined, an excise at the rate of $25.00 per thousand is assessed. Excises are assessed annually, on a calendar year basis, by the assessors of the city or town in which the vehicle is garaged.
<br /><br />
If the motor vehicle is registered after January 31, it is taxed for the period extending from the first day of the month in which it is registered to the end of the calendar year. For example, if a vehicle is registered on April 30, it will be taxable as of April 1, for the nine months of the year (April through December) and the excise due therefore, will be 9/12 of the full excise. In no event shall the excise be assessed for less than $5.00 nor shall an abatement or refund under Section 1 of Chapter 60A reduce an excise to less than $5.00.</div></dd></dl></dd><dd><h5>Motor Vehicle Excise Tax Payment</h5></dd><dd><dl class="faq"><dt>How do I pay the motor vehicle excise? Can I pay online?</dt><dd class="hide" style="display:none;"><p>Yes, to pay your Motor Vehicle Excise tax visit: <a href="http://www.cityofboston.gov/excise" title="Motor Vehicle Excise Tax Payment Online">Motor Vehicle Excise Tax Payment Online</a>.
<br /><br /></p><p>In person, you can visit the Collecting Division Customer Service window M-1 (Mezzanine level) at City Hall, Monday-Friday 9-5pm.</p><p>or
<br /></p><p>Visit the City Hall to Go Truck in Your Neighborhood
<br /><a href="/cityhalltogo">View Schedule</a></p></dd></dl></dd><dd><h5>Motor Vehicle Excise Tax Abatement</h5></dd><dd><dl class="faq"><dt>When is payment due?</dt><dd class="hide" style="display:none;"><div><strong>Payment of the motor vehicle excise is due within 30 days from the date the excise bill is issued (not mailed, as is popularly believed).
<br /></strong></div><div><strong><br /></strong><em>NOTE: A person who does not receive a bill is still liable for the excise plus any interest charges accrued. Therefore, it is important to keep the Registry and the US post office informed of a current name and address so that excise bills can be delivered promptly. All owners of motor vehicles must pay an excise tax; therefore, it is the responsibility of the owner to contact the TRAC office if you have not received a bill.</em><br /></div></dd></dl><dl class="faq"><dt>What happens if my payment is late?</dt><dd class="hide" style="display:none;">If an excise is not paid within 30 days from the issue date, the local tax collector sends a demand. The charge for the demand is $5. Interest accrues on the overdue bill from the day after the due date until the date of payment at an annual rate of 12 percent.
<br /><br />
If the demand is not answered within 14 days, the collector may issue a warrant to the deputy tax collector or an appointed agent. The taxpayer is then additionally liable for a warrant fee of $5. The warrant notice sent by the deputy collector (or the appointed agent) to the taxpayer costs $14.
<br /><br />
If this notice is not answered than a final warrant, a service warrant will be delivered or exhibited to the taxpayer at his/her residence or place of business at a fee of $14. All bills should clearly state the interest and penalty charges.
<br /></dd></dl><dl class="faq"><dt>How does non-payment of motor vehicle excise affect license and registration?</dt><dd class="hide" style="display:none;">If the service warrant demanding final payment is ignored, the collector may then notify the Registrar of Motor Vehicles of such non-payment, including all accrued interest and penalty fees. The Registrar may then mark the individual's registration preventing the renewal of the motor vehicle registration and the owner's driver's license until such time as the Registrar is notified that full and final payment has been made to the city or town. This payment shall include a $20 release fee as final settlement of the delinquent excise. Once the bill had been paid, the municipality will give the motorist a receipt so he or she can return to the Registry to register his/her vehicle.
<br /><br />
Although the local tax collectors do notify the Registrar that the matter is resolved, it is strongly advised to retain the certified receipt of payment for presentation to the Registry of Motor Vehicles. Cities and towns relay computerized notification that excise bills have been paid only periodically to the Registry.
<br /><br />
Under the excise tax law, tax collectors have six years from the issue date of a bill to notify the Registry of non-payment by a driver (M.G.L. c.60A, s2A), unless the tax record shows a history of non-payment. However, under the Registry's own policy, this notification time has been reduced to just two years. If the record does show a history of delinquency, the tax collectors can electronically mark the driver's record and institute proceedings to collect for as many years back (beyond six years, in other words) as necessary and notify the Registry. The Registry, in turn, reviews each notification beyond two years individually. If a taxpayer has had a good history of payment and suddenly receives a bill dating back more than six years, the assessors will assign a tax collector to collect the bill; the tax collector, in turn, will attempt to collect and assess late fees and penalties, as is required by law, if applicable. However, the collector can no longer mark the driver's record for non-payment since the Registry only allows two years for notification from the issue date of the bill. Thus, the taxpayer's ability to renew the license, in this instance, is not hampered; but the bill must still be resolved with the local tax collector.
<br /><br />
For questions further information, contact the Tax Delinquent Service Office at 1-866-432-3713.</dd></dl><dl class="faq"><dt>How can I obtain a motor vehicle excise abatement form?</dt><dd class="hide" style="display:none;"><p>Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR you can access the form under <em>Related Links</em> at right. Follow the directions on the form and send it to the TRAC office.
<br /><br /><em>NOTE: On unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.
<br /></em><br /><strong>NEW REQUIREMENTS</strong><br /></p><p>The TRAC office must receive applications within 3 years after the excise is due OR within one year after the excise is paid.</p><br /><strong>Example:</strong> Assume that an excise tax bill is due on February 25, 2016. The abatement deadline would be February 25, 2019, OR one year after the payment of the bill, whichever is later.</dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>Under what circumstances might motor vehicle excise abatement be warranted?</dt><dd class="hide" style="display:none;"><p>Abatements can be filed if:
<br /></p><ul><li><p>the owner believes the assessment is incorrect, or</p></li><li><p>if the vehicle was traded, or</p></li><li><p>if the vehicle was stolen, or</p></li><li><p>if the vehicle was sold during the year in which it is being taxed and the registration was properly cancelled, or</p></li><li><p>if the owner moved from the City of Boston to another city or town, or before January 1</p></li><li><p>if the owner moved to another state and registered the vehicle and cancelled the registration in Massachusetts, or</p></li><li><p>If the registration is cancelled, it is most important to return the plate(s) to the Registry of Motor Vehicles and to obtain a return plate receipt.</p></li></ul><br /><p>When abatement is granted, excise bills are prorated by the month, thus the owner is responsible for the excise accrued through the month in which the car was last registered to him/her.
<br /></p></dd></dl><dl class="faq"><dt>What if I've moved out of Boston?</dt><dd class="hide" style="display:none;"><p>If a motor vehicle owner moves within Massachusetts and has not paid an excise tax for the current year you should:
<br /></p><br /><ul><li>Pay the motor vehicle excise to the city or town in which you resided  on January 1</li><li>File an application with the Taxpayer Referral & Assistance Center (TRAC) office for abatement together with the following:
<ol><li>proof of garaging as of January 1 of the billing year and</li><li>a copy of the Insurance Policy (cover selection page) as of January 1 of the tax year.</li></ol></li></ul><p><br />
Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.
<br /></p><br /><p><em>If the owner moved before the first of the year, he/she must pay the tax to the new community to which the owner moved. If the owner did not notify the Registry, the local assessor, and the post office that he/she moved before the first of the year, it may be necessary to file for an abatement with the former city or town which had sent the excise bill. Most cities or towns will dismiss the bill and reroute it to the new community once the owner furnishes proof that he/she had moved before the first of the year.</em></p></dd></dl><dl class="faq"><dt>What if I sold my car?</dt><dd class="hide" style="display:none;"><p>If an excise bill is received for a vehicle or trailer that has been sold, the seller must:</p><br /><ul><li><p>Return the plate(s) to the Registry of Motor Vehicles, obtain a return plate receipt</p></li><li><p>File an application with the Taxpayer Referral & Assistance Center (TRAC) office for abatement together with the following:</p><ol><li><p>return plate receipt and the bill of sale OR</p></li><li><p>New Registration Form</p></li></ol></li></ul><p><br />
Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.</p><br /><p dir="ltr"><em><strong>NOTE:</strong> It is important to remember that the bill for a vehicle you no longer own should not be ignored. On unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.</em><br /></p></dd></dl><dl class="faq"><dt>What if I traded my car?</dt><dd class="hide" style="display:none;"><p>If an excise bill is received for a vehicle, which was traded, and which was not owned in the calendar year stated on the bill, it is recommended to:
<br /></p><br /><ul><li><p>Pay the bill, and file an application for abatement with the TRAC office.</p></li><li><p>Provide a copy of the New Registration form OR Plate Return Receipt AND Purchase Agreement citing vehicle as Trade-in.</p></li><li><p>Pay the bill, and provide a copy of the registration for the new vehicle that indicates the date of transfer together with an application for abatement to the TRAC office. </p></li></ul><br /><p>Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.  
<br /><br /><em><strong>NOTE:</strong> On unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.</em></p><br /><p>TRAC can then adjust the bill to reflect the ownership for only part of the year, and grant the proper abatement. The bill is prorated back to the last day of the month in which the vehicle was owned and the excise bill on the new vehicle will be prorated as of the date the new vehicle was registered.</p></dd></dl><dl class="faq"><dt>What if my car is stolen?</dt><dd class="hide" style="display:none;"><p>If the vehicle is stolen and not recovered within 30 days, the owner will be entitled to an abatement if he/she provides TRAC with a copy of the following documentation:</p><br /><ul><li>Insurance Company Settlement Letter AND C-19 form (Affidavit of Lost or Stolen plate) from the Registry of Motor Vehicles OR</li><li>New Registration if plate transferred</li></ul><br /><p><em><strong>NOTE:</strong> Falsely reporting the theft of a motor vehicle or trailer will result in severe penalties and a person may be charged up to three times the excise due on the vehicle for an entire year.</em></p><br /><p>Contact the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 for an application for abatement OR access the form under <em>Related Links</em> on the right. Follow the directions on the form and send it to the TRAC office.</p><br /><p><strong>NOTE:</strong> on unpaid excise tax bills, an owner risks incurring late fees and penalties if an abatement is not granted.
<br /></p></dd></dl><dd><h5>Motor Vehicle Excise Tax Exemptions</h5></dd><dd><dl class="faq"><dt>Am I eligible for any exemptions?</dt><dd class="hide" style="display:none;">The City of Boston has accepted Chapter 6GA, Section 1 of the Massachusetts General Laws that provides excise tax exemptions for vehicles owned by certain disabled individuals and veterans, ex-prisoners of war and their surviving spouses and certain charitable organizations. Please contact the Taxpayer Referral & Assistance Center (TRAC) for further details on eligibility.
<br /></dd></dl></dd><dd><h5>Questions & Information</h5></dd><dd><dl class="faq"><dt>Where can I get more information about motor vehicle excise?</dt><dd class="hide" style="display:none;">Questions about your motor vehicle excise should be directed to the Taxpayer Referral & Assistance Center. It is best to put all questions in writing and to request a written response so that procedures are clearly defined should additional difficulties arise. You can email Assessing via the <a href="http://www.cityofboston.gov/assessing/contactform.asp"><font color="#0033CC">Contact Form</font></a>. Indicate Motor Vehicle Excise as subject.
<br /></dd></dl></dd></dl></div>

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
			
			  paramVal1 = "tcm:3-6034-64"
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
		
		 'paramVal1 = "tcm:3-6034-64" 
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


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-29933", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-29933" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-29933" tridion:type="Multimedia" tridion:targetattribute="href">Motor Vehicle & Trailer Excise Manual</a></li>
                                                                

          				
                                                                        <li><a href="https://payments.cityofboston.gov/excise/">Motor Vehicle Excise Tax Payment Online</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="https://payments.cityofboston.gov/excise/faqs.asp">Motor Vehicle Excise Payments FAQ</a></li>
                                                                

                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-7583", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-7583" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-7583" tridion:type="Multimedia" tridion:targetattribute="href">Motor Vehicle Excise Abatement Form</a></li>
                                                                

          				
                                                                        <li><a href="http://www.mass.gov/legis/laws/mgl/gl-90-toc.htm" target="_blank" class="_external">Mass. General Laws Chapter 90: Motor Vehicles</a></li>
                                                                

                                                                


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