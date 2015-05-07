---
layout: page
permalink: /bot.html
sitemap: false
excerpt: "A little about my IRC bot. Useful links, why it doesn't reply to me, how to make it recognize me, what does it actually do?"
---

*Please read also [rules of my channels.](https://mikaela.info/channel.html)*

* [Web interface](https://bot.mikaela.info)
    * [Plugin documentation](https://bot.mikaela.info/plugindoc/)

The bot doesn't allow people to register by themselves and it might be
configured to A) only reply to identified users B) not reply on certain
channel to anyone C) reply only to owner at certain channel. This may
change without notice.

Currently only ops on the channels it's on are registered and should be
identified by their nickserv account.

List of the channels where the bot is on can be seen with /whois. However
this list doesn't include secret/private channels (mode +sp).

The bot can also be requested to join other channels, but I reserve the
right to not join it anywhere or to not register specific channel ops
to the bot. It doesn't have open registration.

Do you have an account, but you aren't identified? As you are ignored
unless you are identified, you can trigger message on the IRCd including
your NickServ account by using one of the following methods:

* `/cycle` so extended-join sends your account name to the bot.
* `/kick` so the bot will automatically rejoin and send whox requests to
  the channel receiving your NickServ account.

## What does the bot do?

Currently the bot is primarily spamming my channel with new items in some
RSS feeds. You can find list of the feeds added to the bot at
[the web documentation for RSS plugin](https://bot.mikaela.info/plugindoc/RSS/),
but  listing the feeds automatically announced on the channel isn't
possible [yet](https://github.com/ProgVal/Limnoria/issues/1085).

It's also protecting channels from spam using the [AttackProtector plugin.](https://github.com/ProgVal/Supybot-plugins/tree/master/AttackProtector)

The bot also has `ops` command for getting op attention, but it requires
correct prefix to be used, check
`/msg <bot> config channel <#channel> reply.whenaddressedby.chars`. The
prefix can be different on different channels.
