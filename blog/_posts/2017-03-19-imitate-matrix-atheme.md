---
layout: post
comments: true
title: "Imitating Matrix moderator at IRC using Atheme services"
category: [english]
tags: [Matrix, ChanServ, room, channel, moderator, op]
redirect_from:
  - /mxmod.html
  - /english/2017/03/19/imitate-matrix-atheme.html
---

*This post should probably be outside of my blog, but I cannot think of
 appropiate way to put it to wiki.*

I am going to assume that you already know what Matrix is, but you might
not know that moderator and power level 50 (AKA PL50) are the same thing.

What PL50 can do is kicking/banning users (if their PL is less than of the
moderator) and changing topic. Adjusting PL of other users is reserved to
PL100.

1. Create a template ("MXMOD") for adding mods more easily later.
   `/msg ChanServ TEMPLATE #channel MXMOD +AOt`.
    * This allows the user to see the channel access list or flags with
      ChanServ, get automatically opped or op themselves and change the
      topic with ChanServ or by themselves if TOPICLOCK is enabled.
2. Optionally enable SECURE so users without `+o/+O` flag won't get opped
   (and thus it won't sync to Matrix as PL50 if ops syncing is enabled
   for the network): `/msg ChanServ SET #channel SECURE on`.
3. Actually op the mod
   `/msg ChanServ FLAGS #channel moderatorUsername MXMOD`.

Why would you want to do this? If your moderator doesn't use IRC, but only
users Matrix, they won't need other flags than those. The ghost of the
moderator should be opped at IRC for actions such as kick and topic change
to sync.
