<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="dd cheatsheet" />
<meta name="keywords" content="dd,usb,isohybrid,hybridiso,syslinux" />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/articles/cheatsheets/dd.html">
<title>dd cheatsheet</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

# Introductiom

Programs used / Debian packages

isohybrid dd ddrescue / syslinux coreutils gddrescue

Finding out what is the USB drive in /dev/sd*

Start by mounting the stick which should be automatic in GUI.

```
mount|grep /dev/sd
```

should tell what is the /dev/USBSTICK

## Creating bootable USB stick

```
isohybrid image.iso
dd if=image of=/dev/USBSTICK bs=1024;
```

## Creating .iso from CD/DVD

First unmount the CD/DVD and then

```
dd if=/dev/DRIVE of=image.iso
```

DRIVE can be /dev/dvd /dev/cdrom or /dev/scd0 depending on the CD/DVD.

## Backing up scratched CD/DVD

```
ddrescue /dev/device /where/to/create/the/file.iso /path/to/logfile.log
```

The logfile.log is used to keep track of what has been recovered. You can use same logfile for multiple clones.

Usage: You have two broken copies of same device. First you clone the other and then give same command to other, different source, but same destination and log file. If the device isn't broken on same part as the another, ddrescue will build a complete file.

I would also use ddrescue with backing up large devicces instead of dd.

<!-- vim : set ft=html -->
<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/articles/cheatsheets/dd.html';
var disques_title = 'dd cheatsheet';
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
