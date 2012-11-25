<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Thunderbird/Icedove guide" />
<meta name="keywords" content="Thunderbird,Icedove,Enigmail,gpg,gnupg" />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/Thunderbird-Icedove.html">
<title>Thunderbird/Icedove guide</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

# Thunderbird / Icedove guide

## What do you need?

### Debian

On Debian you need package Icedove, but you should also install Enigmail and GnuPG and GnuPG2

> # aptitude install icedove enigmail gnupg gnupg2

### Ubuntu

On Ubuntu you should install same packages as with Debian, but Icedove is called as Thunderbird.

> # aptitude install icedove enigmail gnupg gnupg2

### Mac OS X

You need Thunderbird, but you should also install GPG-Tools and Enigmail.

### Windows

You need at Thunderbird, but you should also install GPG4Win and Enigmail.

## Setting up

When you open Thunderbird / Icedove for the first time, it will ask for email address and password. Give them and Thunderbird will attempt to find the details and after that it downloads emails from the server.

## Sending plaintext.

To send emails in plaintext, open Edit --> Account settings --> Composition & Addressing and uncheck the box "Compose messages in HTML format.

### Why to not send emails in HTML?

See my complaining about HTML usage [here].

[here]:../complaining/HTML.html

## Sending UTF-8.

This doesn't affect emails with any visible way. It might just remove some charters in message source and it will allow you to send more charters than some latin1 charset. It might also remove charset line in PGP/INLINE signed emails.

Open Edit --> Preferences --> Display --> Formatting --> Advanced... --> Character Encodings and set both "Outgoing Mail" and "Incoming Mail" as "Unicode UTF-8" and check the checkbox "When possible, use the default character encoding in replies."

## Why to send emails in UTF-8?

I am going to write explaining for this later.

## Read also

My [GPG guide] and my [Enigmail guide].

[GPG guide]:GPG/GPG.html
[Enigmail guide]:GPG/Enigmail.html

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Thunderbird / Icedove guide</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="http://mkaysi.github.com/articles/guides/Thunderbird-Icedove.html" rel="dct:source">mkaysi.github.com</a>.

<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/articles/guides/Thunderbird-Icedove.html';
var disques_title = 'Thunderbird and Icedove guide';
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

</body>
</html>
<!-- vim : set ft=html -->
