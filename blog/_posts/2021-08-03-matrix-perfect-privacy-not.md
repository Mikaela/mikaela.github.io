---
layout: post
title: "Inconsistency and privacy issues with Element, Matrix and Synapse"
category: [english]
tags: [english, matrix, privacy]
redirect_from:
  - /matrix.html
  - /element.html
lang: en
robots: noai
---

_Having used Matrix since 2016 and hearing about its greatness without any
issues so much, I wish to correct some misconceptions. I attempt to provide
citations for everything and not name any other solution. I cannot discuss
administrating experience due to not having any with Matrix personally._

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Element, what Element?](#element-what-element)
- [You mentioned privacy?](#you-mentioned-privacy)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Element, what Element?

Element is the defacto Matrix client. If you wish to get into Matrix, you
will likely hear the advice to install Element or use it on the web.

It comes with two problems:

- you will likely register your account on the `matrix.org` homeserver and
  later hear that you made a mistake in using it as it's overloaded and you
  should instead use some other homeserver which would also be good for
  healthy federation, but the interface doesn't suggest or offer you any
  other servers.
  - maybe in the future [your account will be decentralized and that won't matter](https://github.com/matrix-org/matrix-spec/issues/246)?
- if you happen to be like me and use both Element Web and Element iOS, you
  will notice they are wildly inconsistent. I cannot comment on Element
  Android as my phone (Nokia 1 / TA-1047) is too weak powered for pleasant
  Matrix experience and I don't use it much.

Comparing the later two platforms, I imagine you will hit some of these
problems sooner or later:

- <s>You see a link in the channel. If you were using Element Web or
  possibly even Element Android you would immediately know what it was
  about. However you use <a href="https://github.com/vector-im/element-ios/issues/888">Element iOS that never got URL preview support!</a></s>
- You hear of interesting room on another room and you wish to join it. You
  touch the name wishing to get into there? What happens instead? You will get
  an error message [cannot rejoin an empty room](https://github.com/vector-im/element-ios/issues/1066).
  - I hope that doesn't annoy you and you wish to hear the workaround of
    running `/join #room:example.net` by hand instead.
- This may be a bit more rare one, but if you share rooms with bots, you may
  notice that on Element Web they are more gray than people. [Element iOS just never got messages from bots being rendered differently](https://github.com/vector-im/element-ios/issues/882).
- I may again be a bit weird, but I wish to have [timestamps for all messages visible all the time](https://github.com/vector-im/element-ios/issues/524),
  but Element says no. They exist on Web, not on iOS. Same if you [wanted to see seconds](https://github.com/vector-im/element-ios/issues/3901)
- <s>I almost forgot, but the <a href="https://element.io/blog/spaces-the-next-frontier/">new spaces</a>
  just <a href="https://github.com/vector-im/element-ios/issues?q=label%3AA-Spaces+">don't exist on iOS</a>,
  should you attempt to join or be invited to one, you will get a banner
  saying that they aren't implemented yet and you cannot accept or reject
  the invite unless you open Element Web to do that.</s>
- <s>Another issue I am editing in hours later is pills, when you mention
  someone on Element (Web), or someone else mentions someone, there is a clear
  pill shape around their name and it can be clicked to get to their profile,
  <a href="https://github.com/vector-im/element-ios/issues/3526">but not on Element (iOS)</a></s>

And that is probably enough of annoyances with Element iOS, I hope the
situation will improve in foreseeable future there due to
[Matrix exploding with Element securing $30M funding to revolutionise the app’s usability, build out major new features, expand in the enterprise market and take Matrix fully mainstream!](https://element.io/blog/element-raises-30m-as-matrix-explodes/)

2022-01-29: As seen from the strikethrough, two of six points on my list have
been resolved, however today [FluffyChat released version 1.2.0 featuring stories](https://ko-fi.com/post/Whats-new-in-FluffyChat-1-2-0-Z8Z09LEO7).
At the time of writing [stories are a draft Matrix spec proposal](https://github.com/matrix-org/matrix-spec-proposals/pull/3588)
that in incompatible clients (such as Element Web and Element Android) appear as
read-only rooms, however [Element iOS hides them completely with the exception of notifications that cannot be acknowledged](https://github.com/vector-im/element-ios/issues/5455).

## You mentioned privacy?

Yes, privacy is a big reason why Matrix is advertised and the lack of it is
a fact you agree to by using Matrix or getting bridged to Matrix (which is
out of scope for this blog post as it involves other protocols too much,
whether you know Matrix or not).

As with the internet in general, the most safe assumption is that once you
post something it's there forever. It may be encrypted in a private Matrix
room or it may be public in a public room, but it will most likely be there
forever.

Matrix does support [history retention if you are advanced enough to enable it](https://brendan.abolivier.bzh/matrix-retention-policies/),
this assumes [your homeserver explicitly enables it as it's not default](https://github.com/matrix-org/synapse/blob/ba5287f5e8be150551824493b3ad685dde00a543/docs/sample_config.yaml#L481-L484)
and as your room is hosted on every homeserver that has users in your room,
have a single homeserver that hasn't explicitly enabled it, or doesn't otherwise support it, and the room
history never goes away. Executing `/upgraderoom {{site.matrixLatestRoomVersion}}` or any other version [will also remove the event](https://github.com/matrix-org/synapse/issues/11279).

**_WARNING!_** [Enabling history **_retention_** may **_corrupt your Synapse database_**](https://github.com/matrix-org/synapse/issues/13476)
and [will make your room **_unrejoinable_** if a homeserver leaves it for long enough](https://github.com/matrix-org/synapse/issues/11448).
Upgrading the room will fix that, but it's just a fancy
way of saying "discontinue the old room and add a note saying where the new
room is".

**_WARNING! Always before executing `/upgraderoom` check that everyone in your room has a recent Matrix server that supports your target room version, otherwise you may lock some of your users out._** For example `/invite @version:maunium.net` and once it joins, say
`!servers upgrade {{site.matrixLatestRoomVersion}}` to get a list of servers that don't support room version {{site.matrixLatestRoomVersion}} yet.

In case there isn't enough confusion, retention shouldn't be confused with actual [self-destructing/disappearing messages](https://github.com/vector-im/element-meta/discussions/682).

_Technical note: sorry about calling <s>reference</s> homeserver implementation by the <s>matrix.org team</s> New Vector Ltd issue
as a Matrix protocol issue._

You may say that this requires you to trust the homeserver admin anyway and
that is true, I wish people could trust each other and even if someone
modified their Synapse to never remove anything or had a client logging
everything, they wouldn't throw that history to people who don't want to see it.

Speaking of removals, once you remove a message [it will be stored in the database for server admins for 7 days](https://github.com/matrix-org/synapse/blob/ba5287f5e8be150551824493b3ad685dde00a543/docs/sample_config.yaml#L456-L461) which is fine for me, but if [this message happened to be media instead of text, it would never be removed](https://github.com/matrix-org/synapse/issues/1263) and should you have copied link to the media, it would keep on working
and if you changed the homeserver address in your copied link, it would still
keep on working. Is this something you expect from a private protocol? I don't, or I didn't before getting familiar with Matrix. There is also an [alternative proposal about this](https://github.com/matrix-org/matrix-spec-proposals/pull/2228).

_By the way Synapse is still a <s>reference</s> homeserver implementation by the <s>matrix.org team</s> New Vector Ltd and not
Matrix protocol itself, so sorry about that for anyone technical reading this._

Do you use different names in different contexts? Like your Full Name in
professional context, a nickname somewhere else and maybe what will be your
real name after gender transitioning or even have a diffferent name in direct
chat with your partner? [Congratulations, whatever is your latest room-specific name may now be public (especially when the room federates and has users from different homeservers), same with your potential avatar](https://github.com/matrix-org/synapse/issues/5677).

_Synapse didn't become Matrix protocol itself by the way, there are still other implementations!_

This issue does have a potential solution [an API planned for room specific details (2015)](https://github.com/matrix-org/matrix-spec/issues/103)
and what I am hopeful about in the future <a href="https://github.com/matrix-org/matrix-spec-proposals/pull/3189">open pull request specification for space specific profiles</a>,
unless it just moves the issue to a different level. Which is [cancelled or delayed for an undefined time period](https://github.com/matrix-org/matrix-spec-proposals/pull/3189#issuecomment-905761797),
["until extensible profiles and sync v3 become more concrete"](https://github.com/matrix-org/matrix-spec-proposals/pull/1769)

2021-08-27: I don't know how serious issue this may be for you, but any emoji/
[reactions made on end-to-end-encrypted messages aren't encrypted](https://github.com/matrix-org/matrix-spec/issues/660).
It's fun in [E2EE test rooms](matrix:r/megolm:matrix.org?action=join) when you cannot read the other party, but
regardless see their reactions on your messages.

2022-01-10: In E2EE features, when you are invited to E2EE rooms, you generally
cannot see the previously encrypted messages. However when those are encrypted,
viewing [message source will reveal the older messages in body and formatted_body](https://github.com/matrix-org/matrix-spec/issues/368)
which [have been under deprecating plans since 2020-09-19, maybe in the future...](https://github.com/matrix-org/matrix-spec-proposals/pull/2781)

I think that was my biggest complaints on Matrix (or Synapse itself), that
don't involve other protocols and I have personally experienced. My notes
for this blog post include [Elements not having real contacts list](https://github.com/vector-im/element-web/issues/4488),
or in other words [Matrix not having canonical direct messages](https://github.com/matrix-org/matrix-spec-proposals/pull/2199),
but they didn't occur to me and I guess it has been doing fine enough without
implementing those.

If any of these issues is a dealbreaker for you or you don't want to hear
a bad word about Matrix, you may be wondering what is the perfect flawless
solution? I don't know, personally I don't think it may not exist and I don't
want to enter discussing compromise solutions or other protocols in this post
at all. This list also wasn't complete on what issues I have with Matrix
(and so close to the end I don't want to dig for references) and I have
specific wishes that no protocol offers (at least not consistently,
such as using multiple names and knowing which name I am using where or managing
50 different rooms with same operators everywhere, but [that may get answered by Matrix](https://github.com/matrix-org/matrix-spec-proposals/pull/2962).)

You may wonder was it nice of me to write so negative blog post. I find it
therapeutic as [I have had an issue to me to write this since 2021-01-15](https://github.com/Mikaela/mikaela.github.io/issues/230)
and now I have finally done it, a bit over half an year late,
spending a bit over an hour to it and I feel better after getting these problems
out of my head and maybe they weren't so big after all. Up to you.

Lastly I apologise to you-know-who-you-are for not titling this post "undefined",
or even M.UNKNOWN (which I would have imagined to be one of the issues for me to write about, but
I don't remember seeing it in a long time, so maybe the situation is improving.

Feedback? I have [a discussion room in many apps](https://aminda.eu/discuss),
or you can find me from a lot of the linked issues and there is also [issue tracker for this site](https://github.com/Mikaela/mikaela.github.io/issues).

- [Changelog, also known as git commit history](https://github.com/Mikaela/mikaela.github.io/commits/master/blog/_posts/2021-08-03-matrix-perfect-privacy-not.md)
  - Clicksaver for edits done on day of publishing: I have fixed a typo resulting one
    link being a 404 error, added mention on Element (iOS) not doing URL previews
    and later added pills not being supported by it either. I didn't consider
    [outdated emoji picker](https://github.com/vector-im/element-ios/issues/4654)
    worth mentioning here, but it came up in the same context as URL previews
    and wasn't reported to upstream, so I might as well mention it in this part.
  - 2021-08-27: Noted cancellation/delay of space-specific profiles,
    mention emoji/reactions not being encrypted at all, added link to E2EE
    test room and this list item.
  - 2021-09-09: It's brought to my attention that URL previews exist on Element
    iOS! It's 23.15 in Finland so I only strikethrough this issue.
  - 2022-01-10: I am told that [Synapse is not a reference homeserver implementation since 2021-10-06](https://github.com/matrix-org/synapse/pull/10971#event-5418418970)
    so I have strikethrouged that and changed it to "by the matrix.org team".
    - Typing this it looks like this blogpost predates the demote of Synapse, but
      I wish to stay up-to-date with this post.
    - I am also noting that `m.room.retention` doesn't persist across room upgrades
      and linking to the Element-meta issue on self-destructing/disappearing messages
      to not be confused with retention.
    - Oh and reply fallbacks leaking previously encrypted messages too.
  - 2022-05-31: I noticed that Element iOS has gotten pills. Strikethrough time.
  - 2023-07-05: I added warning that room retention may cause database
    corruption and make room unrejoinable.
  - 2024-01-21: I performed small wording corrections such as Synapse being by
    New Vector Ltd (according to bottom of [element.io](https://element.io)
    since [a few months ago](https://element.io/blog/element-to-adopt-agplv3/)
    and clarified some language.
