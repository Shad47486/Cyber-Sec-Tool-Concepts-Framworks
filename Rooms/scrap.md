GET / HTTP/1.1
Host: testphp.vulnweb.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Upgrade-Insecure-Requests: 1

HTTP/1.1 200 OK
Server: nginx/1.19.0
Date: Wed, 18 May 2022 07:28:44 GMT
Content-Type: text/html; charset=UTF-8
Transfer-Encoding: chunked
Connection: keep-alive
X-Powered-By: PHP/5.6.40-38+ubuntu20.04.1+deb.sury.org+1
Content-Encoding: gzip

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/main_dynamic_template.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2">

<!-- InstanceBeginEditable name="document_title_rgn" -->
<title>Home of Acunetix Art</title>
<!-- InstanceEndEditable -->
<link rel="stylesheet" href="style.css" type="text/css">
<!-- InstanceBeginEditable name="headers_rgn" -->
<!-- here goes headers headers -->
<!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>

</head>
<body> 
<div id="mainLayer" style="position:absolute; width:700px; z-index:1">
<div id="masthead"> 
  <h1 id="siteName"><a href="https://www.acunetix.com/"><img src="images/logo.gif" width="306" height="38" border="0" alt="Acunetix website security"></a></h1>   
  <h6 id="siteInfo">TEST and Demonstration site for <a href="https://www.acunetix.com/vulnerability-scanner/">Acunetix Web Vulnerability Scanner</a></h6>
  <div id="globalNav"> 
      	<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>
	<td align="left">
		<a href="index.php">home</a> | <a href="categories.php">categories</a> | <a href="artists.php">artists
		</a> | <a href="disclaimer.php">disclaimer</a> | <a href="cart.php">your cart</a> | 
		<a href="guestbook.php">guestbook</a> | 
		<a href="AJAX/index.php">AJAX Demo</a>
	</td>
	<td align="right">
		</td>
	</tr></table>
  </div> 
</div> 
<!-- end masthead --> 

<!-- begin content -->
<!-- InstanceBeginEditable name="content_rgn" -->
<div id="content">
	<h2 id="pageName">welcome to our page</h2>
	  <div class="story">
		<h3>Test site for Acunetix WVS.</h3>
	  </div>
</div>
<!-- InstanceEndEditable -->
<!--end content -->

<div id="navBar"> 
  <div id="search"> 
    <form action="search.php?test=query" method="post"> 
      <label>search art</label> 
      <input name="searchFor" type="text" size="10"> 
      <input name="goButton" type="submit" value="go"> 
    </form> 
  </div> 
  <div id="sectionLinks"> 
    <ul> 
      <li><a href="categories.php">Browse categories</a></li> 
      <li><a href="artists.php">Browse artists</a></li> 
      <li><a href="cart.php">Your cart</a></li> 
      <li><a href="login.php">Signup</a></li>
	  <li><a href="userinfo.php">Your profile</a></li>
	  <li><a href="guestbook.php">Our guestbook</a></li>
		<li><a href="AJAX/index.php">AJAX Demo</a></li>
	  </li> 
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>Links</h3> 
    <ul> 
      <li><a href="http://www.acunetix.com">Security art</a></li> 
	  <li><a href="https://www.acunetix.com/vulnerability-scanner/php-security-scanner/">PHP scanner</a></li>
	  <li><a href="https://www.acunetix.com/blog/articles/prevent-sql-injection-vulnerabilities-in-php-applications/">PHP vuln help</a></li>
	  <li><a href="http://www.eclectasy.com/Fractal-Explorer/index.html">Fractal Explorer</a></li> 
    </ul> 
  </div> 
  <div id="advert"> 
    <p>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="107" height="66">
        <param name="movie" value="Flash/add.swf">
        <param name=quality value=high>
        <embed src="Flash/add.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="107" height="66"></embed>
      </object>
    </p>
  </div> 
</div> 

<!--end navbar --> 
<div id="siteInfo">  <a href="http://www.acunetix.com">About Us</a> | <a href="privacy.php">Privacy Policy</a> | <a href="mailto:wvs@acunetix.com">Contact Us</a> | <a href="/Mod_Rewrite_Shop/">Shop</a> | <a href="/hpp/">HTTP Parameter Pollution</a> | &copy;2019
  Acunetix Ltd 
</div> 
    
    
<br> 
<div style="background-color:lightgray;width:100%;text-align:center;font-size:12px;padding:1px">
<p style="padding-left:5%;padding-right:5%"><b>Warning</b>: This is not a real shop. This is an example PHP application, which is intentionally vulnerable to web attacks. It is intended to help you test Acunetix. It also helps you understand how developer errors and bad configuration may let someone break into your website. You can use it to test other tools and your manual hacking skills as well. Tip: Look for potential SQL Injections, Cross-site Scripting (XSS), and Cross-site Request Forgery (CSRF), and more.</p>
</div>
</div>
</body>
<!-- InstanceEnd --></html>
GET /categories.php HTTP/1.1
Host: testphp.vulnweb.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Referer: http://testphp.vulnweb.com/
Upgrade-Insecure-Requests: 1

HTTP/1.1 200 OK
Server: nginx/1.19.0
Date: Wed, 18 May 2022 07:28:46 GMT
Content-Type: text/html; charset=UTF-8
Transfer-Encoding: chunked
Connection: keep-alive
X-Powered-By: PHP/5.6.40-38+ubuntu20.04.1+deb.sury.org+1
Content-Encoding: gzip

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/main_dynamic_template.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2">

<!-- InstanceBeginEditable name="document_title_rgn" -->
<title>picture categories</title>
<!-- InstanceEndEditable -->
<link rel="stylesheet" href="style.css" type="text/css">
<!-- InstanceBeginEditable name="headers_rgn" -->
<!-- here goes headers headers -->
<!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>

