---
layout: post
comments: true
title: "OxygenOS missing notifications and how to get them back"
category: [english]
tags: [english, OxygenOS, Android, notifications]
published: false
---

*Written for OxygenOS OP3_O2_Open_7 (community build), no idea if this
 happens on stable builds, but it will probably start happening there.*

A few weeks ago I got annoyed by a new update which introduced "a smart
background app killing mechanism" as after that I stopped receiving
notifications. I tolerated it for some time and, as this is some time after
I returned to Telegram, I went to
[r/OnePlus Telegram group](https://www.reddit.com/r/oneplus/comments/4bucfp/introducing_the_official_roneplus_telegram_group/) asking for help after
official support had had no idea on what is the issue.

They immediately had the answer, open *Settings*, go to *Battery*,
touch the *three dots*, select *Aggressive doze & app hibernation* and
disable *Enable aggressive doze & app hibernation*.

> When this is enabled, doze will operate more aggressively. Background
> apps will automatically enter hibernation.

It might sound like a good idea, but it kills notifications from mostly
all apps and I already use Greenify's Aggressive Doze which is just the
normal Android doze launched in a few minutes instead of a few hours
and it respects my whitelist.

This might have fixed notifications as long as I started the apps after
booting at least once, but if I didn't start the app, I would miss
notifications until I started the app. I thought this was a bug and was
patiently waiting for fix, until accidentally finding out what is the
problem.

Open *Settings* again, go to *Apps* this time and there select the *wheel*
next to the three dots and under *Advanced* open *App auto-launch*. Disable
*App auto-launch* and reboot and be surprised when all notifications
work again!

> When you turn it on, the system will prevent these apps from launching in
> the background.

This might also seem like a good idea, but I still have Greenify
hibernating apps that I don't care about enough to have them receiving
notifications all the time, but I would appreciate communication apps
to send notifications to me regardless of whether I open them after boot
by myself or not.
