<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Tells what should be removed from PGP/INLINE signed emails when replying in case email client doesn't do it." />
<meta name="keywords" content="email,PGP,inline,PGP/INLINE,Enigmail,Thunderbird,Icedove,reply" />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/PGP/Replies.html">
<meta charset="UTF-8" />
<title>What to remove in replies to PGP/INLINE signed emails.</title>
<link rel="stylesheet" type="text/css" href="../tyyli.css" />
</head>
<hr/>
[Sitemap](../sitemap/sitemap.html)
<hr/>

# What you should remove from email, when you reply into PGP/INLINE signed email.

## Top

From top of the email, remove everything after 

> -----BEGIN PGP SIGNED MESSAGE-----

untill the first line change.

For example:

```
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,
```

You would remove

```
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1
```

so the message would be

> Hi,

# Bottom

Remove everything between lines

> -----BEGIN PGP SIGNATURE-----

and

> -----END PGP SIGNATURE-----

<div id="clustrmaps-widget"></div><script type="text/javascript">var _clustrmaps = {'url' : 'http://mkaysi.github.com/', 'user' : 1040881, 'server' : '4', 'id' : 'clustrmaps-widget', 'version' : 1, 'date' : '2012-09-02', 'lang' : 'en', 'corners' : 'square' };(function (){ var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = 'http://www4.clustrmaps.com/counter/map.js'; var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);})();</script><noscript><a href="http://www4.clustrmaps.com/user/bd3fe1f1"><img src="http://www4.clustrmaps.com/stats/maps-no_clusters/mkaysi.github.com--thumb.jpg" alt="Locations of visitors to this page" /></a></noscript>

</html>

<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/PGP/Replies.html';
var disques_title = 'Replying to PGP signed emails';
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
