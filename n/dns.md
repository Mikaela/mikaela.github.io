---
layout: null
permalink: /n/dns.html
redirect_from:
  - /n/ffupdater.html
  - /n/rethink.html
  - /n/esni.html
  - /n/ech.html
sitemap: false
---

# DNS notes

_For DNS resolvers, refer to [r/resolv.tsv](/r/resolv.tsv)_

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Identifying DNS resolver](#identifying-dns-resolver)
  - [Identifying ECH support](#identifying-ech-support)
- [What is ECS?](#what-is-ecs)
  - [Why to use ECS?](#why-to-use-ecs)
  - [Why to not use ECS?](#why-to-not-use-ecs)
  - [Why to use private ECS?](#why-to-use-private-ecs)
  - [Identifying support for ECS](#identifying-support-for-ecs)
- [Mobile applications](#mobile-applications)
  - [Android](#android)
  - [Rethink](#rethink)
  - [FFUpdater](#ffupdater)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Identifying DNS resolver

- [DNS-OARC's Check My DNS](https://cmdns.dev.dns-oarc.net) - popup under "Network".
- [dnsleaktest](https://dnsleaktest.com)
- [whatsmydnsserver](http://www.whatsmydnsserver.com)
- [ipleak.net](https://ipleak.net)
- [dnsadblock](https://dnsadblock.com/dns-leak-test/)
- [browserleaks.net/dns](https://browserleaks.net/dns)
- [dnscheck.tools](https://www.dnscheck.tools)

The above list is based on [redirect2me/which-dns README alternatives section](https://github.com/redirect2me/which-dns/blob/main/README.md)

### Identifying ECH support

At it's current state of implementation, Encrypted Client-Hello requires
DNS-over-HTTPS in the browser level or it won't be used. If downgrade from
application level DoH to OS resolver is allowed, ECH will get disabled at
least temporary. Thus I think this list belongs here close enough.

- [Cloudflare Browser Check](https://www.cloudflare.com/ssl/encrypted-sni/)
  which still speaks of ESNI, while ECH replaced Encrypted Server Name
  Indication ages ago.
  - [crypto.cloudflare.com/cdn-cgi/trace](https://crypto.cloudflare.com/cdn-cgi/trace),
    look for `sni=encrypted`.
- [tls-ech.dev](https://tls-ech.dev/)
- BONUS: [OCSP stapling test](https://www.vpnhosting.cz/ocsp/)

## What is ECS?

EDNS Client-Subnet is a DNS extension letting the authoritative nameserver know your /24 or /56 (IPv6). /24 is the first three parts of your IPv4 address, /56 is 256 /64s and the recommendation to assign to you (although some ISPs just give you a /64).

### Why to use ECS?

_Android DoH3 option:_ `dns.google`

> The distance of transmitted information. The longer the distance
> the data must travel from the data centre to the end-user device,
> the more energy the transmission consumes – regardless of the
> transmission path used. Intercontinental transmission networks are
> fundamentally very efficient. Transferring data from the United
> States to Europe may consume a fraction of the energy compared to
> the last kilometre from the base station to the mobile phone.

- [Green Code](https://www.exove.com/green-code/) ([pdf](https://www.exove.com/app/uploads/2023/09/Green-Code-v2.pdf) [txt](https://www.exove.com/app/uploads/2023/09/greencode-v2.txt))

If you utilize services of internet giants or condent delivery networks, ECS will likely give you the shortest distance, highest speed and may help with decreasing your _digital carbon footprint_.

If those matter to you, you may also like to consider [increasing your minimum TTL to around an hour in a local server](https://blog.apnic.net/2019/11/12/stop-using-ridiculously-low-dns-ttls/).

_Criticizers will ask whether changing your DNS server will save the world? No, fighting climate change takes much more, while some of it is small effortless tasks which effect cumulates. Anyway, keep reading._

### Why to not use ECS?

_Android DoH3 option:_ `cloudflare-dns.com`

> [...] we [Cloudflare] don’t pass along the EDNS subnet information. This information leaks information about a requester’s IP and, in turn, sacrifices the privacy of users. This is especially problematic as we work to encrypt more DNS traffic since the request from Resolver to Authoritative DNS is typically unencrypted. **_We’re aware of real world examples where nationstate actors have monitored EDNS subnet information to track individuals,_** which was part of the motivation for the privacy and security policies of 1.1.1.1.
>
> [...]
>
> We are working with the small number of networks with a higher network/ISP density than Cloudflare (e.g., Netflix, Facebook, Google/YouTube) to come up with an EDNS IP Subnet alternative that gets them the information they need for geolocation targeting without risking user privacy and security. Those conversations have been productive and are ongoing. [...]

- [Cloudflare co-founder](https://news.ycombinator.com/item?id=19828702), emphasis mine.

ECS will decrease the cost of mass surveillance as instead of having to surveill everything happening on the network, anyone between your DNS server and the authoritative nameserver can see which IP addresses access the site with a reasonable accuracy.

Then there are those with commercial interests, particularly outside of
Europe, advertisers may be interested in making money out of the additional
metadata. There may also be adblockers which don't block the DNS request,
causing the advertising company to receive your IP address (or close enough to
it) even if you didn't see the advertisement itself.

Some say _the less metadata is produced, the smaller incentive there is for
starting collecting and monetizing it._

Additionally researchers (below) have used it to perform cache poisoning against an individual target directing them to a wrong location and with low TTL making it near impossible to audit later.

What domains do you use? What if someone far above you knew regardless of Encrypted Client-Hello?

Are the domains you use DNSSEC-signed? Do you verify DNSSEC locally? Do you use HTTPS everywhere? Do you know to not accept warnings about certificate issues? Do the other users less technical users of your network? Would you or them be a delicious target?

See also:

- [_Understanding the Privacy Implications of ECS_](https://yacin.nadji.us/docs/pubs/dimva16_ecs.pdf)

### Why to use private ECS?

_Android DoH3 option:_ [?](https://cs.android.com/android/platform/superproject/main/+/main:packages/modules/DnsResolver/PrivateDnsConfiguration.h)

Do you want the benefits of ECS with the privacy and security of not having ECS? Private ECS is a compromise solution in the middle, although not without its own issues.

Your private DNS provider will lie for you and say that your IP address is somewhere else where it will also place many others from your ISP. However what if it says you are a customer of another ISP, possibly even located in another country?

In that case you may get even worse performance than without ECS. Then again if everything works properly, you will get the benefit of ECS without the privacy impact and lessened security impact.

See the next section for testing "where you are." Consider also what is important for you if you had to pick one or two.

See also:

- [NextDNS (Medium.com): How we made DNS both fast and private with ECS](https://medium.com/nextdns/how-we-made-dns-both-fast-and-private-with-ecs-4970d70401e5)
- [AdGuard DNS: Privacy-friendly EDNS Client Subnet](https://adguard-dns.io/en/blog/privacy-friendly-edns-client-subnet.html)
- [DNS0 Privacy Policy](https://www.dns0.eu/privacy)

<!--

[_Understanding the Privacy Implications of ECS_](https://yacin.nadji.us/docs/pubs/dimva16_ecs.pdf)
brings up two bigger issues EDNS client-subnet:

- Authoritative nameserver is given part of the subnet, which can be
  personally identifiable and as the connection between recursor and
  authoritative is unencrypted, anyone between them can observe all the
  queries.
  - Think of VPNs where traffic within the VPN is encrypted, but it won't
    magically encrypt plain traffic leaving it.
  - The part given to the au4thoritative nameserver is `/24` on IPv4 and
    `/56` on IPv6. These equal 192.0.2.x so if a MITM wanted to know who you
    are there would be 254 options (assuming there are no NATs). On IPv6 a
    `/56` includes 256 `/64` blocks and `/64` is the most used block and there
    is a recommendation of giving customers a `/56` block, so it would point
    directly to your connection. However some mobile operators give a `/64`
    so it will again point to 256 options again. Not that many.
- Anyone between the recursive and authoritative nameservers can perform cache
  poisoning attack and give it a narrow target. With short TTL, it may be
  impossible to audit afterwards. Only DNSSEC can protect from this, but
  DNSSEC signing isn't used that widely.

These issues bring additional questions:

- Do you care?
  - If you run open wireless network and offer everyone ECS nameserver such as
    Google DNS through DHCP while using manually configured encrypted DNS by
    yourself, is there any cause for concern? You can always say it was
    someone using your open network? Or if this is a multi-user system like
    VPS running titlefetcher bot or Matrix homeserver, who knows who triggered
    the original queries and where? SteamOS? Speed over all as it's only used
    for gayming. Virtual machine lab? Who cares. Larger organization? That may
    be a big target?
  - How much does getting local content matter to you? More or less than
    increased resource use of contacting a server further away? _Is private ECS
    an option?_ ([r/resolv.tsv](/r/resolv.tsv))
- What is the impact of domains you visit being surveilled?
  - This page mentions cases like FFUpdater where the surveillance would
    reveal that I interact with github.com and other sites it downloads apk
    files from, which hardly matters, but how about you?
- What is the impact of cache poisoning tailored to you?
  - Everything is encrypted and TLS certificates wouldn't match so would you
    continue to the wrong site regardless of the prompt, or decide something
    is wrong and try again later. How about your users?

-->

### Identifying support for ECS

Or what is being sent to the authoritative servers.

```bash
dig +short TXT o-o.myaddr.l.google.com.
dig +short TXT whoami.ds.akahelp.net.
dig +short TXT whoami.ipv6.akahelp.net.
dig +short TXT whoami.ipv4.akahelp.net.
```

- Note: Cloudflare sends ECS only for `whoami.ds.akahelp.net`, nowhere else.

## Mobile applications

_With the exception of those apps that config I remember otherwise or share it
with desktop versions etc._

### Android

Use either `cloudflare-dns.com` (which doesn't have ECS) or `dns.google`
(which has ECS) as the (Settings → Network & Internet → Advanced →)
_Private DNS_ server as [they have special handling](https://cs.android.com/android/platform/superproject/main/+/main:packages/modules/DnsResolver/PrivateDnsConfiguration.h) and are thus DNS over
HTTPS3 instead of the usual DNS over TLS. This can be confirmed with
[`https://1.1.1.1/help`](https://one.one.one.one/help) (when using
`cloudflare-dns.com`).

Then setup your web browser (including Firefox (other than stable which
disables `about:config`) and Chrome) to use DNS over HTTPS with your preferred
server and while at it enabling HTTPS only mode.

### [Rethink](https://github.com/celzero/rethink-app)

**_NOTE!_** This pretends to be a VPN and thus breaks things depending on
seeing the IP directly such as wireless debugging LAN IP, Briar LAN
connections, cause warnings in Ooni Probe and disable automatic testing,
Syncthing Fork will not autostart due to detecting the network as metered,
unless it's given permission to run in metered networks.

1. Use either GitHub or F-Droid release as Google Play doesn't have
   blocklists.
1. Enable it.
1. In Android Settings, Internet, Advanced, VPN, select Rethink, make it
   always-on and block connections not using it.
1. Disable private DNS in Android settings too, as it conflicts.
1. In Rethink itself open Configure.

- DNS: enable whatever DNS you prefer.
- DNS: Visit _on-device blocklists_.
- DNS: Consider enabling _Use in-app downloader_, _DNS booster_
- DNS: Disable _Prevent DNS leaks_ to avoid breakage.
- Network: enable _Use all available networks (experimental)_
- Network: _Loopback (experimental)_
  - This also implies the previous option.
- Network: _Choose IP version: Auto_
- Network: _Perform connectivity checks_

1. Remember to also visit Android app details for Rethink, in battery menu
   select unrestricted and in network allow unlimited data even with data
   saver.

Hopefully there is no situation where Rethink stops working and thinks it's
still working. As can be deduced from this section, sometimes Rethink and I
disagree with each other. _I don't guarantee I know what I am doing._

### [FFUpdater](https://github.com/Tobi823/ffupdater)

- `https://dns0.eu;2a0f:fc80::;2a0f:fc81::;193.110.81.0;185.253.5.0`
- `https://open.dns0.eu;2a0f:fc80::ffff;2a0f:fc81::ffff;193.110.81.254;185.253.5.254`
- `https://doh.opendns.com/dns-query;2620:119:35::35;2620:119:53::53;208.67.222.222;208.67.220.220`
- `https://dns11.quad9.net/dns-query;2620:fe::11;2620:fe::fe:11;9.9.9.11;149.112.112.11`
- `https://dns12.quad9.net/dns-query;2620:fe::12;2620:fe::fe:12;9.9.9.12;149.112.112.12`
