---
layout: post
comments: true
title: "dnscrypt-proxy v2 on Debian/Ubuntu quickly, dirtily"
category: [english]
tags: [english, FIXME]
---

*This is very hastily written and ~~may~~ will contain errors and will
hopefully be fixed soonish*

1. `sudo apt-get install curl`

As at the time of writing Debian Stable and Ubuntu include old
dnscrypt-proxy v1 which doesn't work by default download a new version from
Debian unstable (which you aren't supposed to do, but it has worked for me
on multiple systems):

Check the version number at https://packages.debian.org/sid/amd64/dnscrypt-proxy/download and fix it below:

`curl -LO https://deb.debian.org/debian/pool/main/d/dnscrypt-proxy/dnscrypt-proxy_2.0.16-2_amd64.deb`

`sudo dpkg -i dnscrypt-proxy<TAB>`

Hopefully dnscrypt-proxy is now running, check `journalctl -u dnscrypt-proxy`, there should be a line like `Oct 21 14:08:15 sedric dnscrypt-proxy[1120]: [2018-10-21 14:08:15] [NOTICE] Wiring systemd TCP socket #0, dnscrypt-proxy.socket, 127.0.2.1:53`

Edit `/etc/NetworkManager/NetworkManager.conf`, it should say say `dns=none`
e.g.:

```
[main]
plugins=ifupdown,keyfile
dns=none
```

if it doesn't say dns=none, fix it and restart `systemctl restart NetworkManager`

Edit your /etc/resolv.conf, for example:

```
sudo su -
rm /etc/resolv.conf
nano /etc/resolv.conf && chattr +i /etc/resolv.conf
```

chattr +i will prevent modifying the file unless chattr -i is done first.

Example resolv.conf:

```
nameserver 127.0.2.1
options edns0 single-request-reopen
#search mikaela.info
```

Nameserver is the host where dnscrypt-proxy says to listen on, options are
from dnscrypt-proxy documentation and search is domains that are
automatically searched for if you don't use FQDN, e.g. `ssh machine` in
my (uncommented) config would turn into `ssh machine.mikaela.info`.

I hope I remember everything, but this is a bit hasty writing and the GPG
signature or anything isn't verified and I hope I will fix this later...

for the curious my dnscrypt-proxy config https://github.com/Mikaela/shell-things/tree/master/etc/dnscrypt-proxy
