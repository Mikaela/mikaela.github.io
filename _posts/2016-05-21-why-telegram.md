---
layout: post
comments: true
title: "Why I use Telegram?"
category: [english]
tags: [english, IRC, Telegram, security, privacy]
redirect_from: /whytelegram.html
---


*I get often asked why do I use Telegram even if it's known to have bad
 crypto. The answer is that crypto doesn't always matter.*

***[Please read why I removed my Telegram account!]({% post_url 2016-09-29-why-not-telegram %})***

The main reason is usernames, I can take one and share it to people for
them to contact me instead of giving my phone number to everyone. This
also applies to groups where people see only the name and optionally
username, not the phone number (like at [WhatsApp] and possibly [Signal]).

This makes [Telegram] somewhat more open version of [Slack] as anyone can
join public groups without being invited by email address, public link
or invite link that group creator can get.

[Telegram] also is cross-platform and welcomes third party clients unlike
[WhatsApp] and Signal (which gives me the impression of being a little more
transparent WhatsApp *[reason](https://github.com/LibreSignal/LibreSignal/issues/37#issuecomment-217211165)*).
The official clients are open source (but like Android the source code
always seems to be released some time after the release) and there are
unofficial clients for [Sailfish OS] and [Ubuntu Touch].

And back to the [bad crypto], I don't see what it matters if Telegram can
read the messages I send with cloud chat or attacker the secret chat
messages if the same groups there are on [Facebook] where [Facebook] can
read all the messages or the groups are [relayed to IRC] where most of
people sadly connect using plain text connection and send the plaintext
around the internet where anyone at correct position could read the
messages.

If we compare [Telegram] to [IRC], [Telegram] immediately has the
advatance of being in groups/online receiving messages always since you
join the group. With [IRC] you would disconnect and join all the time when
you power off your devices unless you have took the time to learn using
shells (terminal multiplexer, CLI IRC client) or bouncers.

It seems like IRC has very little requirements (without shell/bouncer), but
Telegram only requires phone number for logging in / registering and you
can do that on any client even [web.telegram.org](https://web.telegram.org)
and you see the same (not secret chat) messages on all clients. One could
argue that SMS verification is insecure, but you can enable two factor
authentication from the settings and enable password that you will always
be asked for in addition to the SMS/Telegram code.

* * * * *

But what if you need the stronger crypto? If you only communicate with
Android/iOS users, [Signal] might work for you, if you also need to
communicate with Windows Phone users, you must probably use [WhatsApp]
where most of your family/friends most likely already are.

Most universal protocol would probably be [XMPP] and you can use e2e
encryption with it either by [OTR], [OpenPGP] or [OMEMO] where [OMEMO]
is at time of writing only supported by [Conversations], (Android-only,
[free on F-Droid](https://f-droid.org/repository/browse/?fdfilter=conversations&fdid=eu.siacs.conversations))
and [Gajim], (cross-platform desktop client).

*PS. I encourage using some of the other options instead of having very
 private/secret dicussions on [Telegram] as it's always possible to give
 your number or [XMPP] ID and send people to contact you there. If you need
 XMPP ID, try [podupti.me](https://podupti.me/) where you will also get a
 Diaspora\* account. (Note that not all pods have XMPP enabled, check the
 services offered.)*

*PPS. I am somewhat unhappy with this post as it looks worse than I
 imagined, but [improving pull requests are always welcome](https://github.com/Mikaela/mikaela.github.io/edit/master/_posts/2016-05-21-why-telegram.md).*

[WhatsApp]:https://www.whatsapp.com/
[Signal]:https://whispersystems.org/
[Slack]:https://slack.com/
[Telegram]:https://telegram.org/
[Sailfish OS]:https://github.com/Dax89/harbour-sailorgram
[Ubuntu Touch]:https://uappexplorer.com/app/com.ubuntu.telegram:
[Facebook]:https://facebook.com/
[IRC]:http://ircv3.net/
[XMPP]:https://xmpp.org/
[OTR]:https://otr.cypherpunks.ca/
[OpenPGP]:https://gnupg.org/
[OMEMO]:https://conversations.im/omemo/
[Conversations]:https://conversations.im/
[Gajim]:https://gajim.org/
[bad crypto]:http://security.stackexchange.com/a/49802
[relayed to IRC]:https://github.com/FruitieX/teleirc
