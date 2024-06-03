---
layout: post
comments: true
title: "dnssec-trigger on Ubuntu (MATE 16.04)"
category: [english]
tags: [IPv6, english]
redirect_from: /english/2016/01/14/dnssec-trigger_ubuntu.html
sitemap: false
---

_I haven't ever gotten dnssec-trigger to work, but today based on IRC
discussion, I finally understood what was wrong._

It's very simple.

```
# Check for updates to the repos & install dnssec-trigger and unbound
sudo apt-get update && sudo apt-get install unbound dnssec-trigger
```

And this is the farthest I have gotten before. But today at IRC there
was talk on DNS proxies which Ubuntu and Fedora use, Ubuntu uses dnsmasq
and Fedora unbound. That made me _read the fine manual_ of
NetworkManager.conf...

```man
       dns
           Set the DNS (resolv.conf) processing mode.

           default: The default if the key is not specified. NetworkManager
           will update resolv.conf to reflect the nameservers provided by
           currently active connections.

           dnsmasq: NetworkManager will run dnsmasq as a local caching
           nameserver, using a "split DNS" configuration if you are connected
           to a VPN, and then update resolv.conf to point to the local
           nameserver.

           unbound: NetworkManager will talk to unbound and dnssec-triggerd,
           providing a "split DNS" configuration with DNSSEC support. The
           /etc/resolv.conf will be managed by dnssec-trigger daemon.

           none: NetworkManager will not modify resolv.conf.
```

And there is the solution, unbound. The third line of NetworkManager.conf
is usually `dns=dnsmasq`, just change it to `dns=unbound` or add the line
if it doesn't exist and restart networkmanager with `sudo systemctl restart NetworkManager.service` and your dnssec-trigger should now work.

And when you `sudo reboot` you should see new dnssec-trigger tray icon in
your tray bar or whatever it was called as.

_Edit_: Arch users do remember do `systemctl enable dnssec-triggerd` and
`systemctl enable unbound`.
