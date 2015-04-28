---
layout: post
comments: true
title: "Keep the ops opped"
category: [english]
tags: [irc, english]
---

*Why I think that you should keep the ops opped instead of following
freenode's recommendations.*

Is there an issue with your IRC channel needing op attention? Without
having ops visible, they will very likely go to the network support channel
instead of informing you or your ops.

Without ops being visible, who are ops or how to alert them?

* `/msg chanserv access #channel list`
    * requires whoising all ops to see if they are present
        * idle time gets reset by CTCP replies, OTR and possibly other
          things. Freenode ops also base their judgement on are there ops
          present to handle the issue on idletime of ops.
    * new users most likely have no idea on the command
    * whois is rate-limited
* `/msg memoserv sendops #channel help! X is spamming`
    * requires +A flag which isn't mostly given to everyone
    * new users are unsure whether they have the flag if they even know
      about existense of the flag or the MemoServ command.

There is also third commonly used method, having trigger word that either
highlights all the ops or makes bot PM or highlight the ops which again
has it's own issues:

* are the ops surely highlighting on it?
* the users can be confused for not getting any kind of acknowledging to
  the triggerword without bot and possibly spam it even more
* if the bot PMs the ops, what if they are on umode +g and miss the bot?
* if the bot highlights all the ops, what if the ops automatically ignore
  mass highlights (multiple nicks highlighted on the same line)?
* and again, are the users aware of the triggerword?
    * if you clearly document it on webpage of your channel, the users
      should be aware of it, but what if they didn't bother to read it or
      forgot it? Their fault probably, but your channel is having issues
      for longer time...

And there is also the issue of having to trust services or your bots.
What if the services go down or netsplit and the same happens to your bot?
You are out of luck unless you had the ops opped in which case the outage
doesn't affect you that much at all.

*Somewhat rewritten on 2015-04-28 13:25Z and now this looks even worse
to my eyes...*