</head>
<body> 
<div id="mainLayer" style="position:absolute; width:700px; z-index:1">
<div id="masthead"> 
  <h1 id="siteName"><a href="https://www.acunetix.com/"><img src="images/logo.gif" width="306" height="38" border="0" alt="Acunetix website security"></a></h1>   
  <h6 id="siteInfo">TEST and Demonstration site for <a href="https://www.acunetix.com/vulnerability-scanner/">Acunetix Web Vulnerability Scanner</a></h6>
  <div id="globalNav"> 
      	<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>
	<td align="left">
		<a href="index.php">home</a> | <a href="categories.php">categories</a> | <a href="artists.php">artists
		</a> | <a href="disclaimer.php">disclaimer</a> | <a href="cart.php">your cart</a> | 
		<a href="guestbook.php">guestbook</a> | 
		<a href="AJAX/index.php">AJAX Demo</a>
	</td>
	<td align="right">
		</td>
	</tr></table>
  </div> 
</div> 
<!-- end masthead --> 

<!-- begin content -->
<!-- InstanceBeginEditable name="content_rgn" -->
<div id="content">
	<h2 id="pageName">categories</h2>
	<div class='story'><a href='listproducts.php?cat=1'><h3>Posters</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div><div class='story'><a href='listproducts.php?cat=2'><h3>Paintings</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div><div class='story'><a href='listproducts.php?cat=3'><h3>Stickers</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div><div class='story'><a href='listproducts.php?cat=4'><h3>Graffity</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div></div>
<!-- InstanceEndEditable -->
<!--end content -->

<div id="navBar"> 
  <div id="search"> 
    <form action="search.php?test=query" method="post"> 
      <label>search art</label> 
      <input name="searchFor" type="text" size="10"> 
      <input name="goButton" type="submit" value="go"> 
    </form> 
  </div> 
  <div id="sectionLinks"> 
    <ul> 
      <li><a href="categories.php">Browse categories</a></li> 
      <li><a href="artists.php">Browse artists</a></li> 
      <li><a href="cart.php">Your cart</a></li> 
      <li><a href="login.php">Signup</a></li>
	  <li><a href="userinfo.php">Your profile</a></li>
	  <li><a href="guestbook.php">Our guestbook</a></li>
		<li><a href="AJAX/index.php">AJAX Demo</a></li>
	  </li> 
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>Links</h3> 
    <ul> 
      <li><a href="http://www.acunetix.com">Security art</a></li> 
	  <li><a href="https://www.acunetix.com/vulnerability-scanner/php-security-scanner/">PHP scanner</a></li>
	  <li><a href="https://www.acunetix.com/blog/articles/prevent-sql-injection-vulnerabilities-in-php-applications/">PHP vuln help</a></li>
	  <li><a href="http://www.eclectasy.com/Fractal-Explorer/index.html">Fractal Explorer</a></li> 
    </ul> 
  </div> 
  <div id="advert"> 
    <p>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="107" height="66">
        <param name="movie" value="Flash/add.swf">
        <param name=quality value=high>
        <embed src="Flash/add.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="107" height="66"></embed>
      </object>
    </p>
  </div> 
</div> 

<!--end navbar --> 
<div id="siteInfo">  <a href="http://www.acunetix.com">About Us</a> | <a href="privacy.php">Privacy Policy</a> | <a href="mailto:wvs@acunetix.com">Contact Us</a> | &copy;2019
  Acunetix Ltd 
</div> 
<br> 
<div style="background-color:lightgray;width:100%;text-align:center;font-size:12px;padding:1px">
<p style="padding-left:5%;padding-right:5%"><b>Warning</b>: This is not a real shop. This is an example PHP application, which is intentionally vulnerable to web attacks. It is intended to help you test Acunetix. It also helps you understand how developer errors and bad configuration may let someone break into your website. You can use it to test other tools and your manual hacking skills as well. Tip: Look for potential SQL Injections, Cross-site Scripting (XSS), and Cross-site Request Forgery (CSRF), and more.</p>
</div>
</div>
</body>
<!-- InstanceEnd --></html>
GET /artists.php HTTP/1.1
Host: testphp.vulnweb.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Referer: http://testphp.vulnweb.com/categories.php
Upgrade-Insecure-Requests: 1

HTTP/1.1 200 OK
Server: nginx/1.19.0
Date: Wed, 18 May 2022 07:28:48 GMT
Content-Type: text/html; charset=UTF-8
Transfer-Encoding: chunked
Connection: keep-alive
X-Powered-By: PHP/5.6.40-38+ubuntu20.04.1+deb.sury.org+1
Content-Encoding: gzip

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/main_dynamic_template.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2">

<!-- InstanceBeginEditable name="document_title_rgn" -->
<title>artists</title>
<!-- InstanceEndEditable -->
<link rel="stylesheet" href="style.css" type="text/css">
<!-- InstanceBeginEditable name="headers_rgn" -->
<!-- here goes headers headers -->
<!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>

</head>
<body> 
<div id="mainLayer" style="position:absolute; width:700px; z-index:1">
<div id="masthead"> 
  <h1 id="siteName"><a href="https://www.acunetix.com/"><img src="images/logo.gif" width="306" height="38" border="0" alt="Acunetix website security"></a></h1>   
  <h6 id="siteInfo">TEST and Demonstration site for <a href="https://www.acunetix.com/vulnerability-scanner/">Acunetix Web Vulnerability Scanner</a></h6>
  <div id="globalNav"> 
      	<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>
	<td align="left">
		<a href="index.php">home</a> | <a href="categories.php">categories</a> | <a href="artists.php">artists
		</a> | <a href="disclaimer.php">disclaimer</a> | <a href="cart.php">your cart</a> | 
		<a href="guestbook.php">guestbook</a> | 
		<a href="AJAX/index.php">AJAX Demo</a>
	</td>
	<td align="right">
		</td>
	</tr></table>
  </div> 
</div> 
<!-- end masthead --> 

