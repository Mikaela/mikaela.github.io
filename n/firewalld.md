---
layout: null
permalink: /n/firewalld.html
redirect_from:
  - /n/firewall-cmd.html
sitemap: false
---

# Quick note on firewalld usage

This is practically [/ufw](/ufw), but fore Firewalld which Fedora comes with.
The blog post also predates me having a /n directory here.

**_After done, run `sudo firewall-cmd --reload`_**

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Zones](#zones)
- [Services](#services)
- [Ports](#ports)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Zones

firewalld zones are privilege of NetworkManager users, this tends to be
a systemd-networkd household. Then again I don't believe in absolutely trusted
zones.

Zone would be specified by `--zone=home` in the commands. The other zone I
could imagine using is `public`.

## Services

```bash
sudo firewall-cmd --add-service=mosh --permanent
```

## Ports

```bash
# TODO: Don't do this, this is a ppor example.
# firewalld surely recognises 631 as a service of some name,
# and as noted before, --zone won't work on my systems.
sudo firewall-cmd --zone=home --permanent --add-port=631/tcp
```

- 631/tcp is used by cups.
