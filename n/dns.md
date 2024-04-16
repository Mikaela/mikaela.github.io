---
layout: null
permalink: /n/dns.html
redirect_from:
  - /n/ffupdater.html
  - /n/rethink.html
sitemap: false
---

# DNS notes

_For DNS resolvers, refer to [r/resolv.tsv](/r/resolv.tsv)_

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Identifying DNS resolver](#identifying-dns-resolver)
- [Identifying support for client-subnet](#identifying-support-for-client-subnet)
- [Mobile applications](#mobile-applications)
  - [Android](#android)
  - [Rethink](#rethink)
  - [FFUpdater](#ffupdater)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Identifying DNS resolver

- [DNS-OARC's Check My DNS](https://cmdns.dev.dns-oarc.net/) - popup under "Network".
- [dnsleaktest](https://dnsleaktest.com/)
- [whatsmydnsserver](http://www.whatsmydnsserver.com/)
- [ipleak.net](https://ipleak.net/)
- [dnsadblock](https://dnsadblock.com/dns-leak-test/)

The above list is based on [redirect2me/which-dns README alternatives section](https://github.com/redirect2me/which-dns/blob/main/README.md)

## Identifying support for client-subnet

Or what is being sent to the authoritative servers.

```bash
dig +short TXT o-o.myaddr.l.google.com.
dig +short TXT whoami.ds.akahelp.net.
dig +short TXT whoami.ipv6.akahelp.net.
dig +short TXT whoami.ipv4.akahelp.net.
```

- Note: Cloudflare sends ECS only for whoami.ds.akahelp.net.

## Mobile applications

_With the exception of those apps that config I remember otherwise or share it
with desktop versions etc._

### Android

Use either `cloudflare-dns.com` (which doesn't have ECS) or `dns.google` (which has ECS) as the _Private DNS_ server as
they have special handling and are thus DNS over HTTPS instead of the usual
DNS over TLS. This can be confirmed with
[`https://1.1.1.1/help`](https://one.one.one.one/help) (when using
`cloudflare-dns.com`).

Then setup your web browser (including Firefox (other than stable which
disables `about:config`) and Chrome) to use DNS over HTTPS with your preferred
server and while at it enabling HTTPS only mode.

### [Rethink](https://github.com/celzero/rethink-app)

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