<!-- begin content -->
<!-- InstanceBeginEditable name="content_rgn" -->
<div id="content">
	<div class='story'><a href='artists.php?artist=1'><h3>r4w8173</h3></a><p><a href='#' onClick="window.open('./comment.php?aid=1','comment','width=500,height=400')">comment on this artist</a></p></div><div class='story'><a href='artists.php?artist=2'><h3>Blad3</h3></a><p><a href='#' onClick="window.open('./comment.php?aid=2','comment','width=500,height=400')">comment on this artist</a></p></div><div class='story'><a href='artists.php?artist=3'><h3>lyzae</h3></a><p><a href='#' onClick="window.open('./comment.php?aid=3','comment','width=500,height=400')">comment on this artist</a></p></div>	
</div>
<!-- InstanceEndEditable -->
<!--end content -->

<div id="navBar"> 
  <div id="search"> 
    <form action="search.php?test=query" method="post"> 
      <label>search art</label> 
      <input name="searchFor" type="text" size="10"> 
      <input name="goButton" type="submit" value="go"> 
    </form> 
  </div> 
  <div id="sectionLinks"> 
    <ul> 
      <li><a href="categories.php">Browse categories</a></li> 
      <li><a href="artists.php">Browse artists</a></li> 
      <li><a href="cart.php">Your cart</a></li> 
      <li><a href="login.php">Signup</a></li>
	  <li><a href="userinfo.php">Your profile</a></li>
	  <li><a href="guestbook.php">Our guestbook</a></li>
		<li><a href="AJAX/index.php">AJAX Demo</a></li>
	  </li> 
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>Links</h3> 
    <ul> 
      <li><a href="http://www.acunetix.com">Security art</a></li> 
	  <li><a href="https://www.acunetix.com/vulnerability-scanner/php-security-scanner/">PHP scanner</a></li>
	  <li><a href="https://www.acunetix.com/blog/articles/prevent-sql-injection-vulnerabilities-in-php-applications/">PHP vuln help</a></li>
	  <li><a href="http://www.eclectasy.com/Fractal-Explorer/index.html">Fractal Explorer</a></li> 
    </ul> 
  </div> 
  <div id="advert"> 
    <p>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="107" height="66">
        <param name="movie" value="Flash/add.swf">
        <param name=quality value=high>
        <embed src="Flash/add.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="107" height="66"></embed>
      </object>
    </p>
  </div> 
</div> 

<!--end navbar --> 
<div id="siteInfo">  <a href="http://www.acunetix.com">About Us</a> | <a href="privacy.php">Privacy Policy</a> | <a href="mailto:wvs@acunetix.com">Contact Us</a> | &copy;2019
  Acunetix Ltd 
</div> 
<br> 
<div style="background-color:lightgray;width:100%;text-align:center;font-size:12px;padding:1px">
<p style="padding-left:5%;padding-right:5%"><b>Warning</b>: This is not a real shop. This is an example PHP application, which is intentionally vulnerable to web attacks. It is intended to help you test Acunetix. It also helps you understand how developer errors and bad configuration may let someone break into your website. You can use it to test other tools and your manual hacking skills as well. Tip: Look for potential SQL Injections, Cross-site Scripting (XSS), and Cross-site Request Forgery (CSRF), and more.</p>
</div>
</div>
</body>
<!-- InstanceEnd --></html>
GET /categories.php HTTP/1.1
Host: testphp.vulnweb.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Referer: http://testphp.vulnweb.com/artists.php
Upgrade-Insecure-Requests: 1

HTTP/1.1 200 OK
Server: nginx/1.19.0
Date: Wed, 18 May 2022 07:28:52 GMT
Content-Type: text/html; charset=UTF-8
Transfer-Encoding: chunked
Connection: keep-alive
X-Powered-By: PHP/5.6.40-38+ubuntu20.04.1+deb.sury.org+1
Content-Encoding: gzip

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/main_dynamic_template.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2">

<!-- InstanceBeginEditable name="document_title_rgn" -->
<title>picture categories</title>
<!-- InstanceEndEditable -->
<link rel="stylesheet" href="style.css" type="text/css">
<!-- InstanceBeginEditable name="headers_rgn" -->
<!-- here goes headers headers -->
<!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>

</head>
<body> 
<div id="mainLayer" style="position:absolute; width:700px; z-index:1">
<div id="masthead"> 
  <h1 id="siteName"><a href="https://www.acunetix.com/"><img src="images/logo.gif" width="306" height="38" border="0" alt="Acunetix website security"></a></h1>   
  <h6 id="siteInfo">TEST and Demonstration site for <a href="https://www.acunetix.com/vulnerability-scanner/">Acunetix Web Vulnerability Scanner</a></h6>
  <div id="globalNav"> 
      	<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>
	<td align="left">
		<a href="index.php">home</a> | <a href="categories.php">categories</a> | <a href="artists.php">artists
		</a> | <a href="disclaimer.php">disclaimer</a> | <a href="cart.php">your cart</a> | 
		<a href="guestbook.php">guestbook</a> | 
		<a href="AJAX/index.php">AJAX Demo</a>
	</td>
	<td align="right">
		</td>
	</tr></table>
  </div> 
</div> 
<!-- end masthead --> 

<!-- begin content -->
<!-- InstanceBeginEditable name="content_rgn" -->
<div id="content">
	<h2 id="pageName">categories</h2>
	<div class='story'><a href='listproducts.php?cat=1'><h3>Posters</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div><div class='story'><a href='listproducts.php?cat=2'><h3>Paintings</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div><div class='story'><a href='listproducts.php?cat=3'><h3>Stickers</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div><div class='story'><a href='listproducts.php?cat=4'><h3>Graffity</h3></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
    Sed aliquam sem ut arcu. Phasellus sollicitudin. Vestibulum condimentum facilisis
    nulla. In hac habitasse platea dictumst. Nulla nonummy. Cras quis libero.
    Cras venenati</div></div>
<!-- InstanceEndEditable -->
<!--end content -->

