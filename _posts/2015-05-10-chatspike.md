---
layout: post
comments: true
title: "ChatSpike-style IRC network management"
category: [english]
tags: [english, IRC]
---

ChatSpike is the IRC network that is home to InspIRC and you might have
heard about it and that it has many issues.

*I mainly focus on two issues that have bigger impact than some minor
issues like ancient services having small issue of letting anyone to login
as anyone without passwords or anything which still isn't fixed (only
workarounded), CertFP they managed to add long time ago.*

First between 2015-04-17 and 2015-04-18 ChatSpike upgraded their IRCd
which is a good thing, but they also updated their invalid SSL certificate
that was also expired without telling anyone.

Or actually they did tell about it, the upgrade was mentioned hour before
the servers restarted, but the SSL certificate change was only mentioned
in global notice after the upgrade and on website (without RSS feed).

What does this mean? Simply that all users using TLS and who actually
verified that they got the correct certificate (which was invalid and
expired) got disconnected and as their clients tried to connect, they only
encountered invalid certificate and thouht that something is wrong and
attempted reconnecting. This again hit flood protections adding network
wide ban of 24 hours.

Isn't everyone using TLS? They should, but there are always stupid clients
that don't care about certificate validity at all and there are also some
users who just blindly accept all certificates offered...

* * * * *

On the weekend 2015-05-09 and 2015-05-10 there was another SSL related
issue. SSL was disabled entirely making all ports plain text affecting
all users who use SSL regardless of whether they accept all certificates
or not.

This issue was there around 20 hours until the ChatSpike operators managed
to reload the SSL module. Can you guess what happens next? Many SSL users
are banned for reconnecting too fast as "one does not simply SSL to plain
text port". So those users are banned for 24 hours unless the operators
decide to clear that ban list.

I have no idea what they are doing as I was banned from the
main (support) channel for being "destructive instead of constructive".
