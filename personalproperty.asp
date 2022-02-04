<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Personal Property | City of Boston</title>
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


	   
    
	
         
            <div id="hd_inner" class="hd_default" style="background:url(/Images_Documents/OfficePP_tcm3-15819.jpg) no-repeat 235px 0px;">  
         
         
	
		
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
        
          paramVal1 = "tcm:3-6036-64"
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
<div id="content_main_hd"><div><h2>Personal Property </h2><p><br xmlns="http://www.w3.org/1999/xhtml" />
Every business in the City of Boston is required by State Law to file a Form of List/State Tax Form 2 annually by March 1. All taxable personal property owned, held, or leased should be listed. (M.G.L. Chapter 59,  Section 29)
<br xmlns="http://www.w3.org/1999/xhtml" /><br xmlns="http://www.w3.org/1999/xhtml" /><strong xmlns="http://www.w3.org/1999/xhtml">Contact Information:</strong><br xmlns="http://www.w3.org/1999/xhtml" /><br xmlns="http://www.w3.org/1999/xhtml" /><em xmlns="http://www.w3.org/1999/xhtml">Telephone:</em> (617) 635-1165
<br xmlns="http://www.w3.org/1999/xhtml" /><em xmlns="http://www.w3.org/1999/xhtml">Email:</em><a xmlns="http://www.w3.org/1999/xhtml" href="mailto:PersonalProperty@boston.gov">PersonalProperty@boston.gov</a><br xmlns="http://www.w3.org/1999/xhtml" /><em xmlns="http://www.w3.org/1999/xhtml">Fax:</em> (617) 635-4145 - Attn: Personal Property
<br xmlns="http://www.w3.org/1999/xhtml" /><br xmlns="http://www.w3.org/1999/xhtml" /></p></div></div><div class="faq_set"><div id="divExpand">+Expand All Answers</div><dl class="faqgroup"><dl class="faq"><dt>Electronic Filing Requirement for State Tax Form 2/ Form of List</dt><dd class="hide" style="display:none;"><p>On January 1, 2013, The City of Boston adopted an electronic filing requirement for the submission of all personal property assets.  All owners of personal property, except those who demonstrate that electronic filing would present an undue hardship, are required to file electronically. Electronic filing serves to increase the efficiency and accuracy of the filing and review processes as well as significantly reduce the flow of paper. </p><p> 
<br />
Personal Property owners have the following filing options: 1) using our online filing website, or 2) filing in EXCEL by electronic mail or mailed data CD.</p><br /><ul><li>Online filing: In our January mailing, a username and temporary password were issued to all new account holders that will enable filers to enter, review and edit data until they are ready to make their final submission. If you took advantage of online filing last year, your account number/business ID is your User Name and you can use the password you created last year. Online filing link: <a href="https://assessppof.cityofboston.gov/BostonOnline/">https://assessppof.cityofboston.gov/BostonOnline/</a></li></ul><br /><ul><li>Filing an EXCEL spreadsheet: Click on the link that follows to access a formatted and downloadable EXCEL spreadsheet as well as instructions. <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-35439", "AA", "BB", "CC", true).URL %>" class="xls" >Electronic filing Spreadsheet</a></li></ul><p><br />
Paper copies of the State Tax Form 2/Form of List will be mailed to those who contact us and demonstrate the aforementioned hardship. The Personal Property Unit’s contact information is located at the top of this page.</p><p><br />
Please be advised that all information filed, whether electronically or on paper, is still subject to the confidentiality requirements of Massachusetts General Laws, Chapter 59, § 32.</p></dd></dl><dl class="faq"><dt>What is Personal Property?</dt><dd class="hide" style="display:none;">Personal property is "tangible" property (that is, physical), and is subject to the personal property tax unless exempted by statute. Tangible personal property ranges from the chairs in a barber shop to the furnishings of a doctor's waiting room, from the drills used by a dentist to the poles owned by a utility.</dd></dl><dl class="faq"><dt>Can Personal Property be Exempt?</dt><dd class="hide" style="display:none;"><p>Professional tools used by plumbers, carpenters, auto mechanics and other trades are exempt from the personal property tax. In legal terms, this exemption covers "tools of trade", (e.g., small tools that can fit in a tool box). Tools of other professionals not listed in the above paragraph are considered taxable. These include dentist's drills and X-ray machines. Computers are also subject to the personal property tax, but in cases where they are utilized by a corporation for internal purposes only (e.g., for such functions as internal accounting or administrative operations), these computers are not subject to taxation.
<br />
 
<br /><strong>Tangible</strong> personal property subject to some other type of local tax is also exempt from the personal property tax. Motor vehicle and trailer excise, ship and boat excise, the farm animal and equipment excise, and mobile home park license fees are all included in this category. For example, boats, fishing gear and nets - up to $10,000 in value - owned and used in a commercial fishing business are exempt.
<br />
 
<br /><strong>Intangible</strong> personal property is exempt from the personal property tax. Intangible property includes stocks, bonds, cash, mortgages and other evidence of ownership of property rights. Property owned by Individuals, Sole Proprietors, Partnerships, and Trusts.
<br />
    
<br />
In general, all tangible personal property located in Massachusetts is taxable unless expressly exempt.
<br />
 
<br /><strong>Properties Owned by Business Corporations</strong><br />
For business corporations, poles, underground conduits, wires, pipes (property generally owned by utility companies) and machinery used in the conduct of business are taxable. Taxable examples of "machinery used in the conduct of business" would include property used on behalf of that corporation's customers (e. g., using computers and equipment to process data on behalf of clients).
<br />
 