<div id="navBar"> 
  <div id="search"> 
    <form action="search.php?test=query" method="post"> 
      <label>search art</label> 
      <input name="searchFor" type="text" size="10"> 
      <input name="goButton" type="submit" value="go"> 
    </form> 
  </div> 
  <div id="sectionLinks"> 
    <ul> 
      <li><a href="categories.php">Browse categories</a></li> 
      <li><a href="artists.php">Browse artists</a></li> 
      <li><a href="cart.php">Your cart</a></li> 
      <li><a href="login.php">Signup</a></li>
	  <li><a href="userinfo.php">Your profile</a></li>
	  <li><a href="guestbook.php">Our guestbook</a></li>
		<li><a href="AJAX/index.php">AJAX Demo</a></li>
	  </li> 
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>Links</h3> 
    <ul> 
      <li><a href="http://www.acunetix.com">Security art</a></li> 
	  <li><a href="https://www.acunetix.com/vulnerability-scanner/php-security-scanner/">PHP scanner</a></li>
	  <li><a href="https://www.acunetix.com/blog/articles/prevent-sql-injection-vulnerabilities-in-php-applications/">PHP vuln help</a></li>
	  <li><a href="http://www.eclectasy.com/Fractal-Explorer/index.html">Fractal Explorer</a></li> 
    </ul> 
  </div> 
  <div id="advert"> 
    <p>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="107" height="66">
        <param name="movie" value="Flash/add.swf">
        <param name=quality value=high>
        <embed src="Flash/add.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="107" height="66"></embed>
      </object>
    </p>
  </div> 
</div> 

<!--end navbar --> 
<div id="siteInfo">  <a href="http://www.acunetix.com">About Us</a> | <a href="privacy.php">Privacy Policy</a> | <a href="mailto:wvs@acunetix.com">Contact Us</a> | &copy;2019
  Acunetix Ltd 
</div> 
<br> 
<div style="background-color:lightgray;width:100%;text-align:center;font-size:12px;padding:1px">
<p style="padding-left:5%;padding-right:5%"><b>Warning</b>: This is not a real shop. This is an example PHP application, which is intentionally vulnerable to web attacks. It is intended to help you test Acunetix. It also helps you understand how developer errors and bad configuration may let someone break into your website. You can use it to test other tools and your manual hacking skills as well. Tip: Look for potential SQL Injections, Cross-site Scripting (XSS), and Cross-site Request Forgery (CSRF), and more.</p>
</div>
</div>
</body>
<!-- InstanceEnd --></html>
GET /listproducts.php?cat=1 HTTP/1.1
Host: testphp.vulnweb.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Referer: http://testphp.vulnweb.com/categories.php
Upgrade-Insecure-Requests: 1

HTTP/1.1 200 OK
Server: nginx/1.19.0
Date: Wed, 18 May 2022 07:28:54 GMT
Content-Type: text/html; charset=UTF-8
Transfer-Encoding: chunked
Connection: keep-alive
X-Powered-By: PHP/5.6.40-38+ubuntu20.04.1+deb.sury.org+1
Content-Encoding: gzip

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html><!-- InstanceBegin template="/Templates/main_dynamic_template.dwt.php" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2">

<!-- InstanceBeginEditable name="document_title_rgn" -->
<title>pictures</title>
<!-- InstanceEndEditable -->
<link rel="stylesheet" href="style.css" type="text/css">
<!-- InstanceBeginEditable name="headers_rgn" -->
<!-- InstanceEndEditable -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>

</head>
<body> 
<div id="mainLayer" style="position:absolute; width:700px; z-index:1">
<div id="masthead"> 
  <h1 id="siteName"><a href="https://www.acunetix.com/"><img src="images/logo.gif" width="306" height="38" border="0" alt="Acunetix website security"></a></h1>   
  <h6 id="siteInfo">TEST and Demonstration site for <a href="https://www.acunetix.com/vulnerability-scanner/">Acunetix Web Vulnerability Scanner</a></h6>
  <div id="globalNav"> 
      	<table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>
	<td align="left">
		<a href="index.php">home</a> | <a href="categories.php">categories</a> | <a href="artists.php">artists
		</a> | <a href="disclaimer.php">disclaimer</a> | <a href="cart.php">your cart</a> | 
		<a href="guestbook.php">guestbook</a> | 
		<a href="AJAX/index.php">AJAX Demo</a>
	</td>
	<td align="right">
		</td>
	</tr></table>
  </div> 
</div> 
<!-- end masthead --> 

<!-- begin content -->
<!-- InstanceBeginEditable name="content_rgn" -->
<div id="content">
	<h2 id='pageName'>Posters</h2><div class='story'><a href='product.php?pic=1'><h3>The shore</h3></a><p><a href='showimage.php?file=./pictures/1.jpg' target='_blank'><img style='cursor:pointer' border='0' align='left' src='showimage.php?file=./pictures/1.jpg&size=160' width='160' height='100'></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
