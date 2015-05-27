---
layout: post
comments: true
title: "My systemd-networkd setup"
category: [english]
tags: [english, systemd-networkd]
---

*This is happy post so probably useless, but my blog is always so
unhappy… Anyway, systemd-networkd on my hosts.*

I am running systemd-networkd on wired hosts as I am not so sure how it
works with wireless hosts and I am using network manager with WLAN
connections.

The hosts mentioned here are
* Zaldaryn which runs Ubuntu MATE 15.04
* Rbtpzn which currently runs Antergos and is the oldest PC I have and
  it's also the first one ever where I installed Ubuntu 8.04 in 2008.

First you create network connection, I call them with the adapter name,
e.g. Rbtpzn has `/etc/systemd/network/enp0s18.network` and Zaldaryn
`/etc/systemd/network/eth0.network`.

It appears that I have been experimenting with the two hosts, so the
files differ. Here is Zaldaryn which looks more proper or direct copy
from Arch Wiki:

```
[Match]
Name=eth0

[Network]
DNS=127.0.0.1

[Address]
Address=172.16.1.6

[Route]
Gateway=172.16.0.1
```

and Rbtpzn

```
[Match]
Name=enp0s18

[Network]
Address=172.16.1.2/16
Gateway=172.16.0.1
# DNS has no effect unless systemd-resolved is used
# systemctl enable systemd-resolved && systemctl start systemd-resolved
# ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
DNS=127.0.0.1
DNS=::1
DNS=8.8.4.4
NTP=pool.ntp.org
```

As you can see, they are quite different, Zaldaryn has everything neatly
separated and Rbtpzn has everything in the same block.

Match specifies which network interface is in question, Address is IP
address of the host. I am not sure where I took NTP and as the Rbtpzn block
says, you must use systemd-resolved for the DNS settings to do anything,
but that is easy, just run as root (or prefix all three commands
with `sudo`):

```
systemctl enable systemd-resolved && systemctl start systemd-resolved
ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
```

The address can also have CIDR specified which probably should be done, but
it appears that systemd-networkd can guess it correctly as everything works
with Zaldaryn which doesn't have it specified.

I am also using `systemd-networkd-wait-online.service`
(`systemctl enable systemd-networkd-wait-online.service`) so
`network.target` means that I have IP address before boot continues. There
is 90 second timeout, but I still don't feel like trying this with wireless
host as I would have 90 seconds longer boot time in new environments.

Currently the only thing using network.target for me is Reflector service
from Archwiki which updates mirrorlist with the fastest last synced mirrors
on boot on Rbtpzn.

Sources/further reading
* https://wiki.archlinux.org/index.php/Systemd-networkd
* http://www.freedesktop.org/software/systemd/man/systemd.network.html
* https://wiki.freedesktop.org/www/Software/systemd/NetworkTarget/
* https://wiki.archlinux.org/index.php/Reflector#Systemd_Service
