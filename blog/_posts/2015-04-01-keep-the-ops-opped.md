---
layout: post
comments: true
title: "Keep the ops opped"
category: [english]
tags: [irc, english]
redirect_from:
  - /noops.html
  - /english/2015/04/01/keep-the-ops-opped.html
sitemap: true
robots: noai
---

_Why I think that you should keep the ops opped instead of following
LiberaChat's recommendations._

Is there an issue with your IRC channel needing op attention? Without having ops
visible, your users will very likely go to the network support channel instead
of informing you or your ops.

Without ops being visible, who are ops or how to alert them?

- `/msg chanserv flags #channel`
  - requires whoising all ops to see if they are present
    - idle time gets reset by CTCP replies, OTR and possibly other things.
      LiberaChat staffers may also base their judgement on are there ops present
      to handle the issue on idletime of ops.
  - new users most likely have no idea on the command
  - remote (=different server) whois is rate-limited
  - lists accountnames, not nicknames the people are actually using
    - e.g. I have a less privileged account `Mikaela-`, but my Matrix connection
      is usually called `Michaela` which may not instantly connect in people's
      minds. Ciblia which is one of my fallback usernames is even further away
      from `Mikaela`.
- `/msg memoserv sendops #channel help! X is spamming`
  - requires +A flag which isn't mostly given to everyone
  - new users are unsure whether they have the flag if they even know about
    existense of the flag or the MemoServ command.

There is also third commonly used method, having trigger word that either
highlights all the ops or makes bot PM or highlight the ops which again has it's
own issues:

- are the ops surely highlighting on it?
- the users can be confused for not getting any kind of acknowledging to the
  triggerword without bot and possibly spam it even more
- if the bot PMs the ops, what if they are on umode +g and miss the bot?
- if the bot highlights all the ops, what if the ops automatically ignore mass
  highlights (multiple nicks highlighted on the same line)?
- and again, are the users aware of the triggerword?
  - if you clearly document it on webpage of your channel, the users should be
    aware of it, but what if they didn't bother to read it or forgot it? Their
    fault probably, but your channel is having issues for longer time...

And there is also the issue of having to trust services or your bots. What if
the services go down or netsplit and the same happens to your bot? You are out
of luck unless you had the ops opped in which case the outage doesn't affect you
that much at all.

Counter argument: if ops are shown on a support channel, that can make people
new to IRC ping them about everything instead of asking in the channel in
gneral. I think it's up to the channel operators to decide how much that weights
and can the new users be educated without much effort.

## Fixing LiberaChat

Tell ChanServ the following three commands:

```
/msg chanserv template #channel AOP !+AeoOtvV
/msg chanserv template #channel FOUNDER !+AFRefioOrstvV
/msg chanserv template #channel VOP !+AvV
```

The ! means "add these flags to everyone who currently matches the template
exactly" so when you do this everyone who you have made xOP with `/msg chanserv
someone xOP" gets opped or voiced automatically.<br/> _Note: templates including
F (founder) are not automatically updated even with the !._

Alternatively if you have been setting flags manually use
`/msg chanserv flags #channel someone +O` to automatically op them. You must
also do this to yourself if you are channel founder, for auto-voicing use +V.
_Note: +o allows you to manually op/deop anyone, +v is the same, but for voice,
so don't confuse the casing._

Changelog:

- Part 1:
  https://github.com/Mikaela/mikaela.github.io/commits/master/_posts/2015-04-01-keep-the-ops-opped.md
- Part 2:
  https://github.com/Mikaela/mikaela.github.io/commits/master/blog/_posts/2015-04-01-keep-the-ops-opped.md
