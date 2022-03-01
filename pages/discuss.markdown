---
title: Discuss
layout: page
permalink: /discuss.html
redirect_from: /discuss/index.html
excerpt: "Introduction to my public instant messaging chats"
navigation: true
---

# Discuss

I have a [PUBLICLY LOGGED](https://view.matrix.org/room/!xFKkXCpcnEwgBEQBFt:matrix.org/) instant messaging chatroom for comments to my
blog and other things I do. They are connected together by [Matterbridge](https://github.com/42wim/matterbridge/#matterbridge).

As [Code of Conduct, Contributor Covenant applies](https://www.contributor-covenant.org/version/2/0/code_of_conduct/).<br>
I don't see a reason for forking it as this community is forming around me
and my website while I would have separate community for any actual Open
Source Software project if I begun any that grew bigger.

As for languages; English is preferred due to majority of the discussion
participants speaking it, but Finnish and Esperanto are also fine.<br> I sadly
don't consider myself capable of holding a discussion in other languages, but
I do hope to be able to grow this list in the future.

* IRC@Etro, [`#mikaela.info`](ircs://etro.mikaela.info:6697/#mikaela.info) *[onion](irc://otzmigofmchtadpek223bkmrzqoa6mmvhmr5dxqurcrtwalizfibuxid.onion:6667/#mikaela.info)*,
  my selfhosted IRC server.
  * [(Recommended) Webchat](https://irc.etro.mikaela.info/#mikaela.info)
* [ErgoChat], [`#mikaela.info`](ircs://irc.ergo.chat:6697/#mikaela.info), home of the Ergo IRCd
  that I and most of this list happen to run.
  * [Gamja webchat](https://ergo.chat/gamja/#mikaela.info), [KiwiIRC webchat](https://ergo.chat/kiwi/#mikaela.info)
* [LiberaChat], [`#mikaela.info`](ircs://irc.libera.chat:6697/#mikaela.info)
  * [Gamja webchat](https://web.libera.chat/gamja/#mikaela.info), [KiwiIRC webchat](https://web.libera.chat/#mikaela.info). *Warning: Libera.Chat has no message history*
* [Matrix], [`#mikaela.info:matrix.org`](matrix:roomid/xFKkXCpcnEwgBEQBFt:matrix.org?action=join&via=matrix.org&via=tedomum.net&via=the-apothecary.club),
  a decentralised conversation store.
  * [Convene webchat](https://letsconvene.im/app/#/join/%23mikaela.info:matrix.org), [PUBLIC LOG](https://view.matrix.org/room/!xFKkXCpcnEwgBEQBFt:matrix.org/)
* [Telegram], [invite link](https://t.me/joinchat/OEuthjzmg60xNzA0) a
  popular instant messenger with open source clients.
* [Twitch], [Ciblia](https://twitch.tv/Ciblia), a propietary game streaming
  platform.
  * Expect my streaming to happen in [mikaela@libremedia.video](https://libremedia.video/accounts/mikaela/)
    (PeerTube) instead.
* [XMPP], [`mikaela.info@conference.blesmrt.net`](xmpp:mikaela.info@conference.blesmrt.net?join),
  a federated chat protocol.

[ErgoChat]:https://ergo.chat/
[LiberaChat]:https://libera.chat/
[NixNet IRC]:https://docs.nixnet.services/IRC
[Matrix]:https://matrix.org/
[Telegram]:https://telegram.org/
[Twitch]:https://twitch.tv/
[XMPP]:https://xmpp.org/

* * * * *

## A couple of words on protocols

* IRC was invented in 1988 and regardless of developing integrated message
  storage since then, it's still trivial to setup and runs well on a toaster. My personal
  IRC history begins in 2010 as user and since then I have also opered
  mostly on Charybdis+Atheme and nowadays on a couple of Ergos.
* XMPP runs on a bit more powerful toaster and the servers talk to each other
  without prior approval, it was originally introduced in 1999. I don't have
  a record on when I begun using it as all multi-protocol chat apps that were
  common even before 2010 supported it. I haven't had a need or desire to selfhost.
* Telegram was introduced in 2013 and is a popular instant messenger with
  many open source clients (not server) also on minority platforms (by third
  parties). It's favoured by many for stickers and ease-to-use, while that
  comes with concern on security and privacy.
* Matrix was introduced in 2014 and I started using it in 2016. Many of the
  client and server implementations are heavy, especially on server side requiring what to outside looks
  like a constant maintenance to deal with the implementation performance issues,
  I am not interested in even trying until the situation significantly improves.

## And on transports, relays and bridges

* One of the marketing points of XMPP was to connect to other protocols by
  means of transports. They plug into a XMPP server and can be provided either
  by yours or be open for other XMPP servers.
* The word relay is often used on bots which copy messages from one protocol/network
  and paste (or more simply said relay) it to another. They aren't transparent and thus the
  messages from them appear to be coming from bots beginning with the message
  sender instead of being completely transparent. This is what is commonly
  used on IRC to connect to other IRC networks or protocols.
  * Matterbridge regardless of the name acts like a relay. Like IRC and XMPP,
    it also runs on a toaster requiring only [the binary](https://github.com/42wim/matterbridge/releases)
    and a [config file](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/irc/matterbridge/matterbridge-example.toml)
    being trivial to setup anywhere quickly or move around.
  * [Recent IRC development allows (RELAYMSG)](https://github.com/ircv3/ircv3-specifications/pull/417)
    allows relays to be transparent making messages appear from users outside
    of the channel that don't actually exist. This is similar to Discord webhooks
    (that Matterbridge also supports) and Matrix Discord bridge.
  * Common complaint from Matrix users is that they look ugly, but as shown
    by IRC and Discord, that doesn't have to be the case
    [and I hope Matrix will fix their issue allowing low-budget "toasterbridges"](https://github.com/matrix-org/matrix-doc/issues/3222).
* Bridges are popularised by Matrix and are almost XMPP transports. However
  while XMPP transports connect to the other protocol, bridges attempt to
  copy everything on both sides so Matrix users see each other directly instead
  of through the transport on the other side and on the other side of open protocols
  Matrix users can be interacted with as if they were native to it.
  * Unlike XMPP, the bridges also tend to be heavy and require a full homeserver
    setup. The IRC bridge also generally requires blessing from the IRC network
    and while some public bridges exist, they move the control away from you
    hijacking the room to their rules and often have performance trouble
    compared to "local toaster matterbridge".

