---
layout: null
permalink: /n/dns.html
sitemap: false
---

# DNS notes

_For DNS resolvers, refer to [r/resolv.tsv](/r/resolv.tsv)_

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Identifying DNS resolver](#identifying-dns-resolver)
- [Identifying support for client-subnet](#identifying-support-for-client-subnet)

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
