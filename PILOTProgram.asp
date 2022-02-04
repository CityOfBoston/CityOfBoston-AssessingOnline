<%
  Response.CacheControl="max-age=120, Public"
  Response.CharSet = "utf-8"
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>PILOT PROGRAM | City of Boston</title>
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
        
          paramVal1 = "tcm:3-29899-64"
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
                   <h2>PILOT Program</h2>
                   
                               <p>(Payment in Lieu of Tax)</p>
                   
	   </div>


</div>




<div class="content_main_sub">
                      <p>In January 2011, the City adopted new guidelines for the PILOT program as recommended by the PILOT Task Force. The new guidelines call for voluntary payments based on an institution's tax-exempt property value. Participants in the program include institutions from the educational, medical, and cultural sectors that own property valued in excess of $15 million. Each institution is eligible for a community benefits deduction generally limited to 50% of the PILOT contribution. The new guidelines also allow a deduction for any real estate taxes paid on property owned by the institution that is used for a tax-exempt purpose.</p><p>Fiscal year 2012 was the first year under the new PILOT guidelines.</p><hr /><h3> FY 2015 PILOT Results</h3><ul><li><p>A summary of the fiscal year 2015 PILOT contributions - the fourth year of payments calculated according to the City's PILOT guidelines - is listed by institution:</p><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-51686", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >FY 2015 PILOT Recap</a></p></li><li><p>The City received $27.9 million in PILOT contributions in fiscal year 2015, a 84.4% increase over what was previously paid under the prior PILOT program in fiscal year 2011. This amount represents 68.6% of the $40.7 million requested PILOT amount.</p></li><li><p>In all, 49 private institutions from the educational, medical, and cultural sectors were identified as owning tax-exempt property valued in excess of the $15 million threshold established in the PILOT guidelines. In October 2014 and April 2015, these 49 institutions received a first and second half notice, respectively, by mail that included the calculation of their PILOT amount.</p></li><li><p>In sum, the institutions were asked to contribute approximately $40.7 million in cash and $43.2 million in community programming to the unique benefit of Boston residents for fiscal year 2015. Proof of community benefits spending consistent with the guidelines was due on March 1, 2015.</p></li><li><p>By comparison, in fiscal year 2014 the City received $26.0 million in PILOT cash contributions and $35.5 million in community benefits.</p></li></ul><h3>FY 2014 PILOT Results</h3><ul><li><p>A summary of the fiscal year 2014 PILOT contributions - the third year of payments calculated according to the City's PILOT guidelines - is listed by institution:</p><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-50146", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >FY 2014 PILOT Recap</a></p></li><li><p>The City received $26 million in PILOT contributions in fiscal year 2014, a 71.6% increase over what was previously paid under the prior PILOT program in fiscal year 2011. This amount represents 75% of the $34.6 million requested PILOT amount.</p></li><li><p>In all, 49 private institutions from the educational, medical, and cultural sectors were identified as owning tax-exempt property valued in excess of the $15 million threshold established in the PILOT guidelines. In October 2013 and April 2014, these 49 institutions received a first and second half notice, respectively, by mail that included the calculation of their PILOT amount.</p></li><li><p>In sum, the institutions were asked to contribute approximately $34.6 million in cash and $35.5 million in community benefits that uniquely benefit Boston residents for fiscal year 2014. Proof of community benefits spending consistent with the guidelines established by the Task Force was due on March 1, 2014.</p></li><li><p>By comparison, in fiscal year 2013 the City received $23.2 million in PILOT cash contributions and $28.9 million in community benefits.</p></li></ul><h3>FY 2013 Second Half PILOT Results</h3><ul><li><p>A summary of the fiscal year 2013 PILOT contributions - the second year of payments calculated according to the Mayor's PILOT guidelines is listed by institution:</p><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39568", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >FY 2013 PILOT Recap</a></p></li><li><p>The City received $23.2 million in PILOT contributions in fiscal year 2013, a 53.1% increase over what was previously paid under the prior PILOT program in fiscal year 2011. This amount represents 82.3% of the $28.2 million requested PILOT amount.</p></li><li><p>In all, 49 private institutions from the educational, medical, and cultural sectors were identified as owning tax-exempt property valued in excess of the $15 million threshold established in the PILOT guidelines. In September 2012 and April 2013, these 49 institutions received a first and second half notice, respectively, by mail that included the calculation of their PILOT amount.</p></li><li><p>In sum, the institutions were asked to contribute approximately $28.2 million in cash and $28.9 million in community benefits that uniquely benefit Boston residents for fiscal year 2013. Proof of community benefits spending consistent with the guidelines established by the Task Force was due on March 1, 2013.</p></li><li><p>By comparison, in fiscal year 2012 the City received $19.5 million in PILOT cash contributions and $21.9 million in community benefits.</p></li><li><p>The following institutions submitted proof of qualifying community benefits:</p><ul><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39971", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Berklee College of Music</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39972", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Beth Israel Deaconess Medical Center</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-46976", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston Architectural College</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39970", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston College High School</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39974", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston Medical Center</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39977", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston Symphony Orchestra</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39975", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston University</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39976", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Brigham and Women's Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39973", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Children's Hospital Boston</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39978", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Dana Farber Cancer Institute</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39980", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Fisher College</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39979", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Faulkner Hospital</a></li><li>Harvard Vanguard Medical Associates</li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-46865", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Isabella Stewart Gardner Museum</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39981", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >MASCO</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39982", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Mass College of Pharmacy</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39983", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Mass Eye & Ear Infirmary</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39985", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Mass General Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39984", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Museum of Fine Arts</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39987", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Museum of Science</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39988", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >New England Baptist Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39989", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >New England College of Optometry</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39990", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Northeastern University</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39991", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Showa Institute for Language and Culture</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39992", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Simmons College</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39993", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Spaulding Rehabilitation Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39994", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Suffolk University</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39995", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Tufts Medical Center</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39996", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Tufts University</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39998", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Wentworth Institute of Technology</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-39997", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >WGBH</a></li></ul></li></ul><h3>FY 2013 First Half PILOT Results</h3><ul><li><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-35784", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Fiscal Year 2013 First Half PILOT Contribution Recap</a></p></li><li><p>On October 1, 2012, the Assessing Department sent first half PILOT notices to 49 nonprofit institutions requesting $13.9 million in cash contributions and $14.2 million in community benefits.</p></li><li><p>To date, the City has received $11.6 million in first half cash contributions from the participating nonprofits for the first half of fiscal year 2013, or 83.1% of the requested amount, which represented a first half cash PILOT increase of 16.7% over the prior year.</p></li><li><p>The following institutions made a first half FY 2013 PILOT contribution at or in excess of the City's requested amount:</p><ul><li>Beth Israel Deaconess Medical Center</li><li>Boston Architectural College</li><li>Boston Medical Center</li><li>Boston Symphony Orchestra</li><li>Boston University</li><li>Brigham and Women’s Hospital</li><li>Children's Hospital Boston</li><li>Dana Farber Cancer Institute</li><li>Faulkner Hospital</li><li>Harvard Vanguard Medical Associates</li><li>Isabella Stewart Gardner Museum</li><li>MASCO</li><li>Mass College of Pharmacy and Health Sciences</li><li>Mass Eye & Ear Infirmary</li><li>Mass General Hospital</li><li>New England Baptist Hospital</li><li>New England College of Optometry</li><li>Showa Institute</li><li>Simmons College</li><li>Spaulding Rehabilitation Hospital</li><li>Suffolk University</li><li>The Boston Conservatory</li><li>Tufts University</li><li>Wentworth Institute of Technology</li><li>WGBH</li></ul></li><li><p>To qualify for the community benefits deduction, participating institutions are asked to submit their community benefits reports by March 1, 2013.</p></li><li><p>The fiscal year 2013 second half contributions will be due on May 1, 2013.</p></li></ul><h3>FY 2012 Second Half Update</h3><ul><li><p>The fiscal year 2012 PILOT contributions - the first year of payments calculated according to the Mayor's new PILOT guidelines - are completed.</p><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-33007", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >FY 2012 PILOT Recap</a>
					.
				</p></li><li><p>The City received $19.5 million in PILOT contributions in fiscal year 2012, a 28.4% increase over what would have been paid under the prior PILOT program. This amount represents 90.7% of the $21.5 million requested amount.</p></li><li><p>In all, 45 private institutions from the educational, medical, and cultural sectors were identified as owning tax-exempt property valued in excess of the $15 million threshold established in the PILOT guidelines. In September 2011 and April 2012, these 45 institutions received a first and second half notice, respectively, by mail that included the calculation of their PILOT amount.</p></li><li><p>In sum, the institutions were asked to contribute approximately $21.5 million in cash and $21.9 million in community benefits that uniquely benefit Boston residents for fiscal year 2012. Proof of community benefits spending consistent with the guidelines established by the Task Force was due on March 1, 2012.</p></li><li><p>By comparison, in fiscal year 2011, these institutions paid PILOTs under the prior program of $15.1 million in cash and $2.3 million in community benefits.</p></li><li><p>The following institutions contributed a PILOT at the requested amount and submitted proof of qualifying community benefits:</p><ul><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32966", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Berklee College of Music</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32969", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Beth Israel Deaconess Medical Center</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-33168", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston Architectural College</a></li><li>Boston Medical Center</li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32968", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston Symphony Orchestra</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32970", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston University</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-33473", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Brigham and Women's Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32971", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Children's Hospital Boston</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32973", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Dana Farber Cancer Institute</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-33474", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Faulkner Hospital</a></li><li>Harvard Vanguard Medical Associates</li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32975", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >MASCO</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32976", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Mass College of Pharmacy</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32977", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Mass Eye & Ear Infirmary</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-33475", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Mass General Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32981", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >New England Baptist Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32979", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >New England College of Optometry</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32982", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Northeastern University</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32983", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Showa Institute for Language and Culture</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32984", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Simmons College</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-33472", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Spaulding Rehabilitation Hospital</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32987", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Tufts University</a></li><li>Wentworth Institute of Technology</li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32988", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >WGBH</a></li></ul></li><li><p>The following institutions submitted proof of qualifying community benefits:</p><ul><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32972", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Boston Children's Museum</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32974", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Fisher College</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32978", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Museum of Science</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32980", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >New England Aquarium</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32985", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Suffolk University</a></li><li><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-32986", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" >Tufts Medical Center</a></li></ul></li></ul><h3>FY 2012 First Half Update</h3><ul><li><p>First half fiscal year 2012 PILOT contributions - the first payments calculated according to the Mayor's new PILOT guidelines - are complete.</p></li><li><p>The City received $9.9 million in first half PILOT payments, a 30% increase over what would have been paid under the prior PILOT program. This amount represents 92% of the $10.8 million amount requested.</p></li><li><p>In all, 45 private institutions from the educational, medical, and cultural sectors were identified as owning tax-exempt property valued in excess of the $15 million threshold established in the PILOT guidelines. In September of this year, these 45 institutions received a notice by mail that included the calculation of their first-half PILOT request.</p></li><li><p>The institutions have been asked to contribute approximately $21.5 million in cash and $22.2 million in community benefits that uniquely benefit Boston residents for fiscal year 2012. Proof of community benefits spending consistent with the guidelines established by the Task Force will be due on March 1, 2012. The request for the remaining cash balance will be sent at the end of March.</p></li><li><p>In fiscal year 2011, these institutions paid PILOTs under the prior program of $15.2 million in cash and $2.3 million in community benefits.</p></li><li><p>The following institutions indicated a willingness to contribute to the new PILOT program and made a payment at or in excess of the first half amount:</p></li></ul><div style="TEXT-ALIGN: center"><table style="TEXT-ALIGN: left; WIDTH: 500px; HEIGHT: 207px" border="0" cellspacing="1" cellpadding="1" width="500"><tbody><tr><td>Bayridge Center</td><td>Mass College of Pharmacy</td></tr><tr><td>Berklee College of Music</td><td>Mass Eye and Ear Infirmary</td></tr><tr><td>Beth Israel Deaconess Medical Center</td><td>MASCO</td></tr><tr><td>Boston Architectural College</td><td>New England Baptist Hospital</td></tr><tr><td>Boston College High School</td><td>Northeastern University</td></tr><tr><td>Boston Medical Center</td><td>Partners HealthCare, Inc.</td></tr><tr><td>Boston Symphony Orchestra</td><td>Showa Boston</td></tr><tr><td>Boston University</td><td>Suffolk University</td></tr><tr><td>Dana Farber Cancer Institute</td><td>Wentworth Institute of Technology</td></tr><tr><td>Harvard Vanguard</td><td>WGBH</td></tr><tr><td>Hebrew Rehabilitation Center</td><td /></tr></tbody></table></div><p><a href="<%= Server.CreateObject("cd_link.BinaryLink").GetLink("tcm:0-3-1", "tcm:3-30229", "AA", "BB", "CC", true).URL %>" class="pdf" target="_blank" target="_blank" >FY12 First Half PILOT Contributions</a><br /></p><hr /><p><a href="<%= Server.CreateObject("cd_link.ComponentLink").GetLink("tcm:0-3-1", "tcm:3-29899-64", "tcm:3-8828" , "tcm:0-0-0", "Pilot", "", True, True).URL %>" >PILOT Task Force page</a></p>
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
			
			  paramVal1 = "tcm:3-29899-64"
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
		
		 'paramVal1 = "tcm:3-29899-64" 
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