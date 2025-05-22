---
title: Commonly open port ranges
excerpt:
  Some applications such as MOSH or KDE Connect are just so practical, but they
  open so many ports in firewall and who is to guarantee lazy sysadmin won't
  abuse those for something else without even thinking about backdoors?
layout: mini
permalink: /n/annoying-ports.html
redirect_from:
  - /n/annoyingports.html
sitemap: true
lang: en
---

# {{ page.title }}

_{{ page.excerpt }}_

The following list is based on my other notes and `/usr/lib/firewalld/services/`

- mosh: UDP ports `60000-61000`
- KDE Connect: TCP & UDP ports `1714-1764`

## Services doing it right?

```xml
<?xml version="1.0" encoding="utf-8" ?>
<service>
  <short>Multicast DNS (mDNS)</short>
  <description>mDNS provides the ability to use DNS programming interfaces, packet formats and operating semantics in a small network without a conventional DNS server. If you plan to use Avahi, do not disable this option.</description>
  <port
    protocol="udp"
    port="5353" />
  <destination
    ipv4="224.0.0.251"
    ipv6="ff02::fb" />
</service>
```

Note the destinations! Maybe I should copy that for some of my services like
NTP.
