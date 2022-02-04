<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Statutory Exemptions | City of Boston</title>
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
        
          paramVal1 = "tcm:3-14131-64"
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
                   <h2>Statutory Exemptions</h2>
                   
	   </div>


</div>




<div class="content_main_sub">
                      <p>Massachusetts law provides for an exemption from local property taxes for certain qualifying organizations. Not all organizations will qualify for this exemption, and not all properties of qualified organizations will be eligible for exemption. By law, the burden of establishing entitlement to an exemption falls upon the person or organization seeking the exemption.</p><p>Chapter 59, Section 5, of the Massachusetts General Laws recognizes several types of organizations that may be eligible for a tax exemption. Two such organization types are profiled below:</p><ul><li><a href="http://www.malegislature.gov/Laws/GeneralLaws/PartI/TitleIX/Chapter59/Section5" target="_blank">M.G.L. Chapter 59, Section 5, Clause Third</a>: charitable, benevolent, educational, literary, temperance or scientific organizations.
<br /><br /></li><li><a href="http://www.malegislature.gov/Laws/GeneralLaws/PartI/TitleIX/Chapter59/Section5" target="_blank">M.G.L. Chapter 59, Section 5, Clause Eleventh</a>: houses of worship and parsonages.</li></ul><h3>Steps to Obtaining a Statutory Exemption</h3><p>In order for an organization to procure exemption from local property taxes, the entity must take steps to ensure its eligibility. No exemption will be granted to an organization until it has filed for exemption and has been approved by the Assessing Department as a qualifying organization.</p><p>Charitable, benevolent, educational, literary, temperance or scientific organizations must meet the following basic requirements before applying for an exemption:</p><ul><li>The organization must be a charitable corporation or a Massachusetts charitable trust.
<br /><br /></li><li>Every organization and trust owning real or personal property on January 1 preceding the fiscal year must file a State Form 3ABC in order to receive a tax exemption.
<br /><br /></li><li>The organization must own and occupy the property at issue for its charitable purposes on July 1 of the tax year. Occupancy may be established as follows:
<ul><li>Real property occupied on July 1 by the organization for its charitable purposes, provided those purposes are regarded as charitable under Massachusetts local taxation law, OR
<br /><br /></li><li>Real property occupied on July 1 by other charitable organizations, for their charitable purposes, provided those purposes are regarded as charitable under Massachusetts local taxation law, OR
<br /><br /></li><li>Real property purchased by the organization on or before July 1 with the purpose of removal thereto, until such removal, but not for more than two years after such purchase.</li></ul></li></ul><p>Religious organizations that own property used as houses of worship or parsonages must meet the following basic requirements before applying for an exemption:</p><ul><li>The house of worship or parsonage must be owned by or held in irrevocable trust for the exclusive benefit of the religious organization.
<br /><br /></li><li>Under Clause Eleventh, the exemption cannot be extended to any portion of a house of worship that is used for other than religious purposes (other portions would need to qualify for exemption under <a href="http://www.malegislature.gov/Laws/GeneralLaws/PartI/TitleIX/Chapter59/Section5" target="_blank">M.G.L. Chapter 59, Section 5, Clause Third)</a><br /><br /></li><li>The house of worship must be owned and occupied as such on July 1 of the tax year.</li></ul><p>If the basic requirements above are met, the organization may file for exemption. There are two ways an organization can file for consideration for exemption: 1) the Preliminary Consideration Procedure, or 2) the Standard Abatement Procedure.</p><p>Preliminary Consideration can be pursued prior to the issuance of the third quarter tax bill. Applications are generally made available in April preceding the start of the fiscal year and must be filed generally no later than July 31. By way of example, an organization seeking exemption consideration for fiscal year 2016 would be able to obtain a Preliminary Consideration Application between April and July 31 of calendar year 2015.</p><p>The Standard Abatement Procedure is available beginning with the issuance of the third quarter tax bill and ending with the last date of payment for that period. By way of example, an organization seeking exemption consideration for fiscal year 2016 will be able to obtain an application once the third quarter tax bill has been issued in January 2016. Applications for abatement must be filed no later than the last date of payment for the third quarter bill.</p><h3>Applying for a Statutory Exemption: Preliminary Consideration</h3><p>Organizations seeking exemption from local property taxes in advance of the issuance of the fiscal year 2016 tax bill can file a <strong>Preliminary Consideration Information Requisition Form</strong>. Forms will be available in April 2015 and are due no later than July 31, 2015.</p><p>The information returned with the Preliminary Consideration application, including but not limited to the organization's articles of organization, trust, and by-laws, is reviewed by the Board of Assessors to determine the taxable or exempt status of an organization's real and/or personal property. The Assessing Department may ask for additional information on a case by case basis, and a site visit may be necessary to verify use and occupancy at the property.</p><p><em>NOTE:</em> Filing a Preliminary Consideration Information Requisition Form does not permit an organization to postpone the payment of the tax. If the total tax on real estate is more than three thousand dollars ($3,000), the tax generally must be paid on time to preserve the organization's appeal rights. Please refer to M.G.L. Chapter 59, Section 64, for more information.</p><h3>Applying for a Statutory Exemption: Abatement Application</h3><p>When submitting the department-approved abatement application for the purpose of obtaining a statutory exemption, supporting documentation such as the organization's articles of organization, trust, by-laws and other information about the organization must be submitted with the application. If sufficient information is not submitted with the application, it must be provided within thirty (30) days after filing the application.</p><p>An inspection of the property maybe conducted by a member of the Assessing Department staff.</p><p><em>NOTE:</em> Filing a department-approved abatement application does not permit an organization to postpone the payment of the tax. If the total tax on real estate is more than three thousand dollars ($3,000), the tax generally must be paid on time to preserve the organization's appeal rights. Please refer to M.G.L. Chapter 59, Section 64, for more information.</p><p><strong>Where to obtain an abatement application:</strong></p><p>The abatement application for Statutory Exemption is available at the Assessing Department, Room 301, One City Hall Square, Boston, MA 02201-1050, or online during the filing period ONLY. The filing period immediately follows the issuance of the third quarter fiscal year tax bill and runs until the last date of payment for the third quarter.</p><p>When completing the abatement application, organizations should check the box next to Statutory Exemption when asked to provide the reason for filing.</p><p>Abatement applications must be filed by the third quarter payment deadline. Applicants will then have thirty (30) days from the date on which the abatement application was filed to complete and file the Statutory Exemption Information Requisition Form.</p><p><a href="/assessing/forms.asp">View Various Abatement Application Related Forms
<br /></a><em>NOTE:</em> Certain forms are only available during the filing season(s) as described above.</p><h3>The 3ABC Requirement</h3><p>Organizations and trusts owning real or personal property on January 1 preceding the fiscal year must file a <a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21813", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Form 3ABC</a> Return of Property Held for Charitable and Other Purposes Form. The Form 3ABC is a state tax form that <strong>must</strong> be filed on an annual basis by <strong>March 1</strong> preceding the start of the fiscal year. If the form is not filed in a timely manner in a given year, the organization's tax exemption may not be granted.</p><p>Fraternal and veteran organizations are not required by law to file the Form 3ABC. Religious organizations are not required to file the Form 3ABC <em>unless</em> the organization owns tax-exempt property that is used for a purpose other than as a house of worship or as a parsonage.</p><p>The 3ABC requirement applies to all organizations seeking the benefit of a statutory exemption, including new applicants as well as previously exempt properties.</p><p>Attached to the Form 3ABC must be a "true copy" of the Form PC-1 which is filed every year with the Public Charities Division of the Massachusetts Attorney General's office located at:
<br /><br />
One Ashburton Place,
<br />
Boston, MA 02108.</p><p>The Form 3ABC is available by clicking here, or a hard copy can be obtained at:
<br /><br />
Hobbs & Warren, Inc.
<br />
11 Beacon Street
<br />
Boston, MA 02108
<br />
(617) 523-2282</p><p><em>NOTE:</em> Under the authority of the Massachusetts Department of Revenue, the City of Boston Assessing Department requires charitable organizations filing Form 3ABC for property located in Boston to provide additional tenant information under Section D, REAL ESTATE.</p><h3>Contact Information</h3><p>To learn more about statutory exemptions please call Vanessa Weathers, Member, Board of Review, at (617) 635-4260.</p>
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
			
			  paramVal1 = "tcm:3-14131-64"
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
		
		 'paramVal1 = "tcm:3-14131-64" 
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


          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-21813", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-21813" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-21813" tridion:type="Multimedia" tridion:targetattribute="href">Form 3ABC</a></li>
                                                                

          				

                                                                
                                                                        <li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-16993", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href" tridion:href="tcm:3-16993" tridion:type="Multimedia" tridion:targetattribute="href">Guide to Application Dates for Abatements, Exemptions and Deferrals</a></li>
                                                                

          				
                                                                        <li><a href="http://www.mass.gov/ago/doing-business-in-massachusetts/public-charities-or-not-for-profits/forms/form-pc-and-instructions.html" target="_blank" class="_external">Form PC-1 (State Form)</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/ago/bureaus/business-and-labor/the-non-profit-organizations-public-charities-division/" target="_blank" class="_external">Office of Attorney General - Public Charities Division</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/ago/docs/nonprofit/guide-for-board-members.pdf" target="_blank" class="_external">Office of Attorney General - Guide to Charitable Organizations</a></li>
                                                                

                                                                

          				
                                                                        <li><a href="http://www.mass.gov/legis/laws/mgl/59-5.htm" target="_blank" class="_external">M. G. L. Chapter 59, Section 5, Clauses 3 and 11: Charitable Organizations and Houses of Worship</a></li>
                                                                

                                                                


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