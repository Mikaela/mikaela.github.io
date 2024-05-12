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
  - [Is this a relevant question?](#is-this-a-relevant-question)
  - [Identifying support for ECS](#identifying-support-for-ecs)
- [[DNS0.eu] or [Quad9]?](#dns0eu-or-quad9)
  - [Conclusion](#conclusion)
- [Mobile applications](#mobile-applications)
  - [Android](#android)
  - [Rethink](#rethink)
  - [FFUpdater](#ffupdater)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

---

## Identifying DNS resolver

- [DNS-OARC's Check My DNS](https://cmdns.dev.dns-oarc.net) - popup under "Network".
- [dnsleaktest](https://dnsleaktest.com)
- [whatsmydnsserver](https://www.whatsmydnsserver.com)
- [ipleak.net](https://ipleak.net)
- [dnsadblock](https://dnsadblock.com/dns-leak-test/)
- [browserleaks.net/dns](https://browserleaks.net/dns)
- [dnscheck.tools](https://www.dnscheck.tools)

The above list is based on [redirect2me/which-dns README alternatives section](https://github.com/redirect2me/which-dns/blob/main/README.md)

---

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

---

## What is ECS?

[EDNS](https://en.m.wikipedia.org/wiki/Extension_Mechanisms_for_DNS) [Client-Subnet](https://en.wikipedia.org/wiki/EDNS_Client_Subnet) is a DNS extension letting the authoritative nameserver
know your subnet, generally a `/24` (IPv4) or a `/56` (IPv6), but the revealed
subnet size is up to your DNS resolver configuration.

_See also simpler explanation at [PrivacyGuides.org DNS Overview](https://www.privacyguides.org/en/advanced/dns-overview/#what-is-edns-client-subnet-ecs)._

- /24 is the first three parts of your IPv4 address e.g. 192.0.2.xxx.
  The last part of your IP address (the xxx) again is a number between 1
  to 254 (since 0 is reserved for the network itself and 255 is the
  broadcast address).
- `/56` includes 256 `/64`s and if your ISP (Internet Service Provider)
  follows [RFC 6177](https://datatracker.ietf.org/doc/html/rfc6177),
  it's assigned solely to you meaning the authoritative nameserver will know
  the request originated from your network.
  - However many ISPs, especially wireless ones,
    will just assign you a `64` which is required for
    [stateless address autoconfiguration](<https://en.m.wikipedia.org/wiki/SLAAC#Stateless_address_autoconfiguration_(SLAAC)>)
    which is the most common way of getting IPv6 address in your local area
    network as opposed to IPv4 where you would have
    [Dynamic Host Configuration Protocol (DHCP)](https://en.m.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol).
    - Your router does get the IPv6 subnet assignment for LAN distribution by means of [DHCPv6 Prefix Delegation](https://en.m.wikipedia.org/wiki/Prefix_delegation) which is also common on mobile networks.

### Why to use ECS?

_Android DoH3 option:_ `dns.google`

> [...] The longer the distance the data must travel from the data centre to
> the end-user device, the more energy the transmission consumes –
> regardless of the transmission path used. Intercontinental transmission
> networks are fundamentally very efficient. Transferring data from the
> United States to Europe may consume a fraction of the energy compared to
> the last kilometre from the base station to the mobile phone.

- [Green Code](https://www.exove.com/green-code/) ([pdf](https://www.exove.com/app/uploads/2023/09/Green-Code-v2.pdf) [txt](https://www.exove.com/app/uploads/2023/09/greencode-v2.txt))

If you utilize services of internet giants or content delivery networks, ECS will likely give you [the shortest distance, the lowest latency, the highest speed](https://en.m.wikipedia.org/wiki/Edge_computing) and may help with decreasing your _digital carbon footprint_.

_The above means GAFAM, if you don't use them in any form, there may not be a
need for ECS._

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

Are the domains you use DNSSEC-signed? Do you verify DNSSEC locally? Do you use HTTPS everywhere? Do you know to not accept warnings about certificate issues? Do the other (less technical) users of your network? Would you or them be a delicious target? Do you even use GAFAM services?

See also:

- [_Understanding the Privacy Implications of ECS_](https://yacin.nadji.us/docs/pubs/dimva16_ecs.pdf)

### Why to use private ECS?

_Android DoH3 option:_ [?](https://cs.android.com/android/platform/superproject/main/+/main:packages/modules/DnsResolver/PrivateDnsConfiguration.h)

Do you want the benefits of ECS with the privacy and security of not having ECS? Private ECS is a compromise solution in the middle, although not without its own issues.

Your private DNS provider will lie for you and say that your IP address is somewhere else where it will also place many others from your ISP. However what if it says you are a customer of another ISP, possibly even located in another country? It tends to have greater accuracy with IPv4 than IPv6, [see AdGuard Google Domains issue](https://adguard-dns.io/en/blog/dns-google-domains-fixed.html).

In that case you may get even worse performance than without ECS. Then again if everything works properly, you will get the benefit of ECS without the privacy impact and lessened security impact.

See the next section for testing "where you are." Consider also what is important for you if you had to pick one or two.

See also:

- [NextDNS (Medium.com): How we made DNS both fast and private with ECS](https://medium.com/nextdns/how-we-made-dns-both-fast-and-private-with-ecs-4970d70401e5)
- [AdGuard DNS: Privacy-friendly EDNS Client Subnet](https://adguard-dns.io/en/blog/privacy-friendly-edns-client-subnet.html)
- [DNS0 Privacy Policy](https://www.dns0.eu/privacy)

### Is this a relevant question?

It's likely greener to just use adblocking DNS no matter where it is located,
preferably on router level. I don't trust router/DHCP provided DNS and encrypt
it on the end device anyway. And if something needs unfiltered access
(AdNauseam?), give it DNS over HTTPS like all browsers and curl have the
ability nowadays.

### Identifying support for ECS

Or what is being sent to the authoritative servers.

```bash
# https://support.google.com/interconnect/answer/7658602
dig +short TXT o-o.myaddr.l.google.com.
# https://www.akamai.com/blog/developers/introducing-new-whoami-tool-dns-resolver-information
dig +short TXT whoami.ds.akahelp.net.
dig +short TXT whoami.ipv6.akahelp.net.
dig +short TXT whoami.ipv4.akahelp.net.
# https://powerdns.org/useful-names/
dig +short TXT whoami-ecs.lua.powerdns.org.
dig +short TXT whoami-ecs.v6.powerdns.org.
dig +short TXT whoami-ecs.v4.powerdns.org.
```

- Note: [Cloudflare sends ECS only for `whoami.ds.akahelp.net`, nowhere else](https://developers.cloudflare.com/1.1.1.1/faq/#does-1.1.1.1-send-edns-client-subnet-header).

---

## [DNS0.eu] or [Quad9]?

In my experience [DNS0.eu] tends to have better filtering and
[reporting options](https://www.dns0.eu/report) than [Quad9], while [servers being located only in](https://www.dns0.eu/network) the
[European Union](https://european-union.europa.eu) is mildly problematic when your users start traveling
outside it either for work or leisure, which across continents tends to bring
round-trips overseas. Additionally private ECS (see above) tends to be bad
poor for IPv6 and for very small AS like a school, it directs to another side
of the country, but that is a very minor issue.

Meanwhile [Quad9] blocking seems almost as good in [tests like this](https://techblog.nexxwave.eu/public-dns-malware-filters-tested-in-2024/) and they give me impression [of more transparency](https://quad9.net/about/transparency-report) (as opposed to [DNS0.eu only
having a <del>Twitter</del> X account](https://twitter.com/dns0eu)). [Quad9] also has more options on whether to ECS or not (see above).

The end-users traveling outside of the EU is also solved as they [have servers all around the world](https://quad9.net/service/locations/).

Back to [DNS0.eu], while disabling private ECS is not an option, they do have other options; [default filters](https://www.dns0.eu), [no filters](https://www.dns0.eu/open), [heavier filtering (zero)](https://www.dns0.eu/zero) and [kids](https://www.dns0.eu/kids).

[DNS0.eu]: https://www.dns0.eu
[Quad9]: https://quad9.net

### Conclusion

As the size and confusion this page induces to anyone else than me shows, I have spent too much time thinking about DNS and related matters.

- Android: while the system only gives the option between `cloudflare-dns.com` and `dns.google` (HTTP/3, see below),
  web browsers are free to choose the DoH server. If the device is not expected to travel far outside the EU, DNS0.eu may be a safe choice, otherwise Quad9.
  - As I have to support devices going outside of the EU, I lean towards Quad9.
- iOS (or Apple in general): same question, do the devices travel outside of the EU? Both provide configuration profiles.
  - While not noticing the DNS0.eu configuration profile is difficult, [Quad9 currently hides it a bit under docs.quad9.net iOS instructions](https://docs.quad9.net/Setup_Guides/iOS/iOS_14_and_later_%28Encrypted%29/).
- Personal computers: I have reached the cursed conclusion of [using Unbound upstreams DNS0 for IPv4, Quad9 ECS for IPv6](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/unbound/unbound.conf.d/dot-dns0-quad9.conf) and [using the hosts file to point web browsers away from DNS0.eu IPv6](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/hosts/dns) using [IPv4 mapped IPv6 addresses](https://en.m.wikipedia.org/wiki/IPv6#IPv4-mapped_IPv6_addresses).
  - Especially the last part is cursed.
  - Yes, ECS has privacy concerns, however _theoretically_ it's only a fallback if IPv4 goes down (very rare, has happened for short periods of time in my experience), but the environment also weights my decision. See above on whether to ECS or not.
    - I hope to offset the risks of ECS by [not allowing TTLs below an hour](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/unbound/unbound.conf.d/min-ttl-hour.conf) so whether I have a tab open or not cannot be figured out from DNS traffic alone and somewhat relatedly [serve stale records if I must](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/unbound/unbound.conf.d/expired-stale-serving-rfc8767.conf).
- Personal servers: Personal preference, you could even use all of the DNS servers or be your own recursor. I again have small preference towards Quad9 ECS as titlefetching for unencrypted IRC connection is already open for mass surveillance and there is no telling who triggered a DNS query there anyway.
- Business/association/enterprise/whatever device: there may be free political/regulational/bureaucratic/whatever brownie points for using DNS0.eu with the queries not being transmitted outside of the EU.

This may also be a wrong approach entirely and it should just be an adblocking
DNS as noted before.

Additionally DNS filtering for web browsers may be irrelevant if browser
policy enforces extensions that block malicious domains (such as µBlock Origin
or AdNauseam) or even Google Safe Browsing.

---

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

At least `https://security.cloudflare-dns.com/dns-query` won't downgrade to
system DNS resolver so
[`malware.testcategory.com`](https://malware.testcategory.com) is blocked and
that will hopefully affect other filtering DNS servers and actual malicious
domains as well. Meanwhile
[`nudity.testcategory.com`](https://nudity.testcategory.com) loads as expected
outside of `https://family.cloudflare-dns.com/dns-query`.

If testing Cloudflare, see also:

- [1.1.1.1/help](https://one.one.one.one/help) for general troubleshooting
- [help.teams.cloudflare.com](https://help.teams.cloudflare.com) for filtering
  although it just sends you to
  - [radar.cloudflare.com](https://radar.cloudflare.com) where
    [IP](https://radar.cloudflare.com/ip) is worth checking too.
- [speed.cloudflare.com](https://speed.cloudflare.com) for speed testing

Do other Android based OSes contain the special handling of specific _Private
DNS_ domains turning into DNS-over-HTTP/3?

- GrapheneOS: [yes](https://github.com/GrapheneOS/platform_packages_modules_DnsResolver/blob/13/PrivateDnsConfiguration.h)
- LineageOS:
  [yes](https://github.com/LineageOS/android_packages_modules_DnsResolver/blob/lineage-20.0/PrivateDnsConfiguration.h)
  - /e/OS:
    [yes](https://gitlab.e.foundation/e/os/android_packages_modules_DnsResolver/-/blob/v1-t/PrivateDnsConfiguration.h)

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

---
