<!DOCTYPE html>
<html>
<head>
<meta name="description" content="My OTR keys" />
<meta name="keywords" content="PGP,OTR,Pidgin,Jabber,XMPP,encryption,IM" />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/PGP/OTR.html">
<title>My OTR keys</title>
<link rel="stylesheet" type="text/css" href="../tyyli.css" />
</head>

<strong>I will be putting everything in table and updating lists so the signature isn't available right now.</strong>

# OTR

This page lists my OTR key finger prints. I have different keys for all devices, because the keys aren't as easy to sync than with GPG.

To check PGP/GPG signature of this page, download the [markdown source] and [signature] files...

```
curl -OL http://mkaysi.github.com/PGP/OTR.html.md
curl -OL http://mkaysi.github.com/PGP/OTR.html.md.asc
```

...and then run...

> gpg --verify OTR.html.md.asc

... You should get something like "UNTRUSTED: Good signature from Mika Suomalainen".

[markdown source]:OTR.html.md
[signature]:OTR.html.md.asc

# Devgan

Devgan is a laptop.

## Pidgin

### Debian


<table border=1>
	<tr>
		<td>Username</td>
		<td>@Server</td>
		<td>key fingerprint</td>
	</tr>
</table>


<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/PGP/OTR.html';
var disques_title = 'My OTR keys';
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
</body>
</html>
