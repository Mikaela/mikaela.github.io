---
title: Discuss
layout: page
permalink: /discuss.html
redirect_from: /discuss/index.html
excerpt: "Introduction to my public instant messaging chats"
navigation: true
---

I have a public instant messaging chatroom for comments to my
blog and other things I do. They are connected together by [Matterbridge](https://github.com/42wim/matterbridge/#matterbridge).

---

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Rules](#rules)
- [Languages](#languages)
- [The links](#the-links)
- [A couple of words on protocols](#a-couple-of-words-on-protocols)
- [And on transports, relays and bridges](#and-on-transports-relays-and-bridges)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

---

## Rules

As [Code of Conduct, Contributor Covenant applies](https://www.contributor-covenant.org/version/2/0/code_of_conduct/).<br>
I don't see a reason for forking it as this community is forming around me
and my website while I would have separate community for any actual Open
Source Software project if I begun any that grew bigger. See also
[my Matrix page on etiquette](/matrix/index.html#is-there-any-kind-of-matrix-etiquette-i-should-know-about).

## Languages

As for languages; English is preferred due to majority of the discussion
participants speaking it, but Finnish and Esperanto are also fine.<br> I sadly
don't consider myself capable of holding a discussion in other languages, but
I do hope to be able to grow this list in the future.

## The links

- IRC@Etro, [`#mikaela.info`](ircs://etro.mikaela.info:6697/#mikaela.info)
  my selfhosted IRC server.
  - [(Recommended) Gamja webchat](https://irc.etro.mikaela.info/#mikaela.info)
  - `MapAddress etro.mikaela.info otzmigofmchtadpek223bkmrzqoa6mmvhmr5dxqurcrtwalizfibuxid.onion`
- [LiberaChat], [`#mikaela.info`](ircs://irc.libera.chat:6697/#mikaela.info)
  - [Gamja webchat](https://web.libera.chat/gamja/#mikaela.info), [KiwiIRC webchat](https://web.libera.chat/#mikaela.info). _Warning: Libera.Chat has no message history_
  - `MapAddress palladium.libera.chat libera75jm6of4wxpxt4aynol3xjmbtxgfyjpu34ss4d7r7q2v5zrpyd.onion`
- [Matrix], [`#mikaela.info:matrix.org`](matrix:roomid/ruWhXaXgrPjaSSecvb:matrix.org?action=join&via=matrix.org&via=tedomum.net&via=the-apothecary.club),
  a decentralised conversation store.
  - [Convene webchat](https://letsconvene.im/app/#/join/%23mikaela.info:matrix.org)
- [PirateIRC], [`#mikaela.info`](ircs://irc.pirateirc.net:6697/#mikaela.info)
  - [Gamja webchat](https://webchat.pirateirc.net/)
  - `MapAddress irc.pirateirc.net cbmtec5xuhpjwjq245kpp5jk2wij63ydgu5vwbxvdamzibfubc5uzaqd.onion`
- [Telegram], [invite link](https://t.me/joinchat/OEuthjzmg60xNzA0) a
  popular instant messenger with open source clients.
- [Twitch], [Ciblia](https://twitch.tv/Ciblia), a propietary game streaming
  platform.
  - Expect my streaming to happen in [mikaela@libremedia.video](https://libremedia.video/accounts/mikaela/)
    (PeerTube) instead.
- [XMPP], [`mikaela.info@conference.blesmrt.net`](xmpp:mikaela.info@conference.blesmrt.net?join),
  a federated chat protocol.

[ergochat]: https://ergo.chat/
[liberachat]: https://libera.chat/
[nixnet irc]: https://docs.nixnet.services/IRC
[matrix]: https://matrix.org/
[pirateirc]: https://pirateirc.net/
[telegram]: https://telegram.org/
[twitch]: https://twitch.tv/
[xmpp]: https://xmpp.org/

**_NOTICE ON LOG AVAILABILITY!_** The logging and history visiblity varies by protocol and thus
users joining in the future could see messages up to one year or longer in the
past.

## A couple of words on protocols

- _IRC_ was invented in 1988 and regardless of developing integrated message
  storage since then, it's still _trivial to setup_ and runs well on _a toaster_.
  _IRC servers_ are generally _[easy to enable Tor support on](https://github.com/ergochat/ergo/blob/master/docs/MANUAL.md#tor)_ and _IRC clients_
  widely come with _[proxy settings](https://hexchat.readthedocs.io/en/latest/tips.html#tor)_ where _[Tor can be enabled](https://weechat.org/files/doc/stable/weechat_user.en.html#irc_tor_sasl)_. My personal
  _IRC_ history begins in 2010 as user and since then I have also opered
  mostly on _Charybdis+Atheme_ and nowadays on a couple of _Ergos_.
- _XMPP_ runs on _a bit more powerful toaster_ and the servers talk to each other
  without prior approval, it was originally introduced in 1999. I don't have
  a record on when I begun using it as _all multi-protocol chat apps_ that were
  common even before 2010 supported it. I haven't had a need or desire to _selfhost_.
- _Telegram_ was introduced in 2013 and is a popular _instant messenger_ with
  many _open source clients (not server)_ also on minority platforms (by third
  parties). It's favoured by many for stickers and ease-to-use, while that
  comes with _concern on security and privacy_.
- _Matrix_ was introduced in 2014 and I started using it in 2016. Many of the
  _client and server implementations are heavy_, _especially on server side_ requiring what to outside looks
  like _a constant maintenance_ to deal with the _implementation performance issues_,
  _I am not interested in even trying to selfhost a Matrix (home)server and bridges
  until the situation significantly improves_. _[Matrix clients also seldom support connecting through Tor easily](https://github.com/vector-im/element-meta/issues/200)_,
  while the _[Synapse server by Matrix.org team doesn't support connecting](https://github.com/matrix-org/synapse/issues/5152) through [I2P or Tor](https://github.com/matrix-org/synapse/issues/5455) at [all](https://github.com/matrix-org/synapse/issues/7088)_.
  - Exception: [Hydrogen](https://hydrogen.element.io) ([GitHub](https://github.com/vector-im/hydrogen-web))
    is the only client I have encountered that works well on Nokia 1 TA-1047
    or in other words passes the so-called toaster test. It does self-describe
    as _A minimal Matrix chat client, focused on performance, offline
    functionality, and broad browser support_, which it redeems.

## And on transports, relays and bridges

- One of the marketing points of _XMPP_ was to connect to other protocols by
  means of transports. They plug into a _XMPP server_ and can be provided either
  by yours or be open for other _XMPP servers_.
- The word _relay_ is often used on _bots which copy messages from one protocol/network
  and paste (or more simply said relay) it to another_. They aren't transparent and thus the
  messages from them appear to be coming from bots beginning with the message
  sender instead of being completely transparent. This is what is _commonly
  used on IRC to connect to other IRC networks or protocols_.
  - _Matterbridge regardless of the name acts like a relay. Like IRC and XMPP_,
    it also _runs on a toaster requiring only [the binary](https://github.com/42wim/matterbridge/releases)
    and a [config file](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/irc/matterbridge/matterbridge-example.toml)_
    being trivial to setup anywhere quickly or move around.
  - _[Recent IRC development allows (RELAYMSG)](https://github.com/ircv3/ircv3-specifications/pull/417)_
    allows relays to be transparent making messages appear from users outside
    of the channel that don't actually exist. This is similar to _Discord webhooks
    (that Matterbridge also supports) and Matrix Discord bridge_.
  - Common complaint from _Matrix_ users is that they look ugly, but as shown
    by _IRC and Discord_, that doesn't have to be the case
    _[and I hope Matrix will fix their issue allowing low-budget "toasterbridges"](https://github.com/matrix-org/matrix-spec/issues/840)_.
- _Bridges are popularised by Matrix_ and _are almost XMPP transports_. However
  while _XMPP transports connect to the other protocol, bridges attempt to
  copy everything on both sides_ so _Matrix users_ see each other directly instead
  of through the _transport_ on the other side and on the other side of _open protocols_
  _Matrix users_ can be interacted with as if they were native to it.
  - Unlike _XMPP_, the _bridges also tend to be heavy and require a full homeserver
    setup._ The _IRC bridge also generally requires blessing from the IRC network_
    and while some public bridges exist, they _move the control away from you_
    hijacking the room to _their rules_ and often have _performance trouble
    compared to "local toaster matterbridge"._
