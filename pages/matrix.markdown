---
layout: page
title: '[m]'
navigation: true
permalink: /matrix/
excerpt: "Matrix, a decentralised conversation store"
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

* * * * *

*The lucky Matrix number is `{{site.matrixLatestRoomVersion}}`, but do [consult the Spec for that](https://spec.matrix.org/latest/rooms/#complete-list-of-room-versions) and definitely ask `!servers upgrade {{site.matrixLatestRoomVersion}}` from [Version Checker](matrix:u/version:maunium.net) or [Fluff Generator](matrix:u/+:jae.fi) or [their siblings](https://github.com/maubot/rsvc).*
