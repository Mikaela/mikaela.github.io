---
layout: post
comments: true
title: "(Un)Setting umodes"
category: [english]
tags: [english, IRC, HexChat, ZNC]
---

*As I have written more about umodes than I thought, I am breaking the
posts setting/unsetting is documented here and I will link here from other
posts.*

Simply use `/umode +mo-des` or if that is unknown command (as it's alias
in most of clients), use `/mode YOURNICK +mo-des` and you set umodes "mo"
and unset "des". *These might not be real umodes and they are here just as
an example.*

## Automatic umodes

Umodes aren't remembered across connections so you must configure your
client to (un)set them automatically.

*These examples use the umodes that I am using at the time of writing.*

* HexChat: Open network list, select network and click `edit`, open tab
  `Connect commands`, click `add` and type `umode -iI+wRQxg`.
* WeeChat
    * now: `/set irc.server_default.command /mode $nick -iI+wRQxg`
    * [future?](https://github.com/weechat/weechat/issues/377) *write this
      if the future happens.*
* ZNC: `/msg *status loadmod perform` and
  `/msg *perform add mode %nick% -iI+wRQxg`
    * The same can also be done in webadmin and if you load perform for
      user level, adding the command `mode %nick% -iI+wRQxg` will set
      umode -iI+wrqXG on all networks.

### And what these umodes mean

* i — invisible, hides your channel list from whois with ircd-seven and
  possibly some other ircds. Also hides you from /who of people who don't
  share channels with you. [See also why I unset it here.](({% post_url 2015-03-26-umode--i %})
* I — On InspIRCd with [hidechans] module hides your channel list from
  whois.
* w — receive wallops, less-important announcements from network operators
  that are only received by those who are curious and have umode +w. More
  important announcements are usually global notices.
* R — block PMs from unidentified users (who tend to be spambots and if
  they aren't, they can identify to services).
* Q — block channel redirects on Charybdis (mode +f or banforward).
* x — activates IRCd based uncloaking even if it's [not that reliable](https://gist.github.com/maxteufel/1e2cf7ada079c271bd3c)
* g — caller-id, people must be `/accepted` or PMed before they can PM you.
  More detailed post about that [here]({% post_url 2015-04-02-umode+g %})
  and [part 2 here]({% post_url 2015-05-10-umode+g2 %}).