Sed aliquam sem ut arcu.</p><p>painted by: <a href='artists.php?artist=1'>r4w8173</a></p><p><a href='#' onClick="window.open('./comment.php?pid=1','comment','width=500,height=400')">comment on this picture</a></p></div><div class='story'><a href='product.php?pic=2'><h3>Mistery</h3></a><p><a href='showimage.php?file=./pictures/2.jpg' target='_blank'><img style='cursor:pointer' border='0' align='left' src='showimage.php?file=./pictures/2.jpg&size=160' width='160' height='100'></a>Donec molestie.
Sed aliquam sem ut arcu.</p><p>painted by: <a href='artists.php?artist=1'>r4w8173</a></p><p><a href='#' onClick="window.open('./comment.php?pid=2','comment','width=500,height=400')">comment on this picture</a></p></div><div class='story'><a href='product.php?pic=3'><h3>The universe</h3></a><p><a href='showimage.php?file=./pictures/3.jpg' target='_blank'><img style='cursor:pointer' border='0' align='left' src='showimage.php?file=./pictures/3.jpg&size=160' width='160' height='100'></a>Lorem ipsum dolor sit amet. Donec molestie.
Sed aliquam sem ut arcu.</p><p>painted by: <a href='artists.php?artist=1'>r4w8173</a></p><p><a href='#' onClick="window.open('./comment.php?pid=3','comment','width=500,height=400')">comment on this picture</a></p></div><div class='story'><a href='product.php?pic=4'><h3>Walking</h3></a><p><a href='showimage.php?file=./pictures/4.jpg' target='_blank'><img style='cursor:pointer' border='0' align='left' src='showimage.php?file=./pictures/4.jpg&size=160' width='160' height='100'></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie.
Sed aliquam sem ut arcu. Phasellus sollicitudin.
</p><p>painted by: <a href='artists.php?artist=1'>r4w8173</a></p><p><a href='#' onClick="window.open('./comment.php?pid=4','comment','width=500,height=400')">comment on this picture</a></p></div><div class='story'><a href='product.php?pic=5'><h3>Mean</h3></a><p><a href='showimage.php?file=./pictures/5.jpg' target='_blank'><img style='cursor:pointer' border='0' align='left' src='showimage.php?file=./pictures/5.jpg&size=160' width='160' height='100'></a>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p><p>painted by: <a href='artists.php?artist=1'>r4w8173</a></p><p><a href='#' onClick="window.open('./comment.php?pid=5','comment','width=500,height=400')">comment on this picture</a></p></div><div class='story'><a href='product.php?pic=7'><h3>Trees</h3></a><p><a href='showimage.php?file=./pictures/7.jpg' target='_blank'><img style='cursor:pointer' border='0' align='left' src='showimage.php?file=./pictures/7.jpg&size=160' width='160' height='100'></a>bla bla bla</p><p>painted by: <a href='artists.php?artist=2'>Blad3</a></p><p><a href='#' onClick="window.open('./comment.php?pid=7','comment','width=500,height=400')">comment on this picture</a></p></div></div>
<!-- InstanceEndEditable -->
<!--end content -->

<div id="navBar"> 
  <div id="search"> 
    <form action="search.php?test=query" method="post"> 
      <label>search art</label> 
      <input name="searchFor" type="text" size="10"> 
      <input name="goButton" type="submit" value="go"> 
    </form> 
  </div> 
  <div id="sectionLinks"> 
    <ul> 
      <li><a href="categories.php">Browse categories</a></li> 
      <li><a href="artists.php">Browse artists</a></li> 
      <li><a href="cart.php">Your cart</a></li> 
      <li><a href="login.php">Signup</a></li>
	  <li><a href="userinfo.php">Your profile</a></li>
	  <li><a href="guestbook.php">Our guestbook</a></li>
		<li><a href="AJAX/index.php">AJAX Demo</a></li>
	  </li> 
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>Links</h3> 
    <ul> 
      <li><a href="http://www.acunetix.com">Security art</a></li> 
	  <li><a href="https://www.acunetix.com/vulnerability-scanner/php-security-scanner/">PHP scanner</a></li>
	  <li><a href="https://www.acunetix.com/blog/articles/prevent-sql-injection-vulnerabilities-in-php-applications/">PHP vuln help</a></li>
	  <li><a href="http://www.eclectasy.com/Fractal-Explorer/index.html">Fractal Explorer</a></li> 
    </ul> 
  </div> 
  <div id="advert"> 
    <p>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="107" height="66">
        <param name="movie" value="Flash/add.swf">
        <param name=quality value=high>
        <embed src="Flash/add.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="107" height="66"></embed>
      </object>
    </p>
  </div> 
</div> 

<!--end navbar --> 
<div id="siteInfo">  <a href="http://www.acunetix.com">About Us</a> | <a href="privacy.php">Privacy Policy</a> | <a href="mailto:wvs@acunetix.com">Contact Us</a> | &copy;2019
  Acunetix Ltd 
