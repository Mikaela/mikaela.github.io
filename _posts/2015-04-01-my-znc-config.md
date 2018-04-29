---
layout: post
comments: true
title: "My ZNC config"
category: [english]
tags: [irc, english]
published: false
---

Some time ago I thought that I could write about this (or at least my
issue tracker has open issue about this and as I am not sleeping, I can
probably write about this...)

My ZNC config after installation is the following:

* Skin: forest
* Global modules:
    * adminlog
    * block_motd
    * certauth
    * chansaver
    * fail2ban
    * lastseen
    * log `-sanitize $USER/$NETWORK/$WINDOW/%Y-%m-%d.log`
    * playback
    * privmsg
    * webadmin

And on user level

* Modules
    * alias
    * autoreply
    * cert
    * controlpanel
    * ctcp_notifier
    * ctcpflood
    * disconkick
    * listcokets
    * perform
    * send_raw
    * shell
* Channel modes: +stn
* Buffer size: 50
* [x] Multi Clients
* [x] Prepend Timestamps
* [x] Admin
* Try to parse as UTF-8 and as ISO-8859-15, send as UTF-8 (recommended)

I don't use "Auto Clear Chan Buffer" or "Auto Clear Query Buffer", because
I use the playback module on phone and on my 24/7 WeeChat I have
`clientbuffer` which is same as those two options set to single client.

*Don't see any sense in this post? Me neither, don't worry, I wonder what
was my original reason for adding this to my issue tracker...*
