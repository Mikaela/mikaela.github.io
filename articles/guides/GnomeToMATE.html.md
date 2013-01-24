<!DOCTYPE html>
<html>
<head>
<meta name="description" content="What is what in GNOME and MATE" />
<meta name="keywords" content="GNOME,MATE," />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/GnomeToMATE.html">
<title>Moving from GNOME to MATE</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

# What is what in MATE and GNOME.

<table border=1>
	<tr>
		<td>MATE</td>
		<td>GNOME</td>
		<td>What it is?</td>
	</tr>
	<tr>
		<td>Caja</td>
		<td>Nautilus</td>
		<td>File manager</td>
	</tr>
	<tr>
		<td>Pluma</td>
		<td>Gedit</td>
		<td>Text editor</td>
	</tr>
	<tr>
		<td>Eye of MATE</td>
		<td>Eye of GNOME</td>
		<td>Picture viewer</td>
	</tr>
		<tr>
		<td>Atril</td>
		<td>Evince</td>
		<td>Document viewer</td>
	</tr>
		<tr>
		<td>Engrampa</td>
		<td>File roller</td>
		<td>File extractor</td>
	</tr>
		<tr>
		<td>MATE Terminal</td>
		<td>GNOME Terminal</td>
		<td>Terminal emulator</td>
	</tr>
</table>

## Notice about aptitude

If you don't have aptitude installed, you can get it with

> apt-get install aptitude

as root or if you don't want to use it,

> alias aptitude=apt-get

## Removing GNOME versions.

If you want to remove GNOME versions, just run

> aptitude remove nautilus gedit eom evince file-roller gnome-terminal

as root.

## Removing MATE versions

If you want to remove MATE versions, just run

> aptitude remove caja mate-text-editor eom atril engrampa mate-terminal

as root.

<strong>WARNING: You do everything on this page with your own risk.</strong>

## Sources

[MATE applicaltions]

Own experience with Linux since 2008.

[MATE applicaltions]:http://mate-desktop.org/applications/

</body>
</html>

<em>WARNING: These guides are very unclear and I should use time to make them understandable etc.</em> says sitemap.</em>

<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/articles/guides/GnomeToMATE.html';
var disques_title = 'Moving from GNOME to MATE';
var disqus_shortname = 'mkaysishomepage'; // required: replace example with your forum shortname
/* * * DON'T EDIT BELOW THIS LINE * * */
            (function() {
                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = 
true;
                dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0])
.appendChild(dsq);
            })();
        </script>
        <noscript>
Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Dis
qus.</a>
</noscript>
        
<p><a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus
</span></a></p>
<!-- vim : set ft=html -->
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<html>
<body>
  <script type="text/javascript" 
   src="http://ajax.googleapis.com/ajax/libs/chrome-frame/1/CFInstall.min.js"></script>

  <style>
   /* 
    CSS rules to use for styling the overlay:
      .chromeFrameOverlayContent
      .chromeFrameOverlayContent iframe
      .chromeFrameOverlayCloseBar
      .chromeFrameOverlayUnderlay
   */
  </style> 

  <script>
   // You may want to place these lines inside an onload handler
   CFInstall.check({
     mode: "overlay",
     url: "https://www.google.com/intl/en/chrome/business/browser/chromeframe.html"
   })
  </script>
</body>
</html>
