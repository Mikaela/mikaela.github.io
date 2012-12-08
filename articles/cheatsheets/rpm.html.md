<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="My cheatsheet for rpm based distributions, mainly CentOS/Fedora." />
<meta name="keywords" content="rpm,Linux,CentOS,Fedora" />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/articles/cheatsheets/rpm.html">
<title>Cheatsheet for distributions using rpm</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

# My cheatsheet

This is my cheatsheet for setting up distribution using rpm. I am more experienced with distributions using dpkg, so I need this a little in the beginning.

## Installing Virtualbox guest additions

Start by installing dkms from [EPEL](https://fedoraproject.org/wiki/EPEL#How_can_I_use_these_extra_packages.3F).

```
rpm -i <package downloaded from EPEL link above>
yum install dkms
yum groupinstall "Development Tools"
yum install kernel-devel
```

Press HOST + D and cd to the mount point and run the Linux Additions installer.

## Enabling other repositories

For [EPEL](https://fedoraproject.org/wiki/EPEL) follow the first steps for Virtualbox guest additions installing above.

### RPMGforge

Download the [package](http://wiki.centos.org/AdditionalResources/Repositories/RPMForge#head-f0c3ecee3dbb407e4eed79a56ec0ae92d1398e01) and install it with

```
rpm -i <package>
```

### yum-plugin-priorities

Using multiple 3rd party repositories (EPEL, RPMforge) is dangerous so you must use priorities to be safe.

```
yum install yum-plugin-priorities
```

Ensure that it's enabled by looking at /etc/yum/pluginconf.d/priorities.conf . It should read

```
[main]
enabled=1
```

Now the plugin should be working and you must assign priorities.

Edit the following files:

```
/etc/yum/yum.repos.d/CentOS-Base.repo
/etc/yum/yum.repos.d/epel.repo
/etc/yum/yum.repos.d/epel-testing.repo
/etc/yum/yum.repos.d/rpmforge.repo
```

and add

```
priority=X
```

to end of every section where X is replaced with actual priority.

[CentOS wiki](http://wiki.centos.org/PackageManagement/Yum/Priorities) suggests the following priorities:

CentOS-Base: everything is priority=1 except contrib priority=2

Third party repositories (EPEL,rpmforge) should b > 10 and other should be more preferred than other. I used

epel 10 rpmforge 11

<!-- vim : set ft=html -->
<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/articles/cheatsheets/rpm.html';
var disques_title = 'rpm cheatsheet';
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