<br />
Exempt examples of "machinery" would include property directly used in any purchasing, selling, accounting or administrative function; inventory or stock in trade; or personal property directly used in connection with laundering or dry-cleaning processes, the refrigeration of goods or the air conditioning of the premises.
<br />
 
<br /><strong>Manufacturing Corporations (Domestic and Foreign)</strong><br />
The Commissioner of Revenue for the Commonwealth determines what is a manufacturing corporation. Machinery of a manufacturing corporation (domestic or foreign) is not subject to personal property taxation; however, poles, underground conduits, wires and pipes of manufacturing corporations are taxable.
<br />
 
<br /><strong>All Other Business Corporations
<br /></strong>Other business corporations such as insurance companies, public service corporations, utilities, savings banks and cooperative banks are subject to taxation on poles, underground conduits, wires and pipes, as well as machinery used in the manufacture or in the supply or distribution of water.</p></dd></dl><dl class="faq"><dt>Where is Personal Property Assessed?</dt><dd class="hide" style="display:none;">Generally, all tangible personal property is assessed in the city or town in which the personal property is situated as of January 1. The principal exception is in situations where personal property has only a temporary location as of January 1. In the latter case, the property is assessed at the residence of the owner.</dd></dl><dl class="faq"><dt>What is the State Tax Form 2/Form of List?</dt><dd class="hide" style="display:none;"><p><span>Each year, prior to March 1, all persons subject to taxation in a city or town must submit a list of all their personal property that is not exempt from taxation. These personal estate items must be included on the document known as the State Tax Form 2/Form of List.</span></p><p><span> </span></p><p><span>The City of Boston Board of Assessors requires that this information be filed electronically unless doing so would prove an undue hardship.</span></p><p><span> </span></p><p><span>For those taxpayers who demonstrate such hardship, blank State Tax Form 2/Forms of List are available at the Assessing Department, Personal Property Unit, Room 301, Boston City Hall, Boston, MA 02201 or by calling (617) 635-1165.</span></p><p><span> </span></p><p><span>Taxpayers are not required to estimate the value of the property included on the State Tax Form 2/Form of List. The Assessing Department will determine the valuation, based on standard reference tables. In the event that a taxpayer does not submit the list, the assessor will ascertain as best he can the personal estate belonging to the taxpayer and will estimate its value.</span></p><p><span> </span></p><p><strong><span>NOTE: The State Tax Form 2/Form of List is NOT open to public inspection.</span></strong></p><p><span> </span></p><p><strong><span>Penalty</span></strong></p><p><span>There is a penalty for failing to file the State Tax Form 2/Form of List pursuant to Massachusetts General Laws c. 59, §64. A personal property taxpayer's application for abatement may not be granted unless the taxpayer can show good cause for failure to file timely. Further, if the assessment of the personal estate exceeds by 50% the amount which would have been assessed had the list been timely filed, then only the amount which exceeds this 50% may be abated.</span></p><p><span> </span></p><p><strong><span>Audits</span></strong></p><p><span>The Assessing Department has the authority to audit personal books, papers, records and other data in order to determine the accuracy of reporting. The assessors may assess taxes on unreported or inaccurately reported taxable personal property discovered by the audit within 3 years and 6 months of the date a return is due or filed, whichever is later.</span></p><p><span> </span></p><p><span>The Assessing Department has conducted over 1000 audits over the past six fiscal years.</span></p></dd></dl><dl class="faq"><dt>What if I miss the March 1 filing deadline?</dt><dd class="hide" style="display:none;"><p>Contact the Assessing Department’s Personal Property Unit as soon as possible at (617) 635-1165, or by e-mail at <a href="mailto:PersonalProperty@boston.gov">PersonalProperty@boston.gov</a>. The filing deadline may be extended if sufficient reason can be shown for not filing on time. Not filing subjects the business to the maximum penalties.</p></dd></dl><dl class="faq"><dt>I need to change my business personal property tax bill mailing address. How do I do that?</dt><dd class="hide" style="display:none;"><p>Fill out the following form:  <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9221", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Business Change of Tax Bill Mailing Address Form</a><br /></p><p><br /><strong>Information Requests</strong></p><p>The Assessing Department may require an owner or lessee of personal property to provide certain information in writing, as may be reasonably necessary, to determine the actual fair cash valuation of the property. Failure to comply with the request within thirty (30) days will bar any appeal of the tax assessed, unless the owner or lessee was unable to comply with the request for reasons beyond his or her control. Any false statement that is knowingly made will also bar the taxpayer from any statutory appeal.</p></dd></dl></dd></dl></div>

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
			
			  paramVal1 = "tcm:3-6036-64"
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
		
		 'paramVal1 = "tcm:3-6036-64" 
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


          				
                                                                        <li><a href="https://assessppof.cityofboston.gov/BostonOnline/" target="_blank" class="_external">Personal Property Online Filing</a></li>
                                                                

                                                                

          				

                                                                
                                                                        <li><a href="http://cityofboston.gov/assessing/PPElecFiling.asp">Personal Property Electronic Filing</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-35443", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-35443" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-35443" tridion:type="Multimedia" tridion:targetattribute="href">Personal Property Fact Sheet</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-9221", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-9221" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-9221" tridion:type="Multimedia" tridion:targetattribute="href">Business Change of Tax Bill Mailing Address Form</a></li>
                                                                

          				
                                                                        <li><a href="http://www.mass.gov/dor/local-officials/municipal-finance-law/frequently-asked-questions-personal-property.html" target="_blank" class="_external">Massachusetts Department of Revenue - Personal Property</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="https://payments.cityofboston.gov/persproperty/default.asp">Pay Business Personal Property Tax</a></li>
                                                                

                                                                


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