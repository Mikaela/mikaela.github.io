---
layout: post
comments: true
title: "Why I recommend TeleIRC instead of TeleMatrix"
category: [english]
tags: [irc, english, Matrix]
---

*FAQ at SailfishOS Fan Club: why everything was made worse for Matrix users?*

I am not sure which order should I put the issues with TeleMatrix in and
the first issue is actually multiple interlinked issues and I am just
trying to open it somehow.

* * * * *

Issue 1: Matrix display names are based on Telegram real name and not
username. In practive this means that Matrix (and IRC) users won't know
what is the username to use in order to ping a Telegram user.

This was workaroundable by setting Telegram real name into `@username`, but
the new Riot Web mentions broke this.

And as display names at Telegram don't have any limitations (unlike
usernames), everyone who had only UTF-8 characters as their "real name" at
Telegram became "Telegram" at IRC and as there were 5 users named Telegram,
the IRC bridge got easily confused on who is who and lost the connection
between Matrix and IRC users resulting into the IRC bridge repeating
everything the Matrix user said resulting into duplicated messages at
Matrix and Telegram.

As requested, I workarounded this by setting quiet on `#jollafanclub` for
`*Telegram*!*@*` preventing anyone whose username nickname included the
word Telegram from saying anything. Thus IRC users were unable to see
parts of discussion with at least 5 users missing.

* [Telematrix#28: Replying from Matrix to Telegram doesn't ping the user](https://github.com/SijmenSchoon/telematrix/issues/28)
* [Telematrix#33: Allow configuring bridged user display name format](https://github.com/SijmenSchoon/telematrix/issues/33)
* [Telematrix#36: Mentions bridging](https://github.com/SijmenSchoon/telematrix/issues/36)
* [matrix-appservice-irc#27: Duplicate messages matrix-side (due to distributed IRCds)](https://github.com/matrix-org/matrix-appservice-irc/issues/27)
* [matrix-appserice-irc#413: Allow passwordless commands in rooms?](https://github.com/matrix-org/matrix-appservice-irc/issues/413)
* [matrix-appservice-irc#486: Propagate display name changes to nick changes](https://github.com/matrix-org/matrix-appservice-irc/pull/486)

* * * * *

Issue 2: When Telegram users replied to messages, Telematrix sent the whole
original message to Matrix/IRC.

For Matrix users this wasn't an issue, but the Matrix IRC bridge pastebins
every message that goes over three lines in order to avoid angering IRC ops
and serverside antispam measures.

For example normal message from Telegram user would become this at IRC.

> 2017-09-19 16:30:09+0300  * @Mikaela- sent a long message: Mikaela-_2017-09-19_13:30:08.txt <https://matrix.org/_matrix/media/v1/download/matrix.org/PuaTAbMsMmuboFHpHMuLBruj>

*Where I said Telegram, I meant TeleMatrix, and only noticed this later.*

Telegram users often reply to each other and when half of the discussion
is like this and requires clicking all the time, IRC users simply cannot
follow the discussion. For some reason I got the impression that Matrix
users don't mind if their messages get unreadable for IRC and Telegram
users.

For comparsion, here is how TeleIRC with the current configuration looks
like, a little ugly, but no need to switch apps or click dozens of links.

```
2017-09-19 16:28:03+0300 <#@M1kaela> Typing an example message for my blog post. This is the first line. … This is the second line. … This is the third line.
2017-09-19 16:28:56+0300 <#@oldandwise> @@M1kaela [Typing an example message …], typing an example of reply for your blog,  … you haven't asked but i assumed it may be helpful.  … would it be?
```

*I am using WeeChat script parse_relayed_msg.pl, normal users would see
 the message in the following format:*

* `<T4> <@TelegramUserName> @@OriginalAuthor [Snippet of original message]`

*The double @ is caused by setting username format in TeleIRC config.js to
 start with @ in order to remind users that the @ is necessary to ping
 Telegram users.*

*This is technically not an issue in either associated project, so I cannot
 add issue links.*

* * * * *

Minor(?) technical(?) issues:

* Telegram users appear as separate IRC connections draining resources
  on both matrix.org (running the bridge) and IRC server and freenode
  has expressed being unhappy about idle connections. In case of SailfishOS
  Fan Club this meant 300 additional connections.
    * The Telegram users also cannot be sent private messages and all
      Matrix/IRC users appear as single bot at Telegram, so I don't think
      it's worth it.
* TeleMatrix isn't currently maintained (to be honest, TeleIRC isn't a lot
  more maintained, but it doesn't have this many/serious issues).

Links:

* Freenode's unhappiness:
    * [matrix-appservice-irc#388: Please can we regularly and automatically reap idle-presence connections on all networks](https://github.com/matrix-org/matrix-appservice-irc/issues/388)
    * [matrix-appservice-irc#450: Channels on IRC that contain only matrix users should not be bridged to IRC](https://github.com/matrix-org/matrix-appservice-irc/issues/450)
* BONUS: [TeleMatrix sends all joins/parts to Telegram anoying users](https://github.com/SijmenSchoon/telematrix/issues/13)
    * tchncs.de instance is running modified code with this behaviour
      disabled, I had originally forgotten it from this post.

* * * * *

Proposed solution: Changing the middle protocol from IRC to Telegram as
Matrix didn't work as can be read from this article, so everyone is happy.

Matrix users could use TeleMatrix and IRC users TeleIRC so Matrix users
wouldn't suffer any worse experience than before and I wouldn't need to
type this article.

**ISSUE: Telegram bots won't see messages from other bots**, so Telegram
would see everyone and IRC and Matrix wouldn't see each other.

> 2. Bot admins and bots with privacy mode disabled will receive all
  messages except messages sent by other bots.

> Bots talking to each other could potentially get stuck in unwelcome
  loops. To avoid this, we decided that bots will not be able to see
  messages from other bots regardless of mode.

via [Telegram Bots FAQ](https://core.telegram.org/bots/faq#what-messages-will-my-bot-get) "What messages will my bot get?" and "Why doesn't my bot see
messages from other bots?" on 2017-09-19.
