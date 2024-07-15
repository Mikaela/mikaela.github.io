---
title: On hidden WiFi networks
excerpt:
  Disabling SSID broadcast is not a security measure and may hurt your privacy.
layout: mini
permalink: /n/hiddenssid.html
sitemap: true
lang: en
---

# {{ page.title }}

_{{ page.excerpt }} For opting out of location services, refer to
[n/nomap](nomap.html)_.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [The issue with hidden networks](#the-issue-with-hidden-networks)
- [Connecting to a hidden network](#connecting-to-a-hidden-network)
- [Seeing hidden networks](#seeing-hidden-networks)
  - [Returning to normalcy](#returning-to-normalcy)
  - [TODO](#todo)
- [QR codes for hidden SSIDs](#qr-codes-for-hidden-ssids)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## The issue with hidden networks

When you hide your WiFi network, your access point (AP) will still announce its
existence with the MAC (Media Access Control) address without name. Some
location services, such as WiGLE will still records its existence
([n/nomap](nomap.html)) and as the Service Set IDentifier (SSID) is required for
connecting, your devices will shout around everywhere asking for it, so scanning
around will make you identifiable and possibly trackable as not many people are
likely to be broadcasting the same set of SSIDs.

_I have said it before, but I am a fan of
[openwireless.org](https://openwireless.org) and wonder if making that SSID
hidden to not reveal myself so obviously on WiGLE (as hidden SSIDs are more
common) would work for promoting it and those with the ability to see it, would
be more likely to be interested in opening their network as opposed to people
not seeing it._

## Connecting to a hidden network

_Please remember to replace `wlan0` with your actual interface name if
applicable._

SailfishOS displays the MAC addresses and I understand Windows to display
"hidden network" or something similar as well. Android and iOS require entering
the name through manual adding and warn about hidden networks, on Linux at least
NetworkManager has a button "connect to hidden network".

`iwd` provides commands `iwctl station wlan0 get-hidden-access-points` and
`iwctl station wlan0 connect-hidden`, although they may require
`iwctl station wlan0 scan` at first. In `/var/lib/iwd/<ssid>.<type>` there would
be

```toml
[Settings]
Hidden=true
```

## Seeing hidden networks

Many platforms have apps for this, however Android prevents getting the hidden
SSID, so I am focusing on Linux. The required Fedora package is `aircrack-ng`.

1. Switch to monitoring mode through `airmon-ng start wlan0`
1. If there are warnings about interfering services, stop them or
   `airmon-ng check kill`. **_This will likely disconnect your network
   connectivity, unless you have multiple NICs._**
1. `airodump-ng wlan0`
1. Wait patiently as ESSID `<length:  0>` gets replaced with the actual SSID
   once devices connect. On the bottom you will see devices asking for specific
   SSID.

- This could be sped up by exploiting WiFi vulnerabilities, but that would no
  longer be in the white hat territory and thus I don't concern myself with it.

### Returning to normalcy

1. Exit `airodump-ng` by `CTRL - C` as usual.
1. Exit monitoring mode through `airmon-ng stop wlan0phy`
1. Restart your network management (the `airmon-ng start wlan0` and
   `airmon-ng check-kill` probably gave you a hint), for me it's
   `systemctl restart iwd NetworkManager`, while `wpa_supplicant` would be more
   common.

### TODO

_I should investigate and write about these:_

- `man airodump-ng` may have nice flags as currently nothing is stored.
  - Security people should have some data to compare to on what is normal in the
    network environment and when changes happen. Then again with less data
    stored, there is less chance of doing something illegal by accident, while I
    think the passive listening this page focuses on is the same as VHF scan all
    button.
- I think `kismet` does the same as `airodump-ng`, while it may be more focused
  on [wardriving](https://en.m.wikipedia.org/wiki/Wardriving).

## QR codes for hidden SSIDs

[zxing](https://github.com/zxing/zxing/wiki/Barcode-Contents#wi-fi-network-config-android-ios-11)
and [Wikipedia](https://en.wikipedia.org/wiki/Wi-Fi#Securing_methods) agree on
`WIFI:T:WPA;S:mynetwork;P:mypass;;` so my wondering would be:
`WIFI:T:nopass;S:openwireless.org;;H:true;` where only `P:mypass` got omitted.

<pre>
# The capital H is the highest error correction, others are LMQ
% qrencode -l H -t utf8 "WIFI:T:nopass;S:openwireless.org;;H:true;"
█████████████████████████████████████
█████████████████████████████████████
████ ▄▄▄▄▄ █▀ █▀▀▀▀  ▀▄▄▀█ ▄▄▄▄▄ ████
████ █   █ █▀ ▄ █▀▄▀▄█▄▄ █ █   █ ████
████ █▄▄▄█ █▀█ █▄▀▀█▀▀█▀██ █▄▄▄█ ████
████▄▄▄▄▄▄▄█▄█▄█ █ █▄▀ ▀ █▄▄▄▄▄▄▄████
████   ▄ █▄ ▄ ▄█▄█  ██▀▀ ▄▀▄▀ █▄▀████
█████  █▄▀▄▄  ▀ ▄▄▄▀▀▄▀▀ ▄▀ ▀▀▄█ ████
████ ▀▄█▄█▄▄█▄▀▄▀█ ▄▄██▀▀▄ ▄▀▀   ████
████▄▄█▀ ▀▄ ▀ ▄█▀ ▀█▄▄█ ▀██ ▀▀███████
████▀   ▀▀▄▄ █ █▄▄▀▄▄▄▄█ ▄▀▄ ██▀▀████
████ █▄█ ▄▄█▄▀█ ▄███▄▄█▀▀▄▀▀▀█▄▄▀████
████▄█▄██▄▄█ ▄▄▄▀▀█▄ ▄▄█ ▄▄▄ ▀▄▄▄████
████ ▄▄▄▄▄ █▄▀▄█▀ ▄▄▀  █ █▄█ ▀ █ ████
████ █   █ █ ███▄█▄▄█▄▀▀   ▄ ▀▄ █████
████ █▄▄▄█ █ ▄  ▄█▀▄  ▀ ▀▄▄▀▄▀  ▀████
████▄▄▄▄▄▄▄█▄▄▄▄███▄▄▄█▄▄▄▄▄▄▄▄▄█████
█████████████████████████████████████
█████████████████████████████████████
</pre>

_While the above looks messy in my `jekyll serve -l`,
[Binary Eye](https://github.com/markusfisch/BinaryEye) detected it regardless._