</div> 
<br> 
<div style="background-color:lightgray;width:100%;text-align:center;font-size:12px;padding:1px">
<p style="padding-left:5%;padding-right:5%"><b>Warning</b>: This is not a real shop. This is an example PHP application, which is intentionally vulnerable to web attacks. It is intended to help you test Acunetix. It also helps you understand how developer errors and bad configuration may let someone break into your website. You can use it to test other tools and your manual hacking skills as well. Tip: Look for potential SQL Injections, Cross-site Scripting (XSS), and Cross-site Request Forgery (CSRF), and more.</p>
</div>
</div>
</body>
<!-- InstanceEnd --></html>
GET /showimage.php?file=./pictures/1.jpg&size=160 HTTP/1.1
Host: testphp.vulnweb.com
User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0
Accept: image/avif,image/webp,*/*
Accept-Language: en-US,en;q=0.5
Accept-Encoding: gzip, deflate
Connection: keep-alive
Referer: http://testphp.vulnweb.com/listproducts.php?cat=1

HTTP/1.1 200 OK
Server: nginx/1.19.0
Date: Wed, 18 May 2022 07:28:55 GMT
Content-Type: image/jpeg
Transfer-Encoding: chunked
Connection: keep-alive
X-Powered-By: PHP/5.6.40-38+ubuntu20.04.1+deb.sury.org+1

......JFIF.............C...............
.

		
...............%...#... , #&')*)..-0-(0%()(...C....
.
.

.(...((((((((((((((((((((((((((((((((((((((((((((((((((........@.."........................................................................................)..............,y3e..... ....&..c.[K....Z8.!
}c.....$.PLe.0...3..]G........q..U....$.A1......LN....).Uv......*Um.w.k.."$...m..6...g.>..:...`b.j3.OI.I,...D......LMN..553.O.W
1..c?.K....	".....v..dy.-<...2...M!..]'.......vj.b...	.4..i{t..j(._..\._..x......0.M......c..t.1Sa.6..x.5.......o.........m..<..-...Vjr.vk..o.].l.].n..M7..Vu.}.q.....f..^.A..>.i.M.zK0.._d..x4.7.........c.Z.j....."fN...V...6F..-AF.~..]..Ga......rH"H*H..9gM..z|..)8...w..o:x.9}2_D_..G.u....\.tX.#.W.:..mbg*..3.lnWd.&...
....*z....tE.3..?D.....\....So&....mN?C...I\,.(...:|.Nk.....'.....
K].... 9P
.....`...I...F..E.L.7..ub.../...rs.t.4GO...(........=.f.O..F.Z|..l.......... ..T.4L.H.....o]...V..Vf2{../=q....&...5}.OY.._;..U........,..
&&.*@...:...........,4..A.V]~mY.m./uSz....i.}y..k..............M.hu.XvI=.a6..\.1.t..>~..qb.a.....?..R.J..<......y..@..P....D..jl...NC..pb..0.Hy.......>.3.........{s.!....(......................... !".01@.$#23................7b.0......4...........E2..(..tW..V..................lM_.....D....P8...R,ZU...[....G....Hm....E..;....Z.[.J[.o....O.X....%G.@..e.o..~.BF...^^.....y^V.0.;....q......n6\..g..d...[v....~...U..o^N........l...3)..[..z0Z.Gt.o.uf$..A..0<c.._R.XT..fB..".j......6.!...}
<.....
]R.JNkmg.UL.._{.%{J.........Z.|.V..?X.P...]-[.zX.Q.?@._....,.....k...t...k(VZ..0....
[}u.b.r..P.v....3...K..(!_.....{...fQ.Mj.-e..j......=r.....8.t*;.....w[...ib./O..B!.zM..A.~;..Hq.j...O..(%N...9..e5`rl.8.QP(..q....-..n.*B..>.Y.......N..v...{-3
..n....S..T....[....U.^Ubk...W.U....=.q.....X...g...@b..j.../g..}..E^..`..9...E.+.!......Y*.
..<.. .WKj..Mj....u6t.>{.....4R..z...N...c....hf&!\w	.Ra(..'"......,....... .7...tm.....&..qj...l.....@PU,E.&....X`.b&A.....V.X...g...Ds.]...h.+)F...V.u,z.e...>VR."...5.r._..N6.%..QoG.s!\..x.......3.Y.....(.-.-~...K.....b.
.e...'..J.....m[.qd.L.....g.X.b.D.fYY......Y.P.(...............)n+.........{..].)[&.....S.b...C.....	Z.......`.u....*...Z..[..$.N&.DUd.Z...x+.PK5|u..u.A..V..32.,n.......-...-x].Yul.R.J.&....O.... ...b.h.f.k...B.;.m,.`O.... ..+B.Y@E3...cC.?. .	..T1W..#T..c{....I).j.?.'.Q..2._(.}m+.;.....G..Y.0..u.......Z0.....'KVZ.f.U+.......ll..lEa.........Y.......!.....................01@.A !PQq........?.z...W.!.~.....nDd.%L.@..U..A..TH...#_GB.`oA.9.H..H..NTG!....+........................!1.. A"02#3@BQaq.........?.....B.D... ....3....@
.`....5....tp..s.P....Z
.O..q.....LL....h..!.1.s.5..<.s.1...F.2K..Z...{....c%.xB...@..Zr.}..d..AD....Mx9....O..P..1;&.?.P..Z.._.#...H]t.......d....6I."._.....x..^T..Z..Yr.1...Y..(..p..J....)G...&c_.."2;.()l.......=G..'.......nB.....&1...#\.'.;.6..X.m....G....).Q`.r..:.40..
n.FP....O.[PQ.....k..lO.<.T=Qo...L....+...P.w.E..3..w..NF3Y......@....>.hZk....u4h.....N....	;V.......<...$8....o.L.......et.n9i..fJ...D........5.....................!1.."A. Qa.02q@...#BR..$3P.b..........?.`....'7,.,.
Db.l..!......L..*x......t.-..5...C.C.h......#....(.g..Y.......V..X........T.....W..u...;&.0.tO1o.......B{.E.!}............R.....K...=.&.C5....e.]..V...A.	7Q4.7....GeAD.pl..}.7.6Y.o..F...M...*f...s..)	.....1~..Umz.z.@.....`(..jC-A_..n......,8.PH.".....ae-..B..2.L)/Y..D*.;v.K....C...p.D......}...{y...,7P\...
h..*H..4.\..?E'

]T...".0
q:z.	"..Th.K.(.D.sw.....Q...;.?n.......H.... ..c...N.@..WeUP[.......GUNA;...D..iB......kEI(=.M..O.F.J...wB.....D..wYF...Qv.a9.*-M..H...H
....6C>...7.\..........5.
..=].w~S..1.".....^...0!xMv`..D.c.......Z&.dy..P....v......Z*A*...+8...V.....0..n.%xf.{....V...n.....k......y`...*]^...w..*Vf..*......D(BN..U..=P.....>...i.$...@.0..T0zc......5..xD.$R&...]:).v.h>\.....#....K.p..z(.kB.I.l..F...K.;..@+.........U...U`#. 
9j...sI.(*....l...y.Q.n..... !t.S.U0.....P.....C.>.#@T.O=H2..Aq.*.->.B'v..Y...9W.H..J..&.;;`{]..V)....."
.J......
..2.+(.'......Y...J.....V.$e..o.._PDG.t..o...f.,._..Y......5.\r.Gn.%....L*LtS5P..........V....a.4.n.\/K..{F.g.E.r...............B.m.S........@..w
..o.h...3.Yx.-.....
.*..5...Y...C.8D....p......HT...4D....N....8.f...q.dl.....p...m...{..~..x.L8..d........<.D.(.se.s...f}.-..8.....G.DN...R...q6#u.xyr...t..Atcp.i0z..i.....p.....4.~.._.1.Z."g....Xl.p..Y....9N.....`........b.&]a1)....G.p........I6E....)....................!1AQa.q... @..0............?!..L..D.}.\......u...@...CEc.Dj.9...........)h?[....		_m...l..>v..tx:....t.0-e1..UC...L.....x..d.Y.....7F.M.l.zb......c.Tp..P......gE../#.V........{O.......X<Ec..LB....
*.....k.LzF.a
...+x../.]...=s..pT.
...#j..9H..t.&.
.......Q.v......C.G.pA...................M.w...U..$.it.%......>!.X...'...I...P.7N......m..J....`..k.4../......)ph. b.3?`U.
.!M....D.0..&j.e.........n0%$...=..H6...cA.....!..
...~>T..2...-7.)W..bG...Z.-kA.lN...oM....t6p.W..(.@B.45...........X.}=.>)..|bC.BT.._.>..*...%..=...v...q......#.H..7.....g..c. r.g.'Y.`.e...e,b...%x=.Q..
 ....i.....zJ0./l;.a.+U.u:...q. ......s.qD\T.9.._........=YD....#.b....F...v;	2.....fb.V...;A..5
+....O....l<..HV,.p.	;.l...c.V.7WS4.
..........^.0.X:#0-G'y.0uS)....J.....gwaz....q....-.>...J.g.#e..../......{...g+`..-4......z...G..Z..R.6F^!-....^...t.).b......ipb.[7.(.N.e..<s.h.bgJ..^.=! Qz.@..#...
R......44..'.j...+.R..@..@...B-..Tm.	.WM..	,F.......l..,/VS..5..+..h...3..-...M.+....',........m"q`g.../.....km.\o..R.Y2..v..{EQa.Q.	}..IR.xm.....@..B..7..@.|;&7.<...G.w....@../.....52N3.}7.L.x9.J..\T........?.)ZE/:..^R....%.r.....mP....N..I.....49GH.....y....[J...+..J<.u?	...D..J.k.......
..K<.
..b..j....t.1..*l3q......T.F........h.t]G^.}......S.W.x.y.......eGDJ.~......??.8. +.wpFT.Bk......q.w..G...3.....o/)na.8;..8Z..[..y.R..?g.(_9....o.../.....J.h......D..N...z...K...'....^.%;..s@.._........NO.....igD_.Dp...@.W|...+....6.K....<.]*.gY.?....Yc..&+.[.....j......g..=.8o=&iP&../"..0.R]..:..X:.[''...]j$............\w..A.....r.]......q...0.lqs$..s)."../..u.TZ~j.9..X.:.......7........;x..(4......`$;.8..r4.J..]h..-...^....|.Jp1.=.=...q.........N.r...Dr....q*.J..9.....X...~_...[*,....X.....X.(
......7...Y.e...v.;.fH......d.[.,?..J..~.....E..R.M..A.~?Q....R.m.k....H.+h.|.q0E.......q..................(......5.;q.V&I....}Id.p.Nz.c.8..mh......z...Y..\.0b.......&..'y...9..K.N..]y...do..#E2..o..'..6V....qx......r:K....
B.Zb..
....7.4...q..
8).c....._6.h.
....d....8.`.C...Cd...B
^-.....7AX.... .^........E...p..UZt...T.....+m.......V..5.Wf...M.Bf.i.0....N
........W.K...8.q.^..
...N...f{'..5$........H....=........0Tl...,.K......]Z.......4.5....2._..B.{.?<_.JXg	.:\$\...?...~..@.<..7.V...=%B.b../.
..T.3.g.@.	.6...~G..PX...~X.fp....cA(.6.u.d..<.	.4...O(.....
..O[.XR.s({j
.QR.D..J...
..j......t..w.rr.7-..k#Fy~8.....b*.."..//..[...e.7.....(J...{`..U..,u....J..e....].....n..x....q....`..]'9`.....,5+.I.....@.*.7.2c...W....@..AB..X.....'>....................l.,.]...v....^..7...."..t,)...4.......g.B.`k....rc..
..;...Uv..l.....vV..C.S..g..lt...4.C..a.:]v..9.n$......cv...3l.B....W....s..k...
,0.....I=d..{JH..0......R........0......y.....N......."u..|.............................1. !0AQa@........?..[^..hn..wR..4.
/...../.j`jlbCt_.]Q.>..ZI.....'..ey......O../..m...{a6%Y..67...........L4W!s..q.pu.....zn.. ..+.....N9.n.5!.F%....T...........CSN.	.Q..9...V%...Q....2.!...'....................!1A.Qaq. ................?.#j.w..b.0,...r..s..D+3W.8..ND.$0.......9....Q.Fi...d4;...a.."....m._..}...8T.P.......+..........G.c/.8..au...m7.."J....b%
t..s..a..s..%..<..H<
.=<....w.O.....FQ..@..6.b.@.@...}.t..W=cG7
..&%...."....|.............3..0E,.MrJ..................R...o..h....84\l]..~$C.9+.}.{K..U.kF.s.1.h..V....oZ...y...iV...V.+..y.@.
..3E3.u.uM.v...".;......zv..
s...v.B...Q.K.......iU)]......Z4...Bj....?>.K)...J.....QV..R...=..m;B..5..\..;B.l......
8.5....0.....!.....W..yP.).6M.g...F....3.....5..R..............o...eE........YR......W7.W.	g&M...k......V........%..s...}._.........`..]......$G.h-
....HC.uK...S......!wP..m...[U...o...H@!.|.P5 ........G...5.$..a...;.3.......(....................!1AQaq. ..0...............?...Y.P...l.	j...o...X.1..L.......$..V..x.[...
.uo.>'...^v	..8}<...A..%J.t.]eeD...i..}F0..A.n...c.f$u..Y.f.'P.K'.......?wle(6GV.....L....%k...n...r*PTzeN&..3f.58U6....m.j.........b..^...V)....h_4Pp;+.z8!...<%..8w.T.2...Y.#..S7..;...V..XZ.._..%.+=d"2.H....v.TnH..z.,..i..s.z...0....F..W..
{.>*...~..a	"v.C .g9].5o.8.p..4.....rG ..Q.06{.t`j...m.p.(vd.....4o..9\U..4........q.......~.S*...=?..V&..%..).........2o1.Tl....!J4.....U.....5bk.	..Icw.g?.
..9`.x{..0Z.
.i......rkTx5..C
..j.U...L.I../.A.......a|SJ.#^..4qpM..A..K.paF].U/.....T,...kt.e...hWn..pA.....b..s.G.1.Q.j........Z..".e..rJ.M.Z..UOA..>..Q[\8..=....6."+..w0..B.xXW...."N	N..X.
W...................x..c	)..]).....?.a..@..+..../.......0e.........!(..n......-.'-....t.0.....q..a.`.M#... .!.-....[nW.A w...
....+.....
.0.Hq..MV".R....K....S7..n.....h<,G..8..d..U.m.?.}.X.....WG.V..9X|..v&.f......1..5T..&.BL..Q..k[..@...Qe_FP...9.s..EUZ..3.....Jg6M."u.v...(.]........A
S.`.=...7.i..}'.d......h.B...:..&.8.......G."+....S.x...r...Z s..
b*..S^.i.?.El...
U..aQ.f..sV..j.h.......-..:u........wZ......K9v/(....v...>

.n../.$,F:..~..P<bx..t.....x..0.
r...7
.)...L.2}._8..+!..6........r,j.PS.w.B.-....!&L.j<....
.T.	.........`.g.u4.....c.......\m4.^oo.........^....<2.-.o%z.Fm..P.{v.... .......z
.D..R...C.G....F..-].=....wIM...unR...5........>..9..T...x....ON..~2......|...eU..../;{.oRJ.....r1...y..|.....hp.#...u.>.....H.EE.I.....T.....F...i....a...,-.9W].;w.t.t.)..#i...7.t..=.?>2...Q.....y...I.*....D..t7r....4.YP.9..B.......I.f....J..9.Z2.4...C......R^.&........o.Z.m../r.^.#.O.[X..5~.y.@.!5*i........0lJM..c...J#..._..........p....'N>9~....1Y..)N.P..v8=....X...D.....0...x.h.k.e..^0.7..#..Xb.h.7.......U.....y@5.m.7.....lY.|cf..4.#..<.....1c[;....J......!5...q.v..\c.>...X.. .JQ,.........-y.;-p......'.._`...h...S..HX...B...fF^...|..q.....b.9..]|9?N0 .....&ah..."...wy...
....7C..=.#....v.e...x.L,......jL.35....N...J.G.w....D..`'C.P.wO.b.....I
>.....
...T.[.".(4ok=z.c..CR....r..J-
P.b I.n...`p...!.....".k........go8.5
.k`.............5...<......f
=c.s.Jig/.Z(.$....?.a.....:..:.....z....wt.$..g5.>./9.....}-%xsw...U5.qA..d...{.%w..]..?[.".!.V..<.Q..	dy.?!l..U
.y..$........r.:..... .8.1..}..............'....@U`.	].HL...NFA..EeA5.w.....5&."i.,i,.A.....$]..o{...,D_nv.N4...>......
\.z....."../...)....&..,Hf.].I...>I.x._a.._.?.3..w..'...1E	H.........f\.K.....c."(.........c...#....e	.P.;!	...Q.!.8..I.....#.R${.....o8.......B.T-....i#..Ya..;?}e.....`.
...b>qGY..-...;.q...[.........b.."....3p...T..+j...\......=f...8.'..L,.....0..S.Vh...-..w....8...I.T.|
...#w.D..in...<.....t..Z5....R....G5n.@2".p.IE....h..8....b.}..x[ .....u..L..V........*3.>X.;.r<H....dz..;.@nq...<.....}..|.z....	.(l.W.......	.,.!.Dy.N.N]..}a.'.~.....H....<..1P.zt.....\o'...D.v..84......4.t...G"
U.....2
..\.p..`.n....aL..0-..;.d.^c..".*..	..r.t....&..z.z|..]R..{.3 ...........
...5.).p.Y..`c..pU.k..?4..t.......
...,!..]....!...n...R.K...9.f...].*k.....*.u(._.?..*HE..#.C......l..7f.......}0...5ia._.P...'#4.[.E....72...t.u.....J.:"p..o.........lE`.j...7...6.v........4....?.@In.(.}G.%......LU.....5..-..	
..w.w0%.
..{q.*al.E._...1GZ.......C......~W....KA....B'#
.;.....A...EOkg.q/!.E......^.}%..m.F.x.;..:A.....O...L...@p...N...+j.h.T.p{..UM...x.,...X)S.1..A%....1l+c...=......zsq.1...q..u+......P\.....-Q.u.J..l...YN..I....V..<..........|.....M.;Y...~..W-.P].4.b<.^u.6g......f.h.......<....n... lP6 ....j..orgt..QM..7q.).{..l..D.....B.*....I.K...
/++(.0..#.A.$....[..U......x..I.+..[;.U.....GY..-..I...n..E!"...P...%.Q.j..X:.. ?."....ix"...h....gq.T...."j....`..(.z.......b....P..;0.......:.....
...H.-E.J..x..Ar<P[u...U
.....<.t.....Ay.)6.... R..[....tE.
...>1..d.;.^|.....\%....x...S!.KAB(..T..O..BT..t.
....$d
EH.WM.......Nn..R....
..A....#..O.>.LQ.r.....A)O..-...>..~..w.D.Z.9..9...\s.....q.D.L........@.(.h......G}..P.........H.......z".Y.de.%....).|
.l=|d..P.H.A!...F...Ac`....#sE5..(/.63...U.5V.......h
.q.n1Dj.........O..v.O...Y....~14..UC.....H...%.M;......r
.(=.8/...Z<..CN4.m^.d.....(.W.X....w..............MTJ......... ...	....k.h.......v...\.........$..QU.^71..@.....[..i.0....XKj0)ek......uo...t.&...N...?X.3....c.}..5..._86.+...s.........^..9...eSN...k7..q.
<9...9..2....Ced.......0!4.b.o.}37B.. 7. ..B.Ug....f.p..d.F.>p..L....=...h..\
.:..?.+.k...&...z.........c
....!.
.,c.z&.N..A.....<..l.E.......` ........5^...gC.y_.$@X.....j.d+.".$....$C.R.*.$.<.@.8a91d..`.O......EAg#..%.......M!.f.5...@0N...3.B...(].P.(..J....
....(.......2
7]..V4./+..k?.....7.@........ Hl....b.....[=..'..%..._.8.\.|..0/t..h.J..U.Q'.....O.ay...8..
T.7....!..(.V.`f.s..h..)P.T....?..
