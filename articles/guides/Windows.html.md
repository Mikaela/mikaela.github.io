<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Interesting things with Windows (mainly 8 or 7)." />
<meta name="keywords" content="Windows,Windows7,Windows8,7,8,netsh,WLAN,tether,connection,sharing,Administrator,root,enable," />
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

TODO: I must find out how to not have the network WPA2 secured. Leaving key=mypassword out doesn't seem to work.

<iframe src="https://openwireless.org/widget/150x196/" width="150" height="196" frameborder="0"></iframe>

### Getting internet access to the new network.

Right click the network icon on the taskbar and select "open network and sharing center". Then select "change adapter settings" in the window which opens and right click the connection which you want to share. Click properties and then "Sharing".

Share the connection using your new network which is something like "Wireless Local Area Connection 2" and uncheck "let others manage this connection", but remember to keep "let other users access the internet using this connection" checked. Then click "OK" or "apply" and your tethered network has internet access.

To see devices which are currently connected to the network, run

```
netsh wlan show hostednetwork
```

The hosted network gets disabled on reboot, but you can enable it again by running "netsh wlan start hostednetwork" (as administrator). You don't need to do anything else, it remembers the shared network connection.

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
