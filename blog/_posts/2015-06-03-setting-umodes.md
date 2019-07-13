---
layout: post
comments: true
title: "(Un)Setting umodes"
category: [english]
tags: [english, IRC, HexChat, ZNC]
redirect_from: /english/2015/06/03/setting-umodes.html
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
client to (un)set them automatically. **Your umodes won't be change this
way until you reconnect!**

*These examples use the umodes that I am using at the time of writing.*

* HexChat: Open network list, select network and click `edit`, open tab
  `Connect commands`, click `add` and type `umode -iI+wRQxg`.
* WeeChat
    * Old way: `/set irc.server_default.command /mode $nick -iI+wRQxg`
    * Modern way (1.7+): `/set irc.server_default.usermode -iI+wRQxg`
    * *For setting umodes only for one network instead of them all
      replace server_default with server.name, e.g.*
        * `/set irc.server.freenode.usermode -iI+wRQxg`
* ZNC:
    * Traditional way: `/msg *status loadmod perform` and
      `/msg *perform add mode %nick% -iI+wRQxg`
        * The same can also be done in webadmin and if you load perform for
          user level, adding the command `mode %nick% -iI+wRQxg` will set
          umode -iI+wrqXG on all networks.
        * The modes will apply to all networks if you load it on user
          level or only the invidual network on network level.
    * Modern way: [ZNC issue #1221](https://github.com/znc/znc/issues/1221)

### And what these umodes mean

This list is what I want the umodes to mean when I set them automatically.
For what the actual umodes are on your network, try `/quote help umode` or
`/quote help umodes`.

* i — invisible, hides your channel list from whois with ircd-seven and
  possibly some other ircds. Also hides you from /who of people who don't
  share channels with you. [See also why I unset it here.]({% post_url blog/2015-03-26-umode--i %})
* I — On InspIRCd with [hidechans] module hides your channel list from
  whois.
* w — receive wallops, less-important announcements from network operators
  that are only received by those who are curious and have umode +w. More
  important announcements are usually global notices.
* R — block PMs from unidentified users (who tend to be spambots and if
  they aren't, they can identify to services).
* Q — block channel redirects on Charybdis (mode +f or banforward).
* x — activates IRCd based uncloaking even if it's [not that reliable.](https://gist.github.com/maxteufel/1e2cf7ada079c271bd3c)
* g — caller-id, people must be `/accepted` or PMed before they can PM you.
  More detailed post about that [here]({% post_url blog/2015-04-02-umodeg %}).
* t — only users using SSL can PM.
