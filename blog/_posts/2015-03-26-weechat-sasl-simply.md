---
layout: post
comments: true
title: "WeeChat: easy instructions for using SASL"
category: [english]
sitemap: true
robots: noai
tags: [irc, english]
redirect_from:
  - /weechat-sasl.html
  - /english/2015/03/26/weechat-sasl-simply.html
---

This seems to confuse many WeeChat users, so I will try to explain it more
simply as I am repeating myself everywhere about this same thing.

SASL is mechanism for identifying to services at IRC automatically even before
you are visible to the network.

---

First set mechanism as plain if you have it as anything else.

```
/set irc.server_default.sasl_mechanism PLAIN
```

PLAIN is simple "login using username and password" mechanism that sends the
username and password in plaintext which isn't an issue if you also use SSL
(like you should) and trust the server (and **use different password
everywhere**).

Then simply set your username and password

```
/unset irc.server.NETWORK.sasl_mechanism
/set irc.server.NETWORK.sasl_username REGISTERED_NICKNAME
/set irc.server.NETWORK.sasl_password PASSWORD
/save
```

_Replace NETWORK with the name of network that you have in WeeChat, for example
`liberachat`._

And now after `/reconnect` you should be identified automatically using SASL,
but you might also ensure that you use SSL.

## Using SSL

Change your address to use SSL port and enable SSL for the network:

```
/set irc.server.liberachat.addresses irc.libera.chat/6697
/set irc.server.liberachat.ssl on
/save
```

_Note: SSL does nothing until you `/reconnect`_

_6697 is the [standard SSL port](https://tools.ietf.org/html/rfc7194)._

liberachat has valid SSL certificate, but if it didn't, you would have two
choises:

1. Trust the fingerprints manually using `irc.server.NETWORK.ssl_fingerprint`,
   see [this post].
2. Disable SSL certificate checking using
   `/set irc.server.NETWORK.ssl_verify off` **NOT RECOMMENDED**, see [this post].

[this post]:{% post_url blog/2015-02-24-znc160-ssl %}
