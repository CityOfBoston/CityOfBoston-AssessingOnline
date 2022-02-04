<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Real Estate Taxes - Tax Bills and Payments | City of Boston</title>
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
        
          paramVal1 = "tcm:3-16196-64"
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
<div id="content_main_hd"><div><h2>Real Estate Taxes, Tax Bills and Payments</h2><p></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dd><h5>Tax Bills</h5></dd><dd><dl class="faq"><dt>What's the difference between the calendar year and the fiscal year?</dt><dd class="hide" style="display:none;"><p>The City of Boston operates on a Fiscal Year basis for tax billing purposes. The Calendar year is January 1 - December 31. The Fiscal Year is July 1 -June 30.</p><br /><p><strong>Fiscal Year 2017 runs from July 1, 2016 - June 30, 2017.</strong></p></dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>When are real property tax bills mailed and payments due?</dt><dd class="hide" style="display:none;"><p>The City of Boston employs a Quarterly tax billing system. Tax bills are mailed four times a year:</p><br /><p>1st Quarter - July 1st
<br />
2nd Quarter - October 1st
<br />
3rd Quarter - January 1st
<br />
4th quarter - April 1st.</p><br /><p>The bills are sent thirty (30) days prior to the dates they are due. The quarterly tax payments are due thirty days from the date the tax bill is issued on the following dates:</p><br /><p>August 1st
<br />
November 1st
<br />
February 1st
<br />
May 1st</p><br /><strong><em>NOTE: if the 1st of the month falls on a weekend, taxes and abatement applications are due the first Monday immediately following the 1st.
<br /><br /></em></strong> If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5:00 p.m., Monday through Friday.</dd></dl><dl class="faq"><dt>What happens if I do not pay my tax bill?</dt><dd class="hide" style="display:none;">Tax payments must be received on or before the due date to avoid interest charges. If payment is not made within 30 days of the original date of mailing, the account will begin to accrue interest at the rate of 14% per annum, computed from the date the bill was due.
<br /><br />
In addition, a demand notice will be sent and a demand fee of $5.00 is charged against the account. If the account remains outstanding 14 days after the issuance of the demand notice, a warrant notice is sent. The warrant fee is $12.00.
<br /><br />
Please note that demand and warrant notices are sent only on the third and fourth quarter bills.
<br /><br />
If the account remains delinquent after June 30th of the fiscal year, a tax lien (a legal claim placed on property for debt) is placed on the property and is recorded with the Suffolk County Registry of Deeds. In addition, the property is placed in the tax title system. A tax lien is the first step in the foreclosure process. All taxes, costs and interest must be paid to prevent foreclosure.
<br /><br />
If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5:00 p.m., Monday through Friday.
<br /></dd></dl><dl class="faq"><dt>I did not receive my tax bill? How do I request a copy of my tax bill?</dt><dd class="hide" style="display:none;">You may request a duplicate tax bill via the Assessing <a href="http://www.cityofboston.gov/assessing/contactform.asp"><font color="#0033CC">Contact Form</font></a> or calling the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287. Have your ward and parcel number on hand when you call. Duplicate tax bills are sent via regular mail only or may be picked up in person at the TRAC office
<br /></dd></dl><dl class="faq"><dt>What should I do if I recently sold my property, but I am still receiving a tax bill?</dt><dd class="hide" style="display:none;">If you receive a bill, please forward it to the new owner immediately as it is his/her responsibility to make payment.</dd></dl><dl class="faq"><dt>How do I change my tax bill mailing address?</dt><dd class="hide" style="display:none;"><p>If you have a new address and want your bill mailed there permanently, you can use the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9227", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Real Estate Change of Tax Bill Mailing Address Form</a> or call the TRAC office at 617-635-4287 to request a form.  Fill out the form and return it directly to Assessing Tax Data Administration, Room 301, Boston City Hall, Boston, MA 02201.
<br /></p></dd></dl><dl class="faq"><dt>Who is responsible for the taxes if a property is sold after January 1?</dt><dd class="hide" style="display:none;">Although the tax bill will bear the name of the assessed owner as of January 1, the new owner is responsible for all taxes once the sale of the property is finalized. The amount of tax owed by the old owner is determined at the time of closing and is typically deducted from the selling price. Once this deduction is made, the new owner must pay all bills, as they become due in order to avoid collection actions, including foreclosure. The lawyers assisting each party should already have investigated any outstanding taxes and obtained a Municipal Lien Certificate. Once the agreement is made, the new owner is obligated to pay any outstanding taxes due on the property.
<br /></dd></dl><dl class="faq"><dt>How can I change the tax bill to my name, after purchasing a parcel of property?</dt><dd class="hide" style="display:none;">New owners at the time of recording your deed should be sure to fill out the Assessing Department card, "Mail Address Change Form" given to you with the Municipal Lien Certificate.
<br /><br /><strong>NOTE:</strong> You should NOT use a change of address form to change the name on a tax bill, nor should you attempt to inform us of a change by sending a tax bill with the previous owner's name crossed out and the new owners name written in.
<br /><br />
The Collecting Division is required by Massachusetts General Law to bill the assessed owner as of January 1, and must issue the bill of the same fiscal year (July 1 to June 30) to the owner as of January 1.
<br /><br />
The name will change automatically on the next fiscal year bill. If, after the passage of time, the name still is not changed on the bill, please contact Assessing Department Tax Data Administration unit at (617) 635-3783.
<br /><br />
You can change your tax bill mailing address however. Print out the <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-7610", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Property Tax Bill Change of Mailing Address Form</a>, complete the form and send it directly to Assessing Tax Data Administration, Room 301, Boston City Hall, Boston, MA 02201. Or, you can call the TRAC and request the form at (617) 635-4287.
<br /></dd></dl><dl class="faq"><dt>Why am I receiving 2 tax bills this year - 1 for my condo unit and 1 for my parking space - when I only received one tax bill for both the condo unit and parking last year?</dt><dd class="hide" style="display:none;">As part of the Assessing Department's commitment to maintaining accurate, consistent and up-to-date property data throughout the city, it may be determined that the parking associated with a condo unit should be billed separately. As such, a condo owner may begin receiving two bills - one for the condo unit (listed as Class: CD) and one for the condo parking space (listed as Class: CP) - when they received only one bill for both components in the past. In such a case, the parking space property value that was previously included in the value of the condo is removed and forms the basis of the new parking space tax bill. Both bills will require payment, since they collectively represent the value of the unit and its parking.</dd></dl><dd><h5>Tax Payments</h5></dd><dd><dl class="faq"><dt>How can I obtain tax bill payments information?</dt><dd class="hide" style="display:none;"><p>Go to <a href="http://www.cityofboston.gov/assessing/search"><font color="#0033CC">Assessing–On-line</font></a> on the menu. Complete the input screen for the particular property you are searching for. When you have accessed the property screen click on <strong>Tax Payments</strong>.</p></dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>Why should I pay interest on a late payment when I never received my tax bill?</dt><dd class="hide" style="display:none;">Under state law, failure to receive a bill does not affect the validity of the tax or any interest or fines incurred due to late payment(s).
<br /><br />
It is the responsibility of the taxpayer to secure his/her tax bill when one is not received. You can request a Duplicate Tax Bill via the Assessing <a href="http://www.cityofboston.gov/assessing/contactform.asp"><font color="#0033CC">Contact Form</font></a> or by calling the Taxpayer Referral & Assistance Center (TRAC) at (617) 635-4287 to request the bill. Actual duplicate tax bills are sent via regular mail only or may be picked up in person at the TRAC Office. The TRAC Office will mail you a duplicate bill on request. However, the request must be received early enough to allow sufficient time to avoid late charges.
<br /></dd></dl><dl class="faq"><dt>What happens if the check I mail is returned due to insufficient funds, or signature?</dt><dd class="hide" style="display:none;">If your check is returned due to insufficient funds, absence of signature, the account will have the same status as an 'unpaid' account. It is the Collecting Division's policy not to redeposit checks. The Collecting Division's Teller Operations makes every effort to notify via first class mail. Also, you should receive notice from your bank of the bad check and your bank statement will reflect that the check has not been cashed.
<br /><br />
As provided by law, a penalty charge of $25.00 or if check is greater than $2,500.00, 1% of the amount of the check (whichever is greater) will be assessed to your tax account for each bad check received, in addition to any other fees and interest applicable. You should, therefore, mail or submit in person a replacement certified or registered check.
<br /><br />
If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5p.m., Monday through Friday.
<br /></dd></dl><dl class="faq"><dt>What happens when a tax bill is paid, but you receive a demand notice for tax not paid or, you find out that you overpaid?</dt><dd class="hide" style="display:none;"><strong>Proof of Payment
<br /></strong> The Collecting Division proof of payment policy is based on guidelines issued by independent auditors. Any request for an adjustment in payment, such as a transfer of funds or a refund, must meet the following requirements:
<br /><br />
Request must be in writing.
<br /><br />
Photocopies of the front and back of the canceled check(s) applied to the account or original receipts of all payments applied to the account (or any combination of the two) must be submitted.
<br /><br />
If one check was issued to pay more than one account, (as many banks and mortgage companies usually do) in addition to the photocopy of the front and back of the canceled check(s) used to pay the account, you must provide a list of all the ward and parcel numbers which said check was to pay.
<br /><br />
For payments made by money order, a photocopy of the original money order, not the "non-negotiable consumer's copy: ' is required.
<br /><br /><strong>On receipt of the written request and submission of complete documentation, our research staff examines the information verifying such with our records.
<br /><br /></strong> If you require additional assistance, please contact the Collector Treasurer at (617) 635-4131, or visit the customer service window (M-31) on the Mezzanine level of Boston City Hall between 9:00 a.m. and 5:00 p.m., Monday through Friday.
<br /></dd></dl><dd><h5>Tax Payments</h5></dd><dd><dl class="faq"><dt>Can I pay my real estate tax bill online?</dt><dd class="hide" style="display:none;"><p>Yes, The City of Boston has a new property tax online-bill payments program. You can pay property tax bills online using direct debit from your checking or savings account.
<br /></p><p><a href="http://www.cityofboston.gov/realestate/default.asp"><font color="#0033CC">Pay Online</font></a><br /><br /><strong>Note</strong>: Online payment services are closed daily from 11PM to midnight. For questions regarding tax bill payments Contact the Collector's office at (617) 635-4136
<br /></p></dd></dl><dl class="faq"><dt>Can I pay my real estate tax bill in person?</dt><dd class="hide" style="display:none;">Yes, the City of Boston's Collecting Division is located on the Mezzanine Level at window 31 (M-31), and is open Monday-Friday 9:00-5:00 pm.</dd></dl></dd><dd><h5>Tax Payment Records</h5></dd><dd><dl class="faq"><dt>How do I obtain PRIOR fiscal year taxes owed information?</dt><dd class="hide" style="display:none;">Call the Collector's office at (617) 635-4131 or 4132.</dd></dl></dd><dd><h5></h5></dd><dd><dl class="faq"><dt>How do I obtain CURRENT fiscal year taxes owed information?</dt><dd class="hide" style="display:none;">Call the Taxpayer Referral & Assistance Center at (617) 635-4287.</dd></dl></dd></dl></div>

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
			
			  paramVal1 = "tcm:3-16196-64"
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
		
		 'paramVal1 = "tcm:3-16196-64" 
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


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9227", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-9227" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-9227" tridion:type="Multimedia" tridion:targetattribute="href">Real Estate Change of Tax Bill Mailing Address Form</a></li>
                                                                

          				
                                                                        <li><a href="https://payments.cityofboston.gov/realestate/">Pay Real Estate Property Tax (CURRENT tax year)</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.cityofboston.gov/contact/?id=102">Contact Collector's Office </a></li>
                                                                

                                                                


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