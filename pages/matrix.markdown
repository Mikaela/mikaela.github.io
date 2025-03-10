---
layout: page
title: "[m]"
navigation: true
permalink: /matrix/
excerpt: "Matrix, a decentralised conversation store"
redirect_from:
  - /matrix.html
lang: en
robots: noai
---

Just like [IRC](/irc/), _Matrix_ has became a part of my social life online. My
room can be found from [my discuss page](/discuss) alongside some protocol
comparison and my main accounts are in [index](/).

I also have a [txt with a list of all my accounts](/txt/matrix.txt) which
[has SSH signature](/txt/matrix.txt.sig). Some of my accounts are also on my
[Keyoxide ASP profile](https://keyoxide.org/aspe:keyoxide.org:LGWNUB7QG4M326FXXBH5Z6PLVY).

[Questions and Answers about Matrix](#questions--answers)

---

## Matrix-related posts

_Note that this section is manually updated and might be missing some links._

- Critique
  - [Inconsistency issues of Element, Element and Element, also privacy
    concerns]({% post_url blog/2021-08-03-matrix-perfect-privacy-not %})
  - [Without selfhosting a homeserver or even then, Matrix moderation tools rely
    on security through
    obscurity]({% post_url blog/2021-12-05-matrix-community-abuse-security-by-obscurity %})
- [A couple of words on protocols (on the Discuss page)](/discuss.html#a-couple-of-words-on-protocols)

## Questions & Answers

<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Where else can I read about Matrix?](#where-else-can-i-read-about-matrix)
- [Is there any kind of Matrix etiquette I should know about?](#is-there-any-kind-of-matrix-etiquette-i-should-know-about)
- [How can I help gender minorities on Matrix?](#how-can-i-help-gender-minorities-on-matrix)
- [How do you do custom not-emoji reactions?](#how-do-you-do-custom-not-emoji-reactions)
- [What are ghost and puppets?](#what-are-ghost-and-puppets)
- [What does the public history visibility mean? I don't want to appear in search engines](#what-does-the-public-history-visibility-mean-i-dont-want-to-appear-in-search-engines)
- [Can I see who is in any specific room without being there?](#can-i-see-who-is-in-any-specific-room-without-being-there)
- [How do I deal with NSFL spam?](#how-do-i-deal-with-nsfl-spam)
  - [Disabling image previews](#disabling-image-previews)
    - [Element Web/Desktop](#element-webdesktop)
    - [ElementX](#elementx)
    - [Nheko](#nheko)
- [How can I remove my messages automatically like on Signal, WhatsApp, Telegram and everything else?](#how-can-i-remove-my-messages-automatically-like-on-signal-whatsapp-telegram-and-everything-else)
  - [How can I remove my messages automatically on Nheko?](#how-can-i-remove-my-messages-automatically-on-nheko)
  - [How can I install Nheko nightly?](#how-can-i-install-nheko-nightly)
- [What are state resets?](#what-are-state-resets)
  - [How about DAG splits?](#how-about-dag-splits)
- [Can I have a non-federated room?](#can-i-have-a-non-federated-room)
- [What exactly is room upgrading?](#what-exactly-is-room-upgrading)
- [How should I configure my Matrix room?](#how-should-i-configure-my-matrix-room)
- [What are these idlekicks for inactivity, why are they for?](#what-are-these-idlekicks-for-inactivity-why-are-they-for)
  - [But the relaybots look so ugly](#but-the-relaybots-look-so-ugly)
- [I am told that I should Matrixify my IRC channel, what does that mean?](#i-am-told-that-i-should-matrixify-my-irc-channel-what-does-that-mean)
- [Why should I use Matrix instead of IRC?](#why-should-i-use-matrix-instead-of-irc)
  - [Why isn't Pirate Party of Finland using Matrix?](#why-isnt-pirate-party-of-finland-using-matrix)
- [I don't currently want to touch Matrix, but I am seeing abuse from there, what can I do?](#i-dont-currently-want-to-touch-matrix-but-i-am-seeing-abuse-from-there-what-can-i-do)
  - [I fear someone has said yes](#i-fear-someone-has-said-yes)
    - [That doesn't help me](#that-doesnt-help-me)
- [Personal questions](#personal-questions)
  - [Why so many accounts?](#why-so-many-accounts)
    - [Brief history of my experiences with dead homeservers](#brief-history-of-my-experiences-with-dead-homeservers)
  - [Why do you use Matrix URI scheme instead of matrix.to?](#why-do-you-use-matrix-uri-scheme-instead-of-matrixto)
  - [Why does one of your accounts have capital letter in the username?](#why-does-one-of-your-accounts-have-capital-letter-in-the-username)
  - [Which client do you recommend?](#which-client-do-you-recommend)
  - [Are there any spaces or rooms you recommend?](#are-there-any-spaces-or-rooms-you-recommend)
  - [Which homeserver do you recommend?](#which-homeserver-do-you-recommend)
  - [Why don't you run your own?](#why-dont-you-run-your-own)
  - [Why cannot I see history in your Matrix rooms?](#why-cannot-i-see-history-in-your-matrix-rooms)
  - [So do you wish Matrix to fail?](#so-do-you-wish-matrix-to-fail)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->

### Where else can I read about Matrix?

- [Matrix.org](https://matrix.org/) is the official website.
- [My gist repository also has notes on Matrix, mostly /devtools related ones](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/matrix),
  - PPFI also has
    [a couple of Matrix files](https://git.piraattipuolue.fi/Pikaviestimet/Pikaviestimet/src/branch/master/matrix),
    ([GitHub mirror](https://github.com/piraattipuolue/pikaviestimet)).
    <!-- and [PPFI wiki page has an article](https://wiki.piraattipuolue.fi/Matrix) ([waybackmachine](https://web.archive.org/web/20230000000000*/https://wiki.piraattipuolue.fi/Matrix)).-->
    _Note that they are in Finnish_.
- This site has random assortment of Matrix details around.
  - [txt/matrix.txt](/txt/matrix.txt)
  - [n/matrixspoilers](/n/matrixspoilers.html) has a quick note on spoilers.
- [the-apothecary.club has a Matrix Tips & Tricks page](https://the-apothecary.club/coc/matrix-tricks/)
  - At the time of writing also on using spoilers and custom emotes/stickers.
- Cos has written
  [Matrix tips they don't tell you](https://wordsmith.social/cos/matrix-tips-they-dont-tell-you)
  containing a FAQ, hints and guides.
- [Tune Your Chat](https://tune-your-chat.github.io/ecosystem/tune/) has a
  similar collection of hints to this section.
- [Ubuntu Community: Dealing with spam on Matrix](https://ubuntu.com/community/communications/matrix/spam)

### Is there any kind of Matrix etiquette I should know about?

Not particularly, you will find the same kind of social expectations like
anywhere else, such as at IRC or Telegram. Here are some guidelines:

- Ask for a permission in room before starting a private/direct
  message/discussion with someone.
  - There is commonly an exception when you are contacting a moderator of about
    an issue in the chat and wish to avoid getting attention on yourself.
- When you eventually do message someone, state your business, without leaving
  your first message to a greeting. For more information about this, refer to
  [nohello.net](https://nohello.net/).
- When creating a new room, avoid advertising it in existing rooms. The first
  guideline also applies, refrain from inviting random people from other rooms
  without their permission.
  - If you do perform mass inviting of strangers, you will be considered as a
    spammer and most likely end up on shared banlists resulting a significant
    portition of Matrix communities instantly banning you even if you never
    interacted with them directly.

### How can I help gender minorities on Matrix?

There is an easy universal way on the internet, _put your profiles into your
profile or display name no matter how obvious they may seem to speaker of your
language_. In addition to normalising the behaviour, you may make it more
difficult for hostile users to target us when they assume that only gender
minorities have their pronouns visible.

On Matrix specific work on this, see the following MSCs although pronouns in
display names are going to stay for the foreseeable future.

- [MSC1769: Extensible profiles as rooms](https://github.com/matrix-org/matrix-spec-proposals/pull/1769)
- [MSC3189: Per-room/per-space profiles](https://github.com/matrix-org/matrix-spec-proposals/pull/3189)
- [MSC3755: Member pronouns](https://github.com/matrix-org/matrix-spec-proposals/pull/3755)

The two former would help with keeping English pronouns in English spaces and
the last would introduce its own field for them like can be seen at GitHub
profiles.

### How do you do custom not-emoji reactions?

As long as your client isn't by Element HQ
([element-hq/element-web#19409](https://github.com/element-hq/element-web/issues/19409),
[matrix-org/matrix-react-sdk#6628](https://github.com/matrix-org/matrix-react-sdk/pull/6628#issuecomment-1598708914)),
there are a couple of methods to try:

- Reply to the message you wish to react to with `/react something`. This will
  commonly add a reaction `something` to the message.
  - This works at least within [FluffyChat](https://fluffychat.im),
    [Gomuks](https://docs.mau.fi/gomuks/commands.html#sending-special-messages)
    and
    [Nheko](https://github.com/Nheko-Reborn/nheko/blob/master/man/nheko.1.adoc#custom-messages).
- Hold the message and look at the emoji bar. There may be a `…` allowing for
  free-form reactions.
  - This works at least within
    [Hydrogen](https://github.com/element-hq/hydrogen-web/).
- Does the emoji bar have search? Some allow entering arbitary reactions through
  it offering a `react` button or `react with <your query>` option.
  - This works at least within [Cinny](https://cinny.in) and
    [SchildiChat](https://schildi.chat).

Please note that your
**_[reactions are NOT encrypted](https://github.com/matrix-org/matrix-spec/issues/660)_**
even in encrypted rooms. See also my blog post, [Inconsistency issues of
Element, Element and Element, also privacy
concerns]({% post_url blog/2021-08-03-matrix-perfect-privacy-not %}).

### What are ghost and puppets?

They are related to bridging Matrix with other protocols.

- A ghost is a virtual user account created by a bridge service to represent a
  user from another protocol (controlled by the actions of that user). They
  appear when an entire room is bridged. Some protocols like Discord or Slack
  have no native support for ghosts but can approximate them by changing the
  display name and avatar of the messages sent by the bridge.
- A puppet is a real user account controlled by a bridge service (based on their
  actions on another protocol). They may arise from personal bridging but also
  from room-level bridging when the target protocol does not support ghosts
  (such as IRC). Unlike a ghost, it's possible to log in to a puppet account
  using a normal client application so it's impossible to tell at a glance if
  the controller is a human or a bridge service (however message contents may
  provide hints).
- Double puppeting is when a user bridges their real accounts from two protocols
  so their actions on either side are mirrored on the other.

### What does the public history visibility mean? I don't want to appear in search engines

The public/world-readable history visibility option means exactly what it says,
public even without joining the room. These rooms are accessible to tools such
as [Matrix Static](https://view.matrix.org/) and its successor
[Matrix Viewer](https://github.com/matrix-org/matrix-viewer) and thus their
history is visible in search engines.

Note that as the option name hints, the history visibility option will not apply
to previous messages. Thus if you first make room public and then restrict it to
members only the messages between these two changes are public and new users
will see them. Same if messages are visible to members and then restricted
further.

Another thing worth noting here is that encryption will not prevent new users
from reading the future messages, Matrix will share keys to new joiners to some
extent. For more information refer to
[Matrix Spec issue #1](https://github.com/matrix-org/matrix-spec/issues/1) and
related issues.

### Can I see who is in any specific room without being there?

It depends.

You can try [Matrix Viewer](https://github.com/matrix-org/matrix-viewer/), e.g.
for Matrix HQ
~~[archive.matrix.org/r/matrix:matrix.org](https://archive.matrix.org/r/matrix:matrix.org)
or~~
[matrix-archive.evulid.cc/r/matrix:matrix.org](https://matrix-archive.evulid.cc/r/matrix:matrix.org)
([@evulid-crawler:evulid.cc](matrix:u/evulid-crawler:evulid.cc)) or
[view.gaytix.org/r/matrix:matrix.org](https://view.gaytrix.org/r/matrix:matrix.org)
omitting the leading `#`.

_Until 2023-06-27
[Matrix Foundation considered members-only rooms as public](https://matrix.org/blog/2023/07/what-happened-with-the-archive#a-note-on-shared-history-visibility)
so some outdated or intentionally misbehaving archive instances may still reveal
information.
[Method to opt-out is still not in sight.](https://github.com/matrix-org/matrix-viewer/issues/47)_

Alternatively if the room in question has an alias, you can try poking the room
directory API e.g. for [#matrix.fi:matrix.org](matrix:r/matrix.fi:matrix.org):
[https://matrix-client.matrix.org/\_matrix/client/v3/directory/room/%23matrix.fi%3Amatrix.org](https://matrix-client.matrix.org/_matrix/client/v3/directory/room/%23matrix.fi%3Amatrix.org),
you get the room ID and list of homeservers in it and if you see a single user
(or otherwise not so popular homeserver), you can make educated guesses on who
may be in the room. Note that this particular link requires `matrix.org` to be
in the room and aware of the alias.

Otherwise no, you cannot.

### How do I deal with NSFL spam?

I recommend disabling image previews in public rooms, more about that below, but
moderators would have a couple of other options too:

- Do you have a Draupnir/Mjolnir?
  `!draupnir protections enable <protection-name-here>` might help you. Consider
  especially `FirstMessageIsImageProtection` (ban user if their first user is an
  image), `MentionLimitProtection` (remove messages if they spam ping many
  users), `MessageIsMediaProtection` (remove files containing media),
  `MessageIsVoiceProtection` (remove voice messages). For more information see
  `!draupnir protections` and `!draupnir help`.
  - I don't have an access to a Mjolnir, but I think it might have older command
    `!mjolnir enable`, but it too should understand `!mjolnir protections` or at
    least `!mjolnir help`.
- You could use permissions manager in room settings to disallow media files.
  See the next bullet point, except `m.room.power_levels` and _event TODO_
  instead of `m.room.join_rules`.
- There is also the possibility of making your join available only through
  knocking/request to join, if it's at least version 7 (of
  {{site.matrixLatestRoomVersion}}). Element users will find it from labs,
  ElementX from developer settings (see below).
  - Element Web also has the possibility of `/devtools`, `Explore room state`,
    `m.room.join_rules`, `{ "join_rule": "knock" }` (if the room is at least
    version 7 of {{site.matrixLatestRoomVersion}}). Other options include
    `restricted` (if the room is at least version <del>8</del> 9 of
    {{site.matrixLatestRoomVersion}}) and `knock_restricted` (if the room is at
    least version 10 of {{site.matrixLatestRoomVersion}}), but more about that
    in
    [my matrix/m.room.join_rules in the gist repo](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/matrix/m.room.join_rules/README.md).

#### Disabling image previews

Everything is its own subheading for easier navigation through the table of
contents on top.

See also the
[Ubuntu guide for dealing with spam](https://ubuntu.com/community/communications/matrix/spam).

##### Element Web/Desktop

1. Open settings
1. Select options/preferences, I am not sure which it is in English
1. Uncheck option "display image/media previews" or something similar. It should
   also sync to your other Element Web/Desktop clients at least upon restart.

##### ElementX

1. Open settings
1. Scroll down to the version number
1. Tap the version number several times (7 for me)
1. Open developer settings that are now visible
1. Select the first option _Hide image & video previews_.
   1. Note that the same menu features a _Clear cache_ button on the bottom. It
      can help if you are stuck with spam invites from ignored user or otherwise
      experience weirdness in the app.

##### Nheko

I am unsure on whether this is specific to Nightly, see below for flatpak
installation instructions.

1. Open user settings. It's on bottom left in the same row that begins with
   create a new chat (plus symbol), room directory (looks like a building), room
   search (ctrl + k which looks like a zooming glass) and finally the user
   settings looking like a cog.
1. Scroll down to timeline
1. The third option should be _show images automatically_ which has a dropbox
   with options _always_, _only in private rooms_ and _never_. Consider which is
   the most appropiate for you since knocking only rooms count as private even
   if they may be big and moderators may not know who is going to spam before
   letting them in.

### How can I remove my messages automatically like on Signal, WhatsApp, Telegram and everything else?

Matrix doesn't support it, but some clients, mainly Nheko <del>(nightly)</del>
do. For more information including countless reasons why you would like to do
this, consult
[Element Meta discussion #682: Self-destructing/disappearing messages](https://github.com/vector-im/element-meta/discussions/682).

#### How can I remove my messages automatically on Nheko?

<del>Assuming you are on nightly build,</del> there are three steps:

1. In global settings of Nheko, enable _Periodically disable expired events_, it
   will affect all profiles upon restart.
2. In the room where you wish to automatically remove your messages, go to room
   settings and select _Configure_ next to _Automatic event deletion_. There you
   will find the options _Expire events after X days_, _Only keep latest X
   events_, _Always keep latest X events_ and _Include state events_.
3. Keep your Nheko running for at least 20 minutes. Nheko will automatically
   remove the messages older than the time you specified and will check for
   event expiry occassionally after running for at least 20 minutes, regardless
   of which client send the event in the first place or whether Nheko was online
   at that time.

Secretly it's also possible to configure defaults for all rooms using Element
Web's `/devtools` through
[`im.nheko.event_expiry` account data event](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/matrix/account-data/im.nheko.event_expiry/README.md).

```json
{
  "exclude_state_events": true,
  "expire_after_ms": 31536000000
}
```

This configuration would make Nheko remove all other messages than state events
when they became one year old (and the scheduled expiry job ran after Nheko
being online for around twenty minutes).

I am intentionally not going into deeper detail since that may be dangerous and
if you cannot figure it out, you probably shouldn't be touching it.

#### How can I install Nheko nightly?

I use the nightly flatpak which is easy to install for all users as you just add
the nightly repo and install it. However I am assuming you have already
performed the [Flathub setup](https://flathub.org/setup).

_Note that `#` means a comment and is there just to explain what is being done,
not to be actually entered into the terminal._

```bash
# Add the Nheko nightly remote onto your system
sudo flatpak remote-add --if-not-exists nheko-nightly https://nheko.im/nheko-reborn/nheko/-/raw/master/nheko-nightly.flatpakrepo
# If the im.nheko.Nheko flatpak doesn't appear anywhere, this equals
# `sudo apt update` or `sudo dnf check-update` etc.
sudo flatpak update --appstream
# And this command will actually install the flatpak.
sudo flatpak install nheko-nightly im.nheko.Nheko --assumeyes
```

For installing it just for one user, omit `sudo` and append `--user`.

To run it, either use the new application menu icons or
`flatpak run im.nheko.Nheko//master`.

To use something else than flatpak, ask someone else like Nheko documentation.

### What are state resets?

The term is used least in two different scenarios:

- when your display name and/or avatar return back to what they were previously
  without anyone doing anything.
- more seriously when the Matrix federation decides that the room is actually in
  the past adding/removing users who were (or weren't) in the room at that time.
  This also affects administrator/moderator access.

[This issue was supposed to be fixed at room version 2 with State Resolution Version 2](https://spec.matrix.org/latest/rooms/#complete-list-of-room-versions),
but regardless
[still happens in all versions after that](https://github.com/matrix-org/synapse/issues/8629)
([element-hq/synapse#8629](https://github.com/element-hq/synapse/issues/8629)).
If you are affected, your best bet is to
`/upgraderoom {{site.matrixLatestRoomVersion}}` in developer mode enabled in
`/devtools`, which is a bit distruptive operation as all your users have to join
the upgraded version and all homeservers involved must support it.

You shouldn't just trust me or the variable on this site on what is the latest
version,
[consult the Spec](https://spec.matrix.org/latest/rooms/#complete-list-of-room-versions)
and add [Version Checker](matrix:u/version:maunium.net) or
[their sibling](https://github.com/maubot/rsvc) to your room and once they join,
`!servers upgrade {{site.matrixLatestRoomVersion}}` replacing the
{{site.matrixLatestRoomVersion}} with your target version.

- See also
  [Matrix spec issues reported by Neil](https://github.com/matrix-org/matrix-spec/issues/neilalexander).

#### How about DAG splits?

DAG splits are a phenomenon somehow related to state resets above, but instead
of all servers accepting the same old state, they disagree and split to
different directions with varying severity.

In minor case some servers may decide that a user is not in the room and not
display messages from them, while in more severe situations the room may
practically be two different rooms with no new messages in common between
different sides kind of resembling
[IRC's netsplits before sync.](https://en.wikipedia.org/wiki/Netsplit)

People understanding state resolution (which by the way don't include me)
disagree on the exact cause only agreeing that it's difficult to fix. From what
is told to me, I understand it to be tracked
[in the same Synapse issue #8629](https://github.com/matrix-org/synapse/issues/8629)
or actually
[element-hq/synapse#8629](https://github.com/element-hq/synapse/issues/8629).

- See also
  [Matrix spec issues reported by Neil](https://github.com/matrix-org/matrix-spec/issues/neilalexander).

### Can I have a non-federated room?

Yes, there are two methods.

1. During room creation, Element Web offers an option to have a non-federated
   room. That will permanently prevent any other homeserver from joining and to
   change that a manual room upgrade is required.
1. What I recommend instead is setting a server ACL, so if necessary it can be
   changed later. This may be helpful when migrating to another domain (which
   Matrix doesn't support) or cooperation with another entity with their own
   homeserver or anything.

The second method begins with the usual `/devtools`, explore room state,
`Send custom state event`, enter type as `m.room.server_acl` and contents:

```json
{
  "allow": ["example.org"],
  "allow_ip_literals": false,
  "deny": []
}
```

Now assuming all homeservers in the room implement ACL, only `example.org` users
can join the room.

For futher reading about ACL:

- [matrix.org: Moderation in Matrix, Banning servers from rooms (Server ACLs)](https://matrix.org/docs/guides/moderation#banning-servers-from-rooms-server-acls)
  - [[TODO: release our server-ACL enforcing scripts]](https://github.com/matrix-org/matrix.org/issues/557)
- [Matrix Specification on ACL](https://spec.matrix.org/latest/client-server-api/#server-access-control-lists-acls-for-rooms)
- [matrix-org/matrix-spec#928: Consider handling server ACLs through event auth rules rather than at the network level #928](https://github.com/matrix-org/matrix-spec/issues/928)

### What exactly is room upgrading?

Room upgrading basically means:

1. Create a new room.
1. Send an event to old room saying "the room has now moved to new room"
1. Unless upgraded manually, the client copies some state such as power levels
   from the old room to the new one.

Manual upgrading means poking the API endpoint manually and thus not copying
creation event (non-federation state) or power levels. For an example see my
[matrix-tombstone-room.bash script](https://gitea.blesmrt.net/mikaela/scripts/src/branch/master/bash/matrix-tombstone-room.bash)

See also
[Matrix Specification on room versions](https://spec.matrix.org/latest/rooms/)
or `CTRL-F` this page for `/upgraderoom {{site.matrixLatestRoomVersion}}`
(Element Web `/devtools` _developer mode_ command to perform the upgrade).

### How should I configure my Matrix room?

I think there are three important questions that will each require
consideration:

- Do you want to encrypt the room?
  - Is the room public? If so, encryption will just cause strange issues for you
    to troubleshoot and hinder the purpouse of the channel (which you should
    also consider).
  - Do you want to use bridges or integrations? Unless you or someone close to
    you is selfhosting those, they are untrusted and will defeat the point of
    encryption, so don't encrypt.
  - Does the room only contain trustworthy participants? Encryption may be your
    friend.
- Who can see the room history?
  - If you want everyone to be able to read it, choose everyone or
    `world_readable`.
  - If you want everyone who has joined the room (and also crawler bots that
    publish the history further), choose members-only or `shared`.
  - If you want users to see the history since they were invited to the room,
    select `invited`
  - Otherwise select `joined` to have users only see history since they joined.
- Who can join the room? This is self-explanatory so probably everyone or
  invited users.
  - However my favourite rules are `knock` so that users have to ask for
    permission to join and `knock_restricted` so users in trusted rooms can join
    directly without knocking.

If you choose to make your room public as in joinable by anyone and history
viewable by members joining in the future, _please communicate that in the room
topic_.

> Some projects may wish to log their channels publicly, if you do so the
> logging should be authorised by the channel owners and users in the channel
> should be notified (through for instance the topic, entry message, or similar)
> that public logging is taking place. Channel operators should consider ways
> for users to make unlogged comments and a process for requesting the removal
> of certain logs.

- [Libera.Chat policies on public logging](https://libera.chat/policies/#public-logging)
  which I consider as good advice regarldess of being written for IRC rather
  than Matrix.

Sample events for `/devtools`

```jsonnet
// m.room.join_rules
{
  join_rule: "knock",
}
```

```jsonnet
// m.room.history_visibility
{
  history_visibility: "invited",
}
```

```jsonnet
// m.room.avatar
{
  url: "mxc://example.org/YouShouldKnowHowToGetThis",
}
```

```jsonnet
// m.room.name
{
  "name": "Room Awesome!"
}
```

```jsonnet
// m.space.parent
// state key is room id with !
{
  "via": [
    "example.com",
    "example.net",
    "example.org"
  ]
}
```

```jsonnet
// m.room.topic
{
  topic: "This is my awesome topic \n Dare to disagree!",
}
```

### What are these idlekicks for inactivity, why are they for?

Some Matrix rooms decide to connect their channel to IRC maintaining the same
users on both sides, which can be heavy for the IRC network depending on bridge
type of which there are three "major" variants:

- matrix-appservice-irc which creates a ghost for every Matrix user on the IRC
  side. All of these pretend to be separate clients, so if you have 1000 ghosts
  at IRC, all internal PING/PONG (keepalive) traffic will be sent 1000 times
  every few minutes and so will every message received.
- heisenbridge has two modes, either it acts as a IRC bouncer keeping everything
  separate for every user or a single bot connection to IRC while creating
  puppets for IRC users to use at Matrix. It also supports RELAYMSG for more
  modern IRC networks.
- matterbridge is the most lightweight of the three working as a traditional
  relaybot on both sides. Unlike the others, it doesn't require selfhosting your
  own homeserver making it the most accessible for those with less resources and
  the option I use whenever possible. Sadly it doesn't look that great
  [without RELAYMSG support I live in hope of Matrix implementing one day](https://github.com/matrix-org/matrix-spec/issues/840).

As matrix-appservice-irc very quickly becomes traffic-intensive, its operators
generally have agreement with IRC networks (or are IRC networks by themselves)
to remove unused connections after a month or three of inactivity, which is
judged by lack of public read-receipts anywhere the bridge can see. It could
have been implemented better
[pretending to be a server instead](https://github.com/matrix-org/matrix-appservice-irc/issues/329),
which would have a problem of practically being `root` and thus not many IRC
networks would open their door to a third party bridge and the Ergo IRCd doesn't
even support server linking (opting to be HA instead, but more of that in "Why
should I use Matrix instead of IRC?").

Being a server would also resolve IRC users getting annoyed by huge
disconnection floods whenever matrix-appservice-irc restarts as it could be
[batched by the IRCd users are connected to](https://ircv3.net/specs/batches/netsplit).

The issues of matrix-appservice-irc grow worse when the room has bridges to
other protocols, as those grow the IRC user count, use nicknames (sometimes
capturing nicknames of people using both protocols and may be difficult to
regain if the bridge doesn't answer to `!irc nick SomethingElse`) especially
when the other protocol doesn't support direct/private messages and doesn't have
even that excuse of using a connection slot.

I hope this answer helped explain why this behaviour exists and that IRC users
aren't opposed to bridging out of malice.

#### But the relaybots look so ugly

IRC users have dealt with them since always, I tend to use Limnoria IRC bot
which is forked from Supybot and has had the Relay plugin (for relaying messages
between multiple IRC networks)
[since possibly before `Wed Feb 2 06:45:35 2005 +0000`](https://github.com/progval/Limnoria/commit/e4e5c1482489451c1ae9b6b4ee9b9147a295320e)
and I imagine it was far from the first IRC relay.

This means that even before IRCv3 RELAYMSG and displayname proposals, which I
wish to merge so modern clients could show displaynames and legacy RELAYMSGs,
there have been client-side solutions that have also been evolving:

- Irssi I haven't used personally, but I hear it has a
  [detelexify](https://github.com/zouppen/irssi-detelexify/) that looks a bit
  like it's made with Heisenbridge in mind.
- WeeChat used to have a separate script for this, but at version 1.1 in gained
  the Trigger plugin able to perform actions without scripts, thus meaning you
  can use something like
  [this Relaybot 2 Trigger example](https://github.com/weechat/weechat/wiki/Triggers#relaybot-2)
  without having to install anything (while `/script` would be easy too).

I hope Matrix will get better at this too.

### I am told that I should Matrixify my IRC channel, what does that mean?

You are likely using IRCnet and I am sorry that you have to deal with this
raider group. It means some mix of:

- setting a Matrix avatar to the room
- removing the `#` from the name of the Matrix room
- setting a main alias to the Matrix room that doesn't contain the IRC network's
  name
- bridging to Matrix in a way that Matrix user (that may not be you) has full
  power over the room, potentially also over the bridge bot
  - be careful if you are told to answer a bot `yes` in a `/query`!

### Why should I use Matrix instead of IRC?

No reason, if IRC suits you better than Matrix. As I have said before, I find
maintaining IRC easier. IRC also tends to work better for me in poor network
conditions and with [IRCv3](https://ircv3.net/) specifications and implemented
draft proposals, it can be very pleasant modern experience without the issues
that come from federation.

There is a usecase for every tool and while federation is important feature in
general I am yet to miss it in IRC.

I keep mentioning Ergo IRCd, which
[scales](https://github.com/ergochat/ergo/blob/master/docs/MANUAL.md#scalability),
has serverside history and integrated bouncer feature so it's just a matter of
adding it to your IRC client alongside your SASL credentials and you will
receive your offline messages whenever you reconnect. Ergo also supports
`RELAYMSG` making messages from other protocols seem more native to read and
many graphical IRC clients even provide integrated image uploading support.

[Pirate Party of Finland](https://piraattipuolue.fi/en) considers Ergo-based
[PirateIRC](https://pirateirc.net/) and
[its webchat](https://webchat.pirateirc.net/) a reasonable fallback should we
have to leave other protocols or they would be unusable otherwise.

#### Why isn't Pirate Party of Finland using Matrix?

This goes a bit past my personal Q&A, but we are using it kind of as a "tech
demo". However it cannot currently mature past that as:

- we don't have people interested in Matrix (obviously excluding me).
- we don't have resources for hosting a Matrix homeserver, while we had IRC
  before we were founded.
- moderation tools are so bad it's only me dealing with them (see critiques near
  top of the page).
- [Matrix flagship clients, Element Web, Element Android and Element iOS don't support knocking](https://github.com/vector-im/element-meta/issues/43)
  which has been supported by Matrix Specification since September 2021 or so
  meaning users of those aren't able to request access to our rooms, unless they
  are members of an allowed rooms first.

If you want in, your options are:

- Join [Matrix Suomi Space](matrix:r/matrix-suomi:kapsi.fi), which lists Finnish
  speaking rooms and then [our space](matrix:r/space.piraatit.fi:matrix.org).
  - Due to aforementioned lack of moderation tools, this can be withdrawn should
    that become necessary to mitigate abuse.
- Knock one of our rooms using Nheko and
  [hope someone is watching from Nheko](https://github.com/Nheko-Reborn/nheko/issues/1226).
- Come to
  [#verkkopalvelut using PrateIRC webchat](https://webchat.pirateirc.net/?channel=#verkkopalvelut)
  and tell `AmindaSuomalainen` your Matrix ID in a nice message (to show you
  aren't a bot) that you wish in.

### I don't currently want to touch Matrix, but I am seeing abuse from there, what can I do?

If you are using Telegram or Discord, you are out of luck, as while you can
remove messages, that may get removed from Matrix, you cannot remove the abusive
users. If you are using XMPP you may be out of luck.

However if you use IRC and the Matrix users are behind matrix-appservice-irc
([check this list](https://github.com/matrix-org/matrix-appservice-irc/blob/develop/docs/bridged_networks.md)
or your network operators) you may be in luck as long as
[you or your ops haven't answered "yes" to the Matrix bot](https://github.com/matrix-org/matrix-appservice-irc/issues/462).

Matrix-appservice-irc attempts to sync permissions from IRC in a limited
fashion, and if it's unable to join a ghost (see an earlier question), it will
kick the user from Matrix for as long as the ban stays in place.

In other words, if you were using Matrix personally, the IRC bridge would
drastically increase the moderation tools available for you! You can now use
wildcard bans that aren't natively supported and even extbans like
(LiberaChat's) `/mode #yourchannel +b $r:*:matrix.org*` to ban all matrix.org
users from your channel or set `+e` ban exceptions on them!

_Note: this obviously stops working should the Matrix user change their
gecos/"real name" in which case your only option is to ban the entirety of
Matrix. E.g. on LiberaChat `/mode +b _!_@2001:470:69fc:105::/64` assuming your
abusers don't have a cloak (vhost in any other IRC network)._

#### I fear someone has said yes

In that case someone may have near absolute power on the Matrix side and could
have removed the matrix-appservice-irc bot from power thus preventing it from
kicking users banned from IRC letting them spam freely on Matrix while being
invisible to IRC. In even worse scenario the abusive user was given power and
they are immune to whatever is done from IRC.

There is also the chance that
[a netsplit gives a Matrix user moderator permissions that are never removed when sync occurs](https://github.com/matrix-org/matrix-appservice-irc/issues/518).

##### That doesn't help me

If everything else fails, you can always mail abuse at matrix dot org, who will
want the following details (as of 2022-10-16):

- Your matrix ID
- the room ID(s) your report is about
- timestamps or links to the events you are telling us about

Assuming you are an IRC user and thus unable to provide the two first, I would
include:

- IRC network in question
- IRC channel in question
- WHOIS information of the abusive user (the realname should include MXID)
- timestamps and logs upon the incident

I haven't tried this personally though, as I am Matrix user and have been
sending raw events in JSON to them.

### Personal questions

#### Why so [many accounts](/txt/matrix.txt)?

My reasons for that are many and I am often proved correct in them.

- By having multiple accounts on different homeservers, there is no single
  entity that can decide whether I participate on Matrix or not. This is also a
  benefit of decentralisation in general.
  - Matrix rooms are hosted on all homeservers that have at least one account
    joined to them.
- In case of federation meltdown, I have multiple entrypoints to send events and
  thus hopefully one of them goes through faster. There have been multiple
  incidents where this could have been useful for room administrators.
  - Matrix homeservers used to allow open registration with no kind of
    protection and no warnings they are being ran with that configuration until
    some time before room version 10 was released. This allowed multiple rooms
    to be spammed trivially and it took days for all homeservers to sync ACL
    bans in the worst cases. It also resulted to a lot of state resetting so the
    affected rooms never got cleaned up as the spam users kept coming back and
    clients had issues handling so inflated rooms.
  - Federation also fails when a spammer sends messages after getting banned and
    thus moderation bots fail to remove messages from them as those don't get to
    the banning server. Thus moderators need more accounts again.
    - [matrix-org/synapse#9329: Soft-failures make federated bans racy and frustrate redaction](https://github.com/matrix-org/synapse/issues/9329).
      [The issue was migrated to element-hq/synapse#9329: Soft-failures make federated bans racy and frustrate redaction](https://github.com/element-hq/synapse/issues/9329)
- State resets keep happening and thus I cannot trust other accounts than the
  one which created a room in question stay as power level 100.
- Homeservers come and go, sometimes with little to no warning. As I have many
  functioning accounts generally with power levels set, homeserver migrations
  take me less effort than going through every room and ensuring just now
  created account has power.

##### Brief history of my experiences with dead homeservers

Believe my concern on homeservers coming and going or not, no homeserver is
safe, you should have backup accounts on multiple independent ones. Or maybe I
am just personally unlucky?

1. 2018-09-07:
   [Disroot.org announced Matrix closure](https://disroot.org/en/blog/matrix-closure).
1. 2019-04-12:
   [Matrix.org was compromised](https://matrix.org/blog/2019/04/11/we-have-discovered-and-addressed-a-security-breach-updated-2019-04-12)
   resulting the homeserver being down for a while, some integrations even
   longer and the XMPP bridge returned months later.
1. From Disroot I moved to Feneas, the <em>Fe</em>derated <em>ne</em>tworks
   <em>as</em>sociation, thinking that homeserver being a paid membership
   benefit would help it to stay up and be reliable. However in
   [late 2021](https://gitea.blesmrt.net/mikaela/gist/src/commit/b50dacc0a457754c44ee901ce9e78988a39714fa/associations/feneas/meeting-logs/2021-12-09-annual-general-assembly.txt)
   and
   [early 2022](https://gitea.blesmrt.net/mikaela/gist/src/commit/f3277852084d1a644189c7f9198f0bf470bc0ba4/associations/feneas/meeting-logs/2022-01-04-annual-general-meeting.txt)
   we decided to disband the association due to COVID-19 pandemic, lack of
   volunteers, lack of money (which wasn't helped by
   [Finnish money gathering law issues](https://github.com/liberapay/liberapay.org/issues/30))
   etc.
1. Around 2023-04-24 the-apothecary.club went down and returned sometime
   2023-05-06. That would have been a long time with no communication on Matrix
   and not having access to any rooms, but luckily I have been using my account
   there just for accessibility testing and even if it was my primary account, I
   would have had backup accounts. I still don't know what exactly happened
   there, but I am not an active member of their community and they are
   volunteers like most of Matrix (excluding EMS and other paid homeserver
   offerings).
1. 2023-05-08 13:15 [Kapsi.fi](https://www.kapsi.fi/english.html)
   [database server physically died](https://www.kapsi.fi/tiedotteet/2023.html#488)
   taking down their homeserver and [pikaviestin.fi](https://www.pikaviestin.fi)
   (alongside [sauna.social](https://sauna.social) and
   [järkkää.fi](https://jarkkaa.fi)) which hosts my main account. It returned a
   couple of days later on the evening of 2023-05-11.
1. On 2023-10-25
   [IT group of Pirate Party Austria made an announcement that pirateriot.net pirateriot.net shut down on 2023-10-31](https://web.archive.org/web/20231027060957/https://t.me/globalpirates/39814).
1. 2023-12-24 saw that
   _[the hard drive hosting the jae.fi matrix server shat itself](https://soc.jae.fi/notes/9nmcgdonjxailf51)_
   and as per that announcement, it's not returning anytime soon. My
   matterbridge had account #4 there while it later returned to account #3 on
   tedomum.net.
1. 2024-01-18 brought the
   [shutdown of Diasp.in PirateIRC bridge](https://github.com/ppau/PirateIRC/pull/39)
   and their [call for volunteers page](https://diasp.in/volunteer) has sunset
   date set for 2024-01-31. As I have been PirateIRC operator since 2017-05-11,
   Diasp.in received a spot in this listing.

#### Why do you use Matrix URI scheme instead of matrix.to?

I dislike matrix.to as a concept. It's a centralized service on decentralized
protocol and in my opinion it shows lack of self-esteem on Matrix side
considering neither XMPP or IRC require something like it, both of those trust
being known or handled appropiately.

#### Why does one of your accounts have capital letter in the username?

In 2016 or so I mistakenly thought that usernames would be case-insensitive and
they only
[got banned in Synapse on 10th November 2017](https://github.com/matrix-org/synapse/pull/2662).

#### Which client do you recommend?

Honestly the only one that I can recommend is
[Nheko nightly flatpak](#how-can-i-install-nheko-nightly).

I have also said it before, but for any serious use of Matrix, you will need
[Element Web](https://github.com/vector-im/element-web) and especially the
`/devtools` command it has.

If you absolutely need Matrix somewhere neither fits you, ~~maybe
[Hydrogen](https://github.com/vector-im/hydrogen-web) is your _PWA_ hoping your
needs don't include too many Matrix accounts
([#783](https://github.com/vector-im/hydrogen-web/issues/783),
[#817](https://github.com/vector-im/hydrogen-web/pull/817)) and hoping you
[don't use SailfishOS](https://forum.sailfishos.org/t/progressive-web-app-pwa-in-native-browser/3867?u=mikaela)
([#1000](https://github.com/sailfishos/sailfish-browser/issues/1000)) or
[Ubuntu Touch (#1144)](https://github.com/ubports/ubuntu-touch/issues/1144).~~
Good luck!

On Android I often find myself using
[SchildiChat](https://s2.spiritcroc.de/fdroid/repo)
([Beta](https://s2.spiritcroc.de/testing/fdroid/repo)), which suffers many
Element shortcomings being a fork and Matrix isn't too mobile friendly protocol
in my opinion. (For my view of the repo fingerprints, refer to
[n/f-droid](/n/f-droid.html), but note the pages intend of _my personal use._)

<!-- The one that fits your needs. Personally I mix-and-match:

- FluffyChat on mobile
  - I am a Finnish translator and moderator. It does multiple accounts.
- hydrogen.element.io PWA mainly on mobile, sometimes on desktop
  - It's the only Matrix client that is yet to log me out randomly, very stable, multiple account support and so far the only Matrix client running on Nokia 1 (TA-1047).
- develop.element.io / Element flatpak on desktop
  - `/devtools` is essential (see my critiques), and they don't support Fedora.
- Nheko nightly flatpak on desktop
  - I am a Finnish translator, it's actually the most Spec-complete client in my experience without long delays before something becomes supported and it's lightweight probably for being a native app instead of Electron.

-->

#### Are there any spaces or rooms you recommend?

I don't know, I have
[spaces.md](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/matrix/spaces.md)
which doubles as a critique towards Matrix room directory, which is centralized
and everyone wants to be on `matrix.org` room directory, which again leads to
them registering on `matrix.org` to add themselves there and did I mention that
on 29-02-2024 it has been locked for a couple of months for a cleanup?

> Of course this file makes me the curator/authority of room listing and thus I
> challenge you, the reader, to make your own space or version of this file,
> maybe I can even link to your list here? :smiley_cat:

- [spaces.md](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/matrix/spaces.md)

#### Which homeserver do you recommend?

I am hesistant to recommend any. Finnish users may be interested in the
[Linux.fi wiki listing](https://www.linux.fi/wiki/Matrix), everyone else may be
served by [joinmatrix.org listing](https://servers.joinmatrix.org).

#### Why don't you run your own?

As can be read between the lines from my critiques, I don't consider any
homeserver to be in the state that it's either safe to run legally or
lightweight enough or not require constant maintenance as opposed to IRC which I
do selfhost.

The world situation in general discourages me from anything as heavy.

#### Why cannot I see history in your Matrix rooms?

Matrix doesn't support self-destructing messages or message expiry in general,
so I don't feel comfortable with world-readable logs (which would easily end to
search engines forever).

If you need to see something in the backlog, I suggest using IRC (IRC@Etro or
PirateIRC especially) or XMPP which each store messages only for 7 days (Ergo
default) or some months (Prosody default) on a single server.

#### So do you wish Matrix to fail?

No, I have been using countless of hours at writing these critiques and
performing "quality assurance"/testing, localizing clients to Finnish, providing
support on their rooms for users of those clients, writing a Matrix Spec Change
proposal (that was merged), having coauthored another, writing or contributing
documentation in two languages and whatever else I have been doing since 2016.

Matrix has a place in my heart, just as IRC and XMPP and while none of the three
are perfect, I wish for the issues get resolved and the fighting between them to
end and I am tired of the "stop having fun" or "you are worse person for still
using deprecated IRC" or "I wish IRC/XMPP just died already as it's so old" or
whatever attitude I see amongst certain Matrix user/enthustiastic groups.

However I admit sometimes having difficult time believing that either _Matrix
Foundation_ or _New Vector trading as Element_ has their users best interests in
heart. On my worse days, I especially hardwordedly criticise
[media never being removed](https://github.com/matrix-org/synapse/issues/1263#issuecomment-1120225193)
([element-hq/synapse#1263](https://github.com/element-hq/synapse/issues/1263))
or
[fear that Matrix may endanger gender or sexual minorities by leaking room-specific profiles](https://github.com/matrix-org/synapse/issues/5677#issuecomment-894831845)
([element-hq/synapse#5677](https://github.com/element-hq/synapse/issues/5677))
and especially
[lack of self-destructing messages (that is nowadays a discussion rather than an issue)](https://github.com/vector-im/element-meta/discussions/682#discussioncomment-3803806)
considering even [DeltaChat (also known as an email client)](https://delta.chat)
manages to implement it without control over the underlying protocol and even
less guarantees!

---

_The lucky Matrix number is `{{site.matrixLatestRoomVersion}}`, but do
[consult the Spec for that](https://spec.matrix.org/latest/rooms/#complete-list-of-room-versions)
and definitely ask `!servers upgrade {{site.matrixLatestRoomVersion}}` from
[Version Checker](matrix:u/version:maunium.net) or
[their siblings](https://github.com/maubot/rsvc)._
