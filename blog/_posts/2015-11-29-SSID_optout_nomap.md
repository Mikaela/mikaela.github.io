---
layout: post
comments: true
title: "`SSID_optout_nomap`"
category: [english]
tags: [english, wlan, privacy, anxiety]
redirect_from:
  - /openwireless.html
  - /openwireless5.html
  - /openwireless_nomap.html
  - /openwireless5_nomap.html
  - /english/2015/11/29/SSID_optout_nomap.html
robots: noai
---

_Anxiety is now focusing to WLAN mapping & key sharing and how easy it is
to locate people._

Today I renamed my primary WLAN network (hereafter referred as SSID) to
`SSID_optout_nomap`.

- `_optout` when included in WLAN network name should opt your network out
  of Microsoft's [WiFi Sense](https://windows.microsoft.com/en-us/windows-10/wi-fi-sense-faq).
  - TL;DR: when enabled all your Facebook/Outlook/Skype contacts can
    connect to your encrypted WLAN without knowing the password (which
    they don't get).
    - I would be interested in seeing piracy case where the network
      owner is innocent and threat letter was received about random
      contact downloading illegal content. I am most interested in what
      would happen, would the network owner be able to proof that they
      didn't do it, but instead their network was "hacked" which wasn't
      the case as they were using Windows 10 or Windows Phone.
- `_nomap` opt out of Google Maps accuracy increaser & Mozilla Location
  Services & WiGLE & others.

While I think that MAC based opting out would be better than making SSID
messy, most parties doing the mapping only accept SSID and I hope all
will take `_nomap` as mark of not wanting to participate.

I also run `openwireless.org` hotspot and I like the idea, but as the SSID
for it must be `openwireless.org` I had to leave it. I still belong to the
movement as I still have open guest network **without captive portal or
time limit**.

The network is now called as `openwireless_nomap` and `openwireless5_nomap`
(dualband router and 5 means 5 GHz). I hope that the type of users doesn't
change by that change and in case it's abused, it's existence is easier
to proof than that my private network was hacked.

I encourage you to read about
[the Open Wireless Movement](https://openwireless.org/) and join by
opening a guest network _without captive portal or time limit_ and
preferably naming it as `openwireless.org`. In case you have similar issues
like me, `openwireless` or `openwireless_nomap` are also OK, the idea is
what counts.

_It's openwireless_nomap and not openwireless_optout_nomap, because there
is no need to opt out of sharing passwords on open (no password) networks.
Also the order [\_optout_nomap comes from reddit](https://redd.it/3g3xyu)._

The other thing that I mentioned in the beginning is how I am worried on
how easy it is to geolocate people.

1. Start a discussion which with you somehow receive information on SSIDs
   that people use or if they are part of `openwireless.org`.
2. Go to their GitHub/Twitter/Facebook/whatever profiles and check where
   they live or just get that information in the discussion too.
3. Go to [WiGLE.net](https://wigle.net/) and go where your target lives
   and enter their SSID to the right and click filter and you will see dot
   on the map where they live.

I don't like this and I don't doubt that there are people who would
cause me (physical) harm (read the rest of this site/blog or then just be
on common IRC channels and see as I make enemies).

> WiGLE respects your privacy. To have records of your access point removed from our database, or if you have any questions or suggestions, send an email to: WiGLE-admin[at]WiGLE.net (please include BSSID (MAC) in removal requests). We're also on IRC: at WiGLE.net:6667

To my opt-out response I received the following message implying that they
do support `_nomap`/`_optout`:

> Those networks delisted as requested. We periodically purge the
> \_optout / \_nomap networks.

> -bobzilla

_I hope this blog post at least communicates what I am trying to say even
if it looks very messy to me and I haven't even took any anxiety medicines
last night or today so my head should be working a lot better than it
currently does._

---

2019-01-17: I don't know how to start updating this post, but I would
like to add a few things ~three years later:

- There is no need for the `_optout` part since 2016, see e.g. [KrebsonSecurity](https://krebsonsecurity.com/2016/05/microsoft-disables-wi-fi-sense-on-windows-10/).
- Christian Haschek's blog showed me that people are actually doing checking
  WLAN locations from WiGLE and it's not only my mental health or anxiety
  more than three years ago.
  - [The curious case of the Raspberry Pi in the network closet](https://blog.haschek.at/2018/the-curious-case-of-the-RasPi-in-our-network.html)
- I nowadays represent 5 GHz networks as `SSID_fast_nomap`, because fast
  is more obvious to not technical people wondering which one to pick
  compared to the number, but in public places I drop the `_nomap` as SSID
  works as a free advertisement.
  - I think I copied this idea from someone at IRC, but I have forgotten
    whom and it's possible they wouldn't even wish to be attributed.
