<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Explanation on how I send emails and why I send them that way and the problems which it can cause and solutions to them." />
<meta name="keywords" content="OpenPGP,gpg,email,long,signature,long signature,PGP,GnuPG," />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/articles/Emails.html">
<title>How I send emails and why I send them like I do.</title>
<link rel="stylesheet" type="text/css" href="../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](sitemap/sitemap.html)
<hr/>

# Why do I send emails how I sent them

## OpenPGP signing

I sign my emails using [GnuPG](http://www.gnupg.org/) which is free implementation of the [OpenPGP](https://www.ietf.org/rfc/rfc4880.txt) standard. 
The signature can be used to verify that I am the sender and that nobody modified the 
message.

## UTF-8

I use UTF-8, because it allows all characters and it's widely used everywhere. It is 
also the default character set of [Python 3](http://python.org/). UTF-8 is also recommended on most of 
IRC channels and networks.

## Plain text emails

I think that HTML emails only waste space. The content is HTML and even if it's not 
directly visible to the user, it has a lot of content when reading the email source. 
With plain text emails the source is only text, nothing is in HTML.

## Replying below quotes.

Many mailing lists wish emails to be replied under the quoted text and inside the 
message. It also makes the email easier to read when you know what has been said 
previously.

## Issues which you might have with my emails and how to fix them

### OpenPGP signature

#### Long mess as signature

The "long mess" should be hidden automatically by email client when you import my 
public key (I will tell you more about that later). If your email client doesn't do 
this, I suggest you to file a bug report to your email client or change it. I use and 
recommend [Thunderbird] with [Enigmail] plugin.

#### Importing public keys automatically

This will hide most of them and show you small notification about the email being 
signed. There are two ways to import keys automatically.

##### Enigmail level (Enigmail only)

Go to OpenPGP --> Settings and click "Show Expert Settings". Then open tab "Keyserver" 
and enter the following to the below box:

```
pool.sks-keyservers.net
```

Then click "OK" and you should get all keys automatically from pool.sks-keyservers.net 
when you receive email signed with unknown key presuming that the key is at the 
keyserver. If it's not, you will see the signature and error about key not found.

##### GnuPG level

Modify the Enigmail configuration file which should be on one of these locations:

```
Linux: ~/.gnupg/gpg.conf
Mac OS X: ~/.gnupg/gpg.conf
Windows: C:\Users\User\AppData\Roaming\gnupg\gpg.conf
(I'm not fully sure about Windows location)
```

and add these lines:

```
keyserver pool.sks-keyservers.net
auto-key-locate keyserver
keyserver-options auto-key-retrieve no-include-revoked import-clean
import-options import-clean
export-options export-clean
```

You actually need only the first and third lines, but I recommend all what I mentioned 
and I explain what they do.

> keyserver pool.sks-keyservers.net

Sets the default keyserver as pool.sks-keyservers.net.

> auto-key-locate keyserver

If you are sending encrypted email to someone whose key you don't have, GPG 
tries to find it from keyserver automatically.

> keyserver-options auto-key-retrieve no-include-revoked import-clean

When doing something with keyserver, get key automatically if it's missing and it has 
signed something and the signature is being verified and when searching, do not show 
revoked keys and remove useless signatures (=signature from missing key) from keys.

> import-options import-clean

> export-options export-clean

When importing/exporting keys, remove all signatures that are from keys that aren't 
in keyring.

<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/articles/Emails.html';
var disques_title = 'How I send emails and why I send them like I do.';
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
<script type="text/javascript"> 
    var adfly_id = 3820004; 
    var adfly_advert = 'banner'; 
    var exclude_domains = ['example.com', 'example.org', 'cadoth.net', 'mkaysi.github.com', 'mkaysi.github.io']; 
</script> 
<script src="http://cdn.adf.ly/js/link-converter.js"></script>
</html>
