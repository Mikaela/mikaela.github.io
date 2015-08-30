---
layout: post
comments: true
title: "irc & ircs links"
category: [english]
tags: [english, IRC]
---

*Yet another note-to-self post, but these links are confusing, how do you
 make proper irc:// or ircs:// link?*

I started wondering about the proper way to make irc/ircs links today and
based on the following addresses

* https://www.iana.org/assignments/uri-schemes/prov/ircs
* https://tools.ietf.org/html/draft-butcher-irc-url-04

I decide that the correct form which I will use is
`ircs://irc.example.org:6697/#channel,##channel,!channel`.

* specifies that the link uses SSL with the *s* (for plain text just remove
  it)
* specifies the port so client doesn't have to guess it
* clearly specifies the channels without leaving prefixes for the client
  to guess

The previously linked pages also contain other forms, but this seems the
best to me and I am against using channel keys as there are better ways
to keep channel private (such as restricted or +i and +I to authorized
people) and server passwords aren't used anywhere where I would encounter
them, other than forwarding the password to NickServ, but that is depracted
by [SASL](http://ircv3.net/specs/extensions/sasl-3.1.html).
