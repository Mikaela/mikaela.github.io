---
layout: post
comments: true
title: "Android 9 Private DNS behaviour with 853 blocked & DoT server comparsion"
category: [english]
tags: [english, Android, DNS-over-TLS, DNS, security, privacy]
redirect_from:
  - /dns.html
  - /dot.html
---

*Since I first heard of Android 9 Private DNS I wondered how it will work
 when the port is blocked or there is a captive portal. I didn't find this
 information anywhere and now that I have gotten the Android 9 Go update on
 my Nokia 1, I am able to type my own blog post about it.*

Notes/disclaimers:
* Phone: Nokia 1 (TA-1047) running Android 9 (Go Edition)
    * I think I got the update on 9th of July
    * Language: Finnish (and as I am typing in English I may accidentally
      invent my own words)
* In all tests mobile data was disabled to not cause confusing results.
* As Private DNS is technically DNS over TLS, I am calling it as DoT.
  * In Android 9 it's enabled from Settings, Network & Internet, Advanced settings, Private DNS
    * I am using [dns.quad9.net](https://quad9.net/) as hostname.
* Automatic mode connects to the DNS server port 853 without validating
  certificate, "Hostname of private DNS provider" (which I call as the
  manual mode) also validates the certificate and disallows downgrading.
* [Google's documentation](https://support.google.com/android/answer/9089903?hl=en).
* [Intra](https://getintra.org/) detects when private DNS is enabled and
  says that it doesn't have to be enabled at those times. However it gets
  confused easily as between the metro and DHCP offering Quad9 it claimed
  secure DNS was disabled. Later before the captive portal test Intra again
  claimed DoT was disabled when there was no connectivity to DoT server, so
  I guess it's only able to detect when Android is actually connected to the
  DoT server.
* [My messy notes for making this post](https://github.com/Mikaela/mikaela.github.io/issues/149)

* * * * *

Test: *automatic mode without DoT capable server from DHCP*; the setting
says "automatic".

* * * * *

Test: *DoT with port 853 blocked*; Android reports that the WLAN network has
no internet connectivity until I disable private DNS and toggle WLAN. I
tested this in Helsinki metro.

* * * * *

Test: *automatic mode with DoT capable server from DHCP*; Android says that
DoT is "enabled". For this test I configured a WLAN AP to use [Quad9](https://quad9.net/)
DNS servers `149.112.112.112` and `9.9.9.9`. 

I would also have configured
the IPv6 addresses `2620:fe::9` and `2620:fe::fe` as the network was dualstack,
but naturally the router was missing ability to configure IPv6 DNS servers
and forced using the ISP ones. At least the Android 9 was happy with the IPv4
servers.

I didn't do this at home as my main network connectivity is a MiFi
"box" that doesn't allow me to specify a DNS server and I tend to avoid it anyway
by using [dnscrypt-proxy](https://github.com/jedisct1/dnscrypt-proxy/) with [this config](https://github.com/Mikaela/shell-things/blob/master/etc/dnscrypt-proxy/dnscrypt-proxy.toml) and Intra. Sadly I have some
little used devices that have no way to encrypt DNS and they either use the
ISP DNS or in case of Chromecasts I am under impression that they are
hardcoded to use Google DNS. I don't use them much though.

Why do I care about encrypted DNS so much? Encrypt everything! And to quote
my index:

> The only traffic I am not encrypting is probably my WLAN. For some reason my router requires a reboot once per hour with WPA2 encryption while on open network I only have to reboot it once per day (I have asked about this confusing behaviour from wiser people on IRC and they weren't able to explain it either). I support the <a href="https://openwireless.org/">Open Wireless Movement</a> and think that if someone really wanted to cause me harm, they could break into the network anyway and that would be more difficult to prove on consumer grade device than the network being open. There are firewalls on all networks and while a passerby would be able to observe unencrypted SNIs, isn't that also <a href="https://en.wikipedia.org/wiki/Global_surveillance">being done by international security agencies already</a> while even <a href="https://fi.wikipedia.org/wiki/Suomen_tiedustelulains%C3%A4%C3%A4d%C3%A4nt%C3%B6">Finland has given permission to monitor traffic crossing our borders</a> ((TODO: better link in English as the situation develops)and how much of traffic doesn't do that?). I also don't like being somewhere where the only available WLANs are printers and smart thermostats :)

* * * * *

Bonus test: *DoT + DoH via the [Intra app](https://getintra.org/)*
configured to use server `https://149.112.112.112/dns-query` in Helsinki
metro; Android claims that the network has no connectivity and shows the x
on the WLAN symbol in the statusbar, but everything works regardless.
My hypothesis that I am not enough interested in confirming is that if I was
using `https://dns.quad9.net/dns-query` nothing would work as the Intra app
would have been unable to resolve that name due to DoT being blocked.

* * * * *

Test: *DoT + Captive Portal*; I get the captive portal prompt asking me to
login to the network as usual, so I guess Android handles captive portal
separately from DoT which is a good thing in my opinion as otherwise that
feature would likely be too confusing or difficult for many people to use.

I performed this test next to a closed Espresso House, which luckily hadn't
turned off their WLAN AP, but I treat SSIDs as free advertising anyway.

* * * * *

## Why I use Quad9?

I had an idea of blogging about this separately long before I got Android 9
and was able to perform this testing, but as I mention it so much I guess
it's better to merge the posts.

What I wish from a DNS server is privacy/security (including DoT), [DNSSEC], 
being stable (or unlikely to go
away without warning in near future) and thus being able to recommend it to
my family members (read as: configure it on their routers while being tech
support).

[DNSSEC]:https://www.dnssec.net/

The options [judging by DNSPrivacy.org](https://dnsprivacy.org/wiki/display/DP/DNS+Privacy+Public+Resolvers#DNSPrivacyPublicResolvers-DNS-over-TLS(DoT)) are the following:

* Quad9 (I am only talking about the secure variant as the insecure disables
  DNSSEC)
  * non-profit
  * [privacy policy](https://quad9.net/privacy/) (I seem to have too much
    problems with the others to even look at their policies)
  * same malicious domain filtering for everyone (I was going to compare it
    to Cisco/OpenDNS without realizing that the DoT requirement dropped them out
    already) that I haven't yet encountered
  * [FAQ](https://quad9.net/faq/)
  * supports DNS over HTTPS (I need it for Firefox which at the time of typing requires
    DoH for ESNI support)
  * has a node in Finland (see TREX under regional providers)
  * I have heard that they plan a network map (Adguard on the bottom has it)
    and I hope to see it soon, because I would have no idea they have a node
    in Finland without knowing about TREX and having performed DNS leak test
    (see TREX under regional providers for more details on both).
* Cloudflare
  * for-profit company
  * too big for my taste and possibly getting even bigger if Firefox starts
    sending DNS over HTTPS queries to them by default
  * [PTIO discussion](https://github.com/privacytoolsIO/privacytools.io/issues/374)
  * [Notabug.org/crimeflare/cloudflare-tor critique](https://notabug.org/crimeflare/cloudflare-tor/src/master/README.md)
* Google Public DNS
  * same as Cloudflare, they are on my phone and many say Google to know you
    better than you know yourself, so they areally don't need to know my DNS
    queries too.
* CleanBrowsing
  * I never looked it before, but it appears to be for-profit
  * allows custom filters? What prevents filters from another user from
    being applied to me? This was a problem with Cisco OpenDNS.
* Adguard
  * I never looked at them before either, but they look surprisingly good
    and I could consider using them with the short reading I did for this
    post.
  * for-profit (even though they claim to make money by their other products
    than DNS, but so do Cloudflare and Google?)
  * I worry they could block something more than ads/malware by accident
     * and I think they are more likely to do that than Quad9 due to blocking
       so much more.
       * and this could be painful to start troubleshooting over the phone
         with family members.
  * [privacy policy](https://adguard.com/en/privacy.html)
  * based in Cyprus (EU)
  * [Adguard DNS page including FAQ](https://adguard.com/en/adguard-dns/overview.html)
    * no server in Finland
  * appears to be using Cloudflare, which is a minus point.

Then there are regional providers like:

* [TREX recursive name service](http://www.trex.fi/service/resolvers.html) for Finnish users
  * "Our resolvers do not support DNS over TLS, DNS over HTTPS or dnscrypt. But TREX hosts a Quad9 node, which offers a secure service with those features."
    * this can be confirmed by running a [DNS leak test](https://dnsleaktest.com/)
      which in Finland replies "TREX Regional Exchanges Oy" and being hosted
      by TREX is a plus for Quad9 in my eyes as it's
  * often recommended for Finnish users instead of Google DNS by people in
    my circles
* [CZ.NIC Open DNSSEC Validating Resolvers](https://www.nic.cz/odvr/) for Czech users
  (English readers: enable cookies and click "English")
  * has DNSSEC, DoT & DoH
  * probably wouldn't make much sense to use from Finland (or anywhere
    else far from Czech Republic, I imagine all the neighbouring countries would also have their
    own equivalent regardless of CZ.NIC being so big name (you have heard of e.g. [Turris Omnia](https://en.wikipedia.org/wiki/Turris_Omnia)?))
  * (thus I promote centralization, but) a regional not-anycasted DNS server
    may be impractical while traveling as your DNS would always go through
    home and possibly be slower than it could be. As a counter argument it
    wouldn't hurt that much or be difficult to change, but would you
    remember to do it while traveling (I guess I would) and would your
    family members remember that?

And the golden option of hosting your own DNS. (It's actually easy with
Unbound, I haven't tried DoH/DoT hosting though!)

* Hosting where?
* Hosting with what money?
* On my laptop? What about when it goes down?
* On three of my active devices separately? I don't think the root
  nameserver admins would be very happy if everyone did that.
* On my VPS? What if it went down due to being so cheap? What to say when
  my family called that "the internet is broken"? How to provide the additional
  line of defence against malware and phishing as well as Quad9 does it with
  all their information sources and partners?

To me Quad9 seems the least bad (or the least scary?) option with all these
things considered, but some other provider may seem better to you.
