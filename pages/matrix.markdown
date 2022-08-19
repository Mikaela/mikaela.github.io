---
layout: page
title: '[m]'
navigation: true
permalink: /matrix/
excerpt: "Matrix, a decentralised conversation store"
redirect_from:
  - /matrix.html
---

Just like [IRC](/irc/), *Matrix* has became a part of my social life online. My
room can be found from [my discuss page](/discuss) alongside
some protocol comparison and my main accounts are in [index](/).

I also have a [txt with a list of all my accounts](/txt/matrix.txt) which [has SSH signature](/txt/matrix.txt.sig).

## Matrix-related posts

*Note that this section is manually updated and might be missing some
links.*

* Critique
    * [Inconsistency issues of Element, Element and Element, also privacy concerns]({% post_url blog/2021-08-03-matrix-perfect-privacy-not %})
    * [Without selfhosting a homeserver or even then, Matrix moderation tools rely on security through obscurity]({% post_url blog/2021-12-05-matrix-community-abuse-security-by-obscurity %})
* [A couple of words on protocols (on the Discuss page)](/discuss.html#a-couple-of-words-on-protocols)

## Questions and Answers

### Why so many accounts?

In my opinion it's preferable to have multiple accounts on different homeservers for ensuring decentralisation instead of having a single authority in power and being able to issue commands from multiple servers in case of federation meltdown which multiple rooms experienced during the period of room version 9 before homeserver software started to nag on unintentionally open registration refusing to start.

### Why do you use Matrix URI scheme instead of matrix.to?

I dislike matrix.to as a concept. It's a centralized service on decentralized protocol and in my opinion it shows lack of self-esteem on Matrix side considering neither XMPP or IRC require something like it, both of those trust being known or handled appropiately.

### What are ghost and puppets?

They are related to bringing Matrix to other protocols or vice versa.

* A ghost is a Matrix account on another protocol like IRC or XMPP (controlled from Matrix).
* A puppet is the opposite, a Matrix account controlled from another protocol such as IRC or XMPP (the controller/puppetmaster being the user there).
* A double-puppet is when you are using both protocols and have connected them to each other such as a message from Discord appears as your real Matrix account and message from Matrixx appears as your real Discord account instead of something virtual only existing due to the bridge.

### Which client do you recommend?

The one that fits your needs. Personally I mix-and-match:

* FluffyChat on mobile
  * I am a Finnish translator and moderator. It does multiple accounts.
* hydrogen.element.io PWA mainly on mobile, sometimes on desktop
  * It's the only Matrix client that is yet to log me out randomly, very stable, multiple account support and so far the only Matrix client running on Nokia 1 (TA-1047).
* develop.element.io / Element flatpak on desktop
  * `/devtools` is essential (see my critiques), and they don't support Fedora.
* Nheko nightly flatpak on desktop
  * I am a Finnish translator, it's actually the most Spec-complete client in my experience without long delays before something becomes supported and it's lightweight probably for being a native app instead of Electron.

### Which homeserver do you recommend?

I am hesistant to recommend any. Finnish users may be interested in the [Linux.fi wiki listing](https://www.linux.fi/wiki/Matrix), everyone else may be served by [joinmatrix.org listing](https://joinmatrix.org/servers/).

### Why don't you run your own?

As can be read between the lines from my critiques, I don't consider any homeserver to be in the state that it's either safe to run legally or lightweight enough or not require constant maintenance as opposed to IRC which I do selfhost.

The world situation in general discourages me from anything as heavy.

### Why cannot I see history in your Matrix rooms?

Matrix doesn't support self-destructing messages or message expiry in general, so
I don't feel comfortable with world-readable logs (which would easily end to
search engines forever).

If you need to see something in the backlog, I suggest
using IRC (IRC@Etro or PirateIRC especially) or XMPP which each store messages
only for 7 days (Ergo default) or some months (Prosody default) on a single server.

### I am told that I should Matrixify my IRC channel, what does that mean?

You are likely using IRCnet and I am sorry that you have to deal with this raider group. It means some mix of:

* setting a Matrix avatar to the room
* removing the `#` from the name of the Matrix room
* setting a main alias to the Matrix room that doesn't contain the IRC network's name
* bridging to Matrix in a way that Matrix user (that may not be you) has full power over the room, potentially also over the bridge bot
  * be careful if you are told to answer a bot `yes` in a `/query`!

### Why should I use Matrix instead of IRC?

No reason, if IRC suits you better than Matrix. As I have said before, I find
maintaining IRC easier. IRC also tends to work better for me in poor network conditions
and with [IRCv3](https://ircv3.net/) specifications and implemented draft proposals,
it can be very pleasant modern experience without the issues that come from federation.

There is a usecase for every tool and while federation is important feature
in general I am yet to miss it in IRC.

I keep mentioning Ergo IRCd, which [scales](https://github.com/ergochat/ergo/blob/master/docs/MANUAL.md#scalability), has serverside history and integrated bouncer
feature so it's just a matter of adding it to your IRC client alongside your
SASL credentials and you will receive your offline messages whenever you
reconnect. Ergo also supports `RELAYMSG` making messages from other protocols
seem more native to read and many graphical IRC clients even provide integrated
image uploading support.

[Pirate Party of Finland](https://piraattipuolue.fi/en) considers Ergo-based [PirateIRC](https://pirateirc.net/)
and [its webchat](https://webchat.pirateirc.net/) a reasonable fallback should we have to leave other protocols
or they would be unusable otherwise.

### Why isn't Pirate Party of Finland using Matrix?

This goes a bit past my personal Q&A, but we are using it kind of as a "tech demo".
However it cannot currently mature past that as:

* we don't have people interested in Matrix (obviously excluding me).
* we don't have resources for hosting a Matrix homeserver, while we had IRC before we were founded.
* moderation tools are so bad it's only me dealing with them (see critiques near top of the page).
* [Matrix flagship clients, Element Web, Element Android and Element iOS don't support knocking](https://github.com/vector-im/element-meta/issues/43)
  which has been supported by Matrix Specification since September 2021 or so meaning
  users of those aren't able to request access to our rooms.

### So do you wish Matrix to fail?

No, I have been using countless of hours at writing these critiques and performing "quality assurance"/testing,
localizing clients to Finnish, providing support on their rooms for users of those clients, writing a Matrix
Spec Change proposal (that was merged), having coauthored another, writing or contributing documentation in two languages
and whatever else I have been doing since 2016.

Matrix has a place in my heart, just as IRC and XMPP and while none of the three are perfect, I wish for the issues
get resolved and the fighting between them to end and I am tired of the "stop having fun" or "you are worse person for still using deprecated IRC"
or "I wish IRC/XMPP just died already as it's so old" or whatever attitude I see amongst certain Matrix user/enthustiastic groups.

* * * * *

*The lucky Matrix number is `{{site.matrixLatestRoomVersion}}`, but do [consult the Spec for that](https://spec.matrix.org/latest/rooms/#complete-list-of-room-versions) and definitely ask `!servers upgrade {{site.matrixLatestRoomVersion}}` from [Version Checker](matrix:u/version:maunium.net) or [Fluff Generator](matrix:u/+:jae.fi) or [their siblings](https://github.com/maubot/rsvc).*
