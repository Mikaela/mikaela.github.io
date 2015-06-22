---
layout: post
comments: true
title: "IPv6"
category: [english]
tags: [english, IPv6]
redirect_from:
  - /ipv6/
  - /IPv6/
---

*There appears to be a lot of confusion on IPv6 and in this post I try to
 clear it a little.*

I am writing this post, because [TorrentFreak wrote about buggy µTorrent and suggests disabling IPv6 because of it.](https://torrentfreak.com/popular-torrents-being-sabotaged-by-ipv6-peer-flood-150619/)
The comments of that post are also totally lost.

## IPv4

It's probably start with what is wrong with IPv4 and note that all modern
operating systems (including Windows Vista and newer) are designed to work
with IPv6 and disabling it may break some features.

There are no IPv4 addresses for everyone and that is why we have NATs in
routers so we only have one IPv4 address facing the internet. That isn't
enough either so ISPs started having their own NATs too known as CGN
(Carrier Grade NAT) putting *a lot* of customers behind single IPv4
address.

This means that if someone on the same ISP abused your favourite service
X\*, all users behind that IPv4 address get banned.

<em>\*X = Wikipedia, your favourite forum or IRC network or whatever</em>.

CGN can also cause issues with online gaming (as everyone appears to be
connecting from single address and it can also increase latencies).

## IPv6

IPv6 again is next version of the Internet Protocol and has enough
addresses for all your devices and you don't need NAT anymore so you don't
have to do port forwards (which didn't help you behing CGN anyway) anymore.

People have weird worries with it and many misunderstandings on privacy
concerns.

### SLAAC-addresses

SLAAC-addresses are based on your MAC-address and a lot of people seem to
be worried about how they can be used for spying you across the network.

This is unrequired concern though as IPv6 privacy extensions should exist
with all IPv6 capable systems (again including Windows which seems to be
what people worry about the most). The privacy extensions generate random
IPv6 address which has no MAC-address and is changed every few hours.

On your IPv6-enabled system you should see three addresses:

* SLAAC-address where you see your MAC-address clearly, it just exists and
  isn't used in outgoing connections so no one knows it unless you decide
  to tell them.
* Privacy (extensions) address which is random and used for all outgoing
  connections and it changes every few hours. You might see multiple of
  these as the old privacy addresses are still kept for some time, but no
  outgoing connections is made with them.
* Link-local address you see even without global IPv6 connectivity as every
  IPv6-supporting system generates them automatically. They start with
  `fe80` and only work in your LAN. It also has your MAC-address visible.

If you are still worried about the MAC-address being visible, you can
easily confirm that no one sees it by going to
[ipv6-test.com](http://ipv6-test.com), looking at "IPv6 connectivity" and
check the teset that says "SLAAC". If it says "No" your SLAAC-address
is not used, if it says "Yes" they are used and it should never say "Yes".
It probably tells you something that the test decreases points of your
IPv6 connectivity if you do use SLAAC address.

#### Windows IPv6 address randomization

Windows which you shouldn't worry about makes you worry even less by being
annoying and randomizing all addresses (even if there is no need because
you have IPv6 privacy extensions) and this probably causes you headache
if you are running Windows Server or dual-booting with some other OS.

When you dual-boot, you might wonder why even the SLAAC-address is
different on Windows and Linux/OS X/whatever.

This is easy to fix though, open cmd.exe or PowerShell as admin and run:

```
netsh interface ipv6 set global randomizeidentifiers=disabled store=active
netsh interface ipv6 set global randomizeidentifiers=disabled store=persistent
```

##### Disabling privacy extensions

**YOU DON'T WANT TO DO THIS UNLESS YOUR PC IS SERVER AND SHOULDN'T EVER
MOVE ANYWHERE. BY DOING THIS THE SLAAC-ADDRESS GETS USED AND EVERYONE DOES
SEE YOUR MAC-ADDRESS.**

As I am talking so much about privacy extensions, I must probably tell
that you can disable them if you want. I have no idea if that is possible
with OS X so I don't say anything about it, I only know that it uses them
by default.

Windows: start by disabling the randomization and then

```
netsh interface ipv6 set privacy state=disabled store=active
netsh interface ipv6 set privacy state=disabled store=persistent
```

Linux: check NetworkManager or whatever you use config files
(or connection editor) or use the
kernel option directly in `/etc/sysctl.conf` or preferably
`/etc/sysctl.d/<whatever>.conf`: `net.ipv6.conf.default.use_tempaddr=0`.

The numbers you can use here are:

* 0 — IPv6 Privacy Extensions are disabled.
* 1 — IPv6 Privacy Extensions are enabled, but **SLAAC-address is
  preferred.**
* 2 — IPv6 Privacy Extensions are enabled and preferred. This is usually
  the default and what you should use.

### Getting IPv6

For native connectivity I only know about Finland (links in the list in
Finnish)…

* [IPv6 in Finnish consumer connections](http://ape3000.com/ipv6/)
    * At the time of writing Elisa and DNA which are two of three biggest
      carriers (Sonera is missing) have IPv6 in all mobile connections, DNA
      has IPv6 also in broadband connections and Elisa is working on it
      and Sonera has 6rd.
* [Elisa's page on enabling IPv6](http://asiakastuki.elisa.fi/ohje/541)
* [DNA's page on IPv6](https://www.dna.fi/ipv6)
    * [DNA's instructions for enabling IPv6 on different devices](https://www.dna.fi/ipv6-laitteet)

…but I can suggest searching the web for `yourISP IPv6` and contacting
their customer support asking when they are going to enable IPv6.

For tunneling there are multiple services, but I am only going to mention
Teredo shortly, it's the protocol of last resolt for accessing IPv6 sites
and Windows comes with it by default. The easiest way to enable it is
probably saving the following as `something.reg` and running it:

```
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters]
"AddrConfigControl"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\TCPIP\v6Transition]
"Teredo_DefaultQualified"="Enabled"
"Teredo_State"="Enterprise Client"
"Teredo_ServerName"="teredo.trex.fi"
```

Short explanation:
* Enable looking up IPv6 records even with Teredo
* Enable Teredo…
* …even if we are in domain
* use teredo.trex.fi as Teredo server, you might want to use some server
  that is more [near to you](https://en.wikipedia.org/wiki/Teredo_tunneling#Servers).

Linux: install package `miredo` and edit the server in `/etc/miredo.conf`
if needed.

And then check [ipv6-test.com](http://ipv6-test.com) and it should detect
your Teredo connectivity. Some browsers don't even attempt to use it, at
least I think Google Chrome did so.

## Further reading

* [Wikipedia's page on IPv6](https://en.wikipedia.org/wiki/IPv6)
* [Wikipedia's page on Teredo](https://en.wikipedia.org/wiki/Teredo_tunneling)
* [Microsoft Technet: A 5 Second Boot Optimization If You’ve Disabled IPv6 on Windows Client and Server by setting DisabledComponents to 0xFFFFFFFF](http://blogs.technet.com/b/askpfeplat/archive/2014/09/15/a-5-second-boot-optimization-if-you-ve-disabled-ipv6-on-windows-client-and-server-by-setting-disabledcomponents-to-0xffffffff.aspx)
    * TL;DR: depending on how you disabled IPv6 your boot might be 5
      seconds lower and Microsoft discourages disabling it and they don't
      test working without IPv6. Disabling IPv6 breaks e.g. HomeGroup.
