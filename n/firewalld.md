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
sudo firewall-cmd --add-service=ssh --permanent
sudo firewall-cmd --add-service=mosh --permanent
sudo firewall-cmd --add-service=ntp --permanent
sudo firewall-cmd --add-service=syncthing --permanent
sudo firewall-cmd --add-service=mdns --permanent
```

- I trust Chrony (ntp) to not allow it to be used from outside of LAN
  as `firewalld` is apparently not designed with limiting source
  addresses in mind.
- `syncthing` is the client, not to be confused with `syncthing-gui`
  or `syncthing-relay`.

## Ports

```bash
sudo firewall-cmd --permanent --add-port=9001/udp
sudo firewall-cmd --permanent --add-port=6771/udp
```

- `9001/udp` is Yggdrasil automatic peering, although link-local and
  unlikely to be recognised by predefined rules.
- `6771/udp` is [Bittorrent Local Peer Discovery](http://bittorrent.org/beps/bep_0014.html)
