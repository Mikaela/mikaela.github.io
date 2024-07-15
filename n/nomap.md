---
layout: mini
comments: true
title: "Opting out of WiFi positioning (_nomap)"
permalink: /n/nomap.html
redirect_from:
  - /english/2015/11/29/SSID_optout_nomap.html
  - /blog/english/2015/11/29/SSID_optout_nomap.html
  - /r/optout.html
  - /r/_optout.html
  - /r/_nomap.html
  - /r/_optout_nomap.html
  - /nomap.html
  - /_nomap.html
robots: yesai
sitemap: true
excerpt:
  The underscore nomap suffix in SSID indicates your desire to opt-out of Wi-Fi
  positioning systems and, in some cases, mass surveillance.
---

# `_nomap`

_{{ page.excerpt }} This used to be a not so great blog-post and has since
became a hopefully better note to whoever it may concern_

`_nomap` in the end of your SSID will exclude your network from Google, Apple,
WiGLE etc.
[Wikipedia has a more complete list of supporting services.](https://en.m.wikipedia.org/wiki/Wi-Fi_positioning_system#Public_Wi-Fi_location_databases)

Microsoft has a separate
[location services opt-out](https://account.microsoft.com/privacy/location-services-opt-out)
which uses MAC addresses instead.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Why?](#why)
- [`_optout`](#_optout)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Why?

Privacy. WiGLE.net may point your home directly just by entering the SSID and
who knows how many similar services there are. While I have been thinking of
this since 2015, there is at least one case where this has been used in 2018:

- [Christian Haschek: The curious case of the Raspberry Pi in the network closet](https://blog.haschek.at/2018/the-curious-case-of-the-RasPi-in-our-network.html)

In the second quarter of 2024, researchers found that Apple allows tracking
Wi-Fi networks that hadn't opted out, including Starlink terminals in Ukraine
and Gaza.

- [KrebsOnSecurity: Why Your Wi-Fi Router Doubles as an Apple AirTag](https://krebsonsecurity.com/2024/05/why-your-wi-fi-router-doubles-as-an-apple-airtag/)

## `_optout`

Legacy from 2015-2016. Used to be part of Microsoft WiFi Sense that shared WiFi
networks and passwords to all contacts.

- [KrebsOnSecurity: Microsoft Disables Wi-Fi Sense on Windows 10](https://krebsonsecurity.com/2016/05/microsoft-disables-wi-fi-sense-on-windows-10/)
