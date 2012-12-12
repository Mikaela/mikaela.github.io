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

This is my cheatsheet for setting up distribution using rpm (mainly Fedora & CentOS). I am more experienced with distributions using dpkg, so I need this a little in the beginning.

## Always get the fastest mirror

```
yum install yum-plugin-fastestmirror
```

By default cheks every 10 days, change configuration variable "maxhostfileage" file to 0 to make it search always when yum is ran in /etc/yum/yum.pluginconf.d/fastestmirror.conf and check that "enabled" is set to "1". If it's 0, the plugin is disabled.

## 3rd party repositories

<table>
	<tr>
		<td>Repository</td>
		<td>My priority</td>
		<td>Description</td>
	</tr>
	<tr>
		<td>Base/Fedora-*</td>
		<td>1</td>
		<td>Official Fedora/CentOS packages</td>
	</tr>
	<tr>
		<td>Extra</td>
		<td>2</td>
		<td>CentOS only, extra packages</td>
	</tr>
	<tr>
		<td>[Flash]</td>
		<td>10</td>
		<td>Adobe Flash, shouldn't conflict with EPEL and EPEL is CentOS only.</td>
	</tr>
	<tr>
		<td>[EPEL]</td>
		<td>10</td>
		<td>Extra Packages for Enterprise Linux (CentOS only)</td>
	</tr>
	<tr>
		<td>[RPM Fusion]</td>
		<td>11</td>
		<td>"Provides software that the Fedora Project or Red Hat doesn't want to ship"</td>
	</tr>
	<tr>
		<td>[Livna]</td>
		<td>11</td>
		<td>Provides libdvdcss for watching DVDs</td>
	</tr>
	<tr>
		<td>[RPM Forge]</td>
		<td>12</td>
		<td>CentOS only ( ? ), "Provides a set of repositories"</td>
	</tr>

</table>
### Terminal enabling

This is faster than the GUI method

### Fedora

```
echo "Adobe doesn't provide direct download link for the package :("
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
rpm -ivh http://rpm.livna.org/livna-release.rpm
```

### CentOS

```
echo "Adobe doesn't provide direct download link for the package :("
rpm -ivh http://download.fedoraproject.org/pub/epel/<RELEASE>/i386/repoview/epel-release.html # replace <release> with CentOS / RedHat version. For example: 5 or 6 NOT 6.X or 5.X!
rpm -ivh http://download1.rpmfusion.org/free/el/updates/<RELEASE>/i386/rpmfusion-free-release-<RELEASE>-1.noarch.rpm # Read the comment on line above
rpm -ivh http://download1.rpmfusion.org/nonfree/el/updates/<RELEASE>/i386/rpmfusion-nonfree-release-<RELEASE>-1.noarch.rpm # The line two lines above tells you what to do...
rpm -ivh http://rpm.livna.org/livna-release.rpm
rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el<RELEASE>.rf.<ARCH>.rpm # Replace <RELEASE> with CentOS version (examples some lines above) and <ARCH> with i686 or x86_64
```

## Priorities

Prevent repositories from conflicting each other:

```
yum install yum-plugin-priorities
```

Ensure that it's enabled by looking at /etc/yum/pluginconf.d/priorities.conf ! "enabled" should be 1

Edit all .repo files in /etc/yum.repos.d/ and add PRIORITY=X to everything. My priorities are listed on same table as repositories themselves.

## Installing Virtualbox guest additions

```
yum install dkms # requires some of the 3rd party repositories, EPEL on CentOS.
```

```
yum install VirtualBox-guest # Fedora only ( ? ) Requires RPM Fusion
```

Or using guest additions shipped with [VirtualBox];

```
yum groupinstall "Development Tools"
yum install kernel-devel
```

Press HOST + D and cd to the mount point and run the Linux Additions installer and after successful installation, reboot

## Installing LibreOffice (for people not installing from DVD) in Fedora

```
yum groupinstall office
```

## Installing Finnsh language

and replacing "finnish" or "fi" with your native language

```
yum groupinstall finnish-support
```

or with KDE

```
yum install kde-l10n-fi
```

## Installing all Gnome shell extensions

```
yum install gnome-tweak-tool "gnome-shell-extension-*" # This might not be a good idea.
```

Use gnome-tweak-tool to enable/disable them. They might need reboot/logging in again before they appear in gnome-tweak-tool.

## Installing all codecs/gstreamer plugins

```
yum install "gstreamer-plugins-*" --skip-broken # Might not be a good idea...
```

## Installing Flash

```
yum install flash-plugin # requires Adobe Flash repository to be enabled.
```

## Installing NVidia restricted drivers

```
yum install kmod-nvidia # requires RPM Fusion
```

## Installing (restricted?) miscellaneous things

Codecs, restricted font technologies etc.

```
yum install audacious-plugins-freeworld k3b-extras-freeworld xine-lib-extras-freeworld libdvdcss vlc mozilla-vlc unrar freetype-freeworld
```

<hr/>

Some commands mentioned here are copied from [Linux.fi] wiki, but it's in Finnish.

<hr/>

[Flash]:https://get.adobe.com/flashplayer/
[EPEL]:https://fedoraproject.org/wiki/EPEL#How_can_I_use_these_extra_packages.3F
[RPM Fusion]:http://rpmfusion.org/Configuration
[Livna]:http://rpm.livna.org/
[RPM Forge]:http://repoforge.org/use/
[VirtualBox]:https://www.virtualbox.org/
[Linux.fı]:http://linux.fi/wiki/Etusivu
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
