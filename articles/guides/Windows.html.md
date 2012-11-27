<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Interesting things with Windows (mainly 8 or 7). Activating administrator, tethering without 3rd party tools, removing passwords without knowing them, automatically logging in without regedit, USB installation..." />
<meta name="keywords" content="Windows,Windows7,Windows8,7,8,netsh,WLAN,tether,connection,sharing,Administrator,root,enable,USB,rearm,slmgr,ei,ei.cfg,cfg," />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/Windows.html">
<title>Interesting things to do with Windows</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

You can do interesting things with Windows 8 and 7. For example you can tether your connection to other devices without installing 3rd party software, enable Administrator account etc.

## Removing password without Administrator access.

This can be done easily with [ntpasswd]. It also has other features, but I only recommend using the "blank password" / "remove password" function as it's the most working one. This feature should work with Windows XP too, but I have only tried it with 7 and 8.

I don't type usage instructions here, because [ntpasswd] has enough good documentation and it's easy to use anyway.

[ntpasswd]:http://pogostick.net/~pnh/ntpasswd/

## Enabling Administrator account

Administrator is <em>root (Linux/Mac/*NIX SuperUser) of Windows</em>. Some people prefer to be able to login as root/Administrator directly in emmergency or if they need to do something as root quickly.

To enable this account open cmd.exe as Administrator.

Windows 8: You can do this by going to ModernUI by pressing Windows button or activating the hot corner on bottom left. Then start typing (or type) "cmd", right click "Command Prompt" which appears and select "Run as Administrator".

Windows 7: Open Start menu by pressing Windows button or by clicking the start menu. Then start searching for "cmd" and you should receive result "cmd.exe" or "Command Prompt". Right click it and select "run as Administrator".

Now you are on cmd.exe which is running as Administrator. Next you must find out what is the Administrator account called. It depends on which language Windows was originally installed.

With English installation the Administrator account is "Administrator" and in Finnish installation "Järjestelmänvalvoja". You can see the list of users including Administrator by running

```
net user
```

(Todo: add example output).

Now you should know the name of Administrator account and you can enable it running:

```
net user Administrator /active:yes
```

Where you replace "Administrator" with the account which is Administrator in "net user" e.g. Järjestelmänvalvoja. If you want to disable it, simply change "/active:yes" to "/active no".

<strong>Administrator doesn't have password set by default</strong> so now go to Control Panel and Users. Select "manage other user" and then select "Administrator" and set password for it.

If you cannot think any password for it, you can use same password as with your own account in emmergency like [Linux Mint](http://linuxmint.com/) is doing. It uses the password of the user which was created in installation as root password. With [Ubuntu](http://ubuntu.com/) root account is disabled by default and it can be enabled by running "sudo passwd root" and setting password.

<strong>You must set password for Administrator, because that account can do everything without User Access Control (UAC) prompts!</strong>

Remember also to not use the Administrator account for general use.

## Tethering connection without 3rd party tools

This can be done with netsh, but the network doesn't have connection to internet at first.

First open cmd.exe as Administrator (activating administrator account). This requires normal user with administrator rights.

First allow tethering to be used and set SSID and password and start the network.

```
netsh wlan set hostednetwork mode=allow ssid=mynetwork key=mypassword
netsh wlan start hostednetwork
```

NOTE: If you get error about missing svchost service or something else, press Windows + R and run "services" and enable "Wireless autoconfiguration" or something like that.

NOTE2: If you get other error, disable the network card in adapter settings and enable it again. Then run "netsh wlan start hostednetwork again".

NOTE3: If nothing helps, run "netsh wlan show drivers" and ensure that your network card supports hosted/virtual networks.

According to [superuser user Soumya](http://superuser.com/a/308692) it's not possible to have open hosted network :(.

<iframe src="https://openwireless.org/widget/150x196/" width="150" height="196" frameborder="0"></iframe>

### Getting internet access to the new network.

Right click the network icon on the taskbar and select "open network and sharing center". Then select "change adapter settings" in the window which opens and right click the connection which you want to share. Click properties and then "Sharing".

Share the connection using your new network which is something like "Wireless Local Area Connection 2" and uncheck "let others manage this connection", but remember to keep "let other users access the internet using this connection" checked. Then click "OK" or "apply" and your tethered network has internet access.

To see devices which are currently connected to the network, run

```
netsh wlan show hostednetwork
```

The hosted network gets disabled on reboot, but you can enable it again by running "netsh wlan start hostednetwork" (as administrator). You don't need to do anything else, it remembers the shared network connection.

## Automatic login without regedit

Of course, it's possible to set autologin with regedit too, but in my opinion this way is much faster.

Press Windows + R and then run 

```
control userpassswords2
```

Then select user <strong>which is not Administrator</strong> from the list and check the "Users don't need passwords to login" above.

## Disabling Windows 8 Modern UI

Some people like the new Modern UI (me) and some hate it (my brother). It can be disabled easily by installing [Pokki].

[Pokki] is Start Menu for Windows 8 which also has options to login directly to desktop (without seeing Modern UI) and disable hot corners. Pokki also includes inbuild application store where you can <em>get hundreds of free applications.</em>

First download [Pokki] and when you see the start menu, right click it and set the settings you want (boot to desktop & disable hot corners).

[Pokki]:https://www.pokki.com/

## Creating Windows USB install
<div id=usb>

[RaivoGalleria](http://www.raivogalleria.net/?p=1388) has good instructions on how to create bootable Windows USB stick, but iẗ́'s in Finnish. It uses Windows internal utilities instead of Windows 7 USB creator tool, so you don't need .net framework.

1. Plug in the stick and open cmd.exe as Administrator (right click it in Start menu/Modern UI and select "run as Administrator).

2. Enter the following commands <strong>replacing X with your USB stick number</strong>. WARNING: This will erase everything on that stick.

```
diskpart
list disk
select disk X
clean
create partition primary
select partition 1
active
format fs=ntfs
```

The formatting will take some time... After it's done, enter these two commands:

```
assign
exit
```

Now minimize the command prompt, you will need it soon.

4. Mount the Windows 8 image. If you are using Windows 8, simply double click it. Otherwise download use [Daemon-Tools](http://www.daemon-tools.cc/eng/home).


5. Open the command prompt again and replace the first X: with drive letter of the virtual drive containing Windows installation image and the second with USB stick letter.

```
X:
cd boot
bootsect.exe /nt60 X:
exit
```

Now open the virtual drive and copy-paste all files to the USB stick. Then read the next section of this page unless you made Windows * Enterprise stick.

</div>

## Installing all versions from single media
<div id=eicfg>

<strong>Important notes:</strong>. This <strong>doesn't work with any Windows Enterprise version disk</strong> and this <strong>allows installing without product key.</strong> If you are using <strong>earlier Windows than 8 remove the ei.cfg</strong> from "sources" folder instead of creating it.

First disable hiding of extensions of known file types in folder options if you haven't done so already. Then go to the USB stick and open folder sources.

Create a new file called "ei.cfg" (NOT "ei.cfg.txt" which you will get if you hide extentions of known file types!).

Then paste the following into it:

```
[EditionID]

[Channel]
Retail
[VL]
0
```

and save. Note that the second line must be empty.

Now try booting from the stick and press "install". You will get a menu asking whether you want to install "Windows 8 Pro" or "Windows 8" (this doesn't work with Enterprise). If you don't want to boot, press the X on top right corner and then click it again and your computer reboots.

This method also removes asking of product key from installation.

</div>

## Extending the trial period
<div id=rearm>

Thank you for the tip [nyuszika7h](https://github.com/nyuszika7h) :)

Windows offers trial period of 30 days by default. When that time has went, you can open cmd.exe as Administrator and run

```
slmgr /rearm
```

to get another 30 days (Windows 7 Enterprise gives only 10). This can be repeated three times (with Windows 7 Enterprise six) so you will get 90 days.

To check how many rearms you have left, simply run

```
slmgr -dlv
```

I have heard that there is registry value which allows the rearm time to be reset some times, but I haven't tried it.

</div>

<!-- vim : set ft=html -->
<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/articles/guides/Windows.html';
var disques_title = 'Interesting things with Windows';
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
