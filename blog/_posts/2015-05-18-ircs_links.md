---
layout: post
comments: true
title: "irc & ircs links"
category: [english]
tags: [english, IRC]
redirect_from: /english/2015/05/18/ircs_links.html
sitemap: true
robots: noai
---

_Yet another note-to-self post, but these links are confusing, how do you make
proper irc:// or ircs:// link?_

I started wondering about the proper way to make irc/ircs links today and based
on the following addresses

- https://www.iana.org/assignments/uri-schemes/prov/ircs
- https://tools.ietf.org/html/draft-butcher-irc-url-04

EDIT 2015-08-30 & 2015-10-10: I got eaten by HTML5 validator, because of what
was said above :frown: and the proper way how you make links without getting
eaten by HTML5 validator is
(https://tools.ietf.org/html/draft-butcher-irc-url-04) and the address would
become `ircs://irc.example.org:6697/%23channel%2C%23%23channel%2C%21channel`.
See [Percent-encoding at Wikipedia]. Thanks Mardeg at irc.mozilla.org.

[percent-encoding at wikipedia]:
  https://en.wikipedia.org/wiki/Percent-encoding#Percent-encoding_reserved_characters

- specifies that the link uses SSL with the _s_ (for plain text just remove it)
- specifies the port so client doesn't have to guess it
- clearly specifies the channels without leaving prefixes for the client to
  guess

The previously linked pages also contain other forms, but this seems the best to
me and I am against using channel keys as there are better ways to keep channel
private (such as restricted or +i and +I to authorized people) and server
passwords aren't used anywhere where I would encounter them, other than
forwarding the password to NickServ, but that is depracted by
[SASL](https://ircv3.net/specs/extensions/sasl-3.1.html).
