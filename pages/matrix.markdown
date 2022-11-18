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

* [Where else can I read about Matrix?](#where-else-can-i-read-about-matrix)
* [How do you do custom not-emoji reactions?](#how-do-you-do-custom-not-emoji-reactions)
* [Why so many accounts?](#why-so-many-accounts)
* [Why do you use Matrix URI scheme instead of matrix.to?](#why-do-you-use-matrix-uri-scheme-instead-of-matrixto)
* [What are ghost and puppets?](#what-are-ghost-and-puppets)
* [Can I see who is in any specific room without being there?](#can-i-see-who-is-in-any-specific-room-without-being-there)
* [What does the public history visibility mean? I don’t want to appear in search engines](#what-does-the-public-history-visibility-mean-i-dont-want-to-appear-in-search-engines)
* [What are state resets?](#what-are-state-resets)
  * [How about DAG splits?](#how-about-dag-splits)
* [What are these idlekicks for inactivity, why are they for?](#what-are-these-idlekicks-for-inactivity-why-are-they-for)
  * [But the relaybots look so ugly](#but-the-relaybots-look-so-ugly)
* [Which client do you recommend?](#which-client-do-you-recommend)
* [Which homeserver do you recommend?](#which-homeserver-do-you-recommend)
* [Why don’t you run your own?](#why-dont-you-run-your-own)
* [Why cannot I see history in your Matrix rooms?](#why-cannot-i-see-history-in-your-matrix-rooms)
* [I am told that I should Matrixify my IRC channel, what does that mean?](#i-am-told-that-i-should-matrixify-my-irc-channel-what-does-that-mean)
* [Why should I use Matrix instead of IRC?](#why-should-i-use-matrix-instead-of-irc)
* [Why isn’t Pirate Party of Finland using Matrix?](#why-isnt-pirate-party-of-finland-using-matrix)
* [I don’t currently want to touch Matrix, but I am seeing abuse from there, what can I do?](#i-dont-currently-want-to-touch-matrix-but-i-am-seeing-abuse-from-there-what-can-i-do)
  * [I fear someone has said yes](#i-fear-someone-has-said-yes)
  * [That doesn’t help me](#that-doesnt-help-me)
* [So do you wish Matrix to fail?](#so-do-you-wish-matrix-to-fail)

### Where else can I read about Matrix?

* [Miki is the Matrix wiki](https://en.miki.community/) where I will attempt to contribute to.
* [Matrix.org](https://matrix.org/) is the official website.
* [My gist repository also has notes on Matrix, mostly /devtools related ones](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/matrix), they predate Miki and I hope to sort more relevant or historical parts there.

### How do you do custom not-emoji reactions?

In FluffyChat and Nheko you can reply to something with `/react something` to add a `something` reaction. In Hydrogen there is a `...` next to emojis allowing you to enter freeform text as a reaction.

[Element-Web doesn't support this yet](https://github.com/vector-im/element-web/issues/19409) and while there is [open pull request](https://github.com/matrix-org/matrix-react-sdk/pull/6628), the merging is blocked due to Element not knowing how to handle moderation and reporting for malicious reactions.

### Why so many accounts?

In my opinion it's preferable to have multiple accounts on different homeservers for ensuring decentralisation instead of having a single authority in power and being able to issue commands from multiple servers in case of federation meltdown which multiple rooms experienced during the period of room version 9 before homeserver software started to nag on unintentionally open registration refusing to start. Additionally state resets are a good reason to keep old accounts around.

### Why do you use Matrix URI scheme instead of matrix.to?

I dislike matrix.to as a concept. It's a centralized service on decentralized protocol and in my opinion it shows lack of self-esteem on Matrix side considering neither XMPP or IRC require something like it, both of those trust being known or handled appropiately.

### What are ghost and puppets?

They are related to bringing Matrix to other protocols or vice versa.

* A ghost is a Matrix account on another protocol like IRC or XMPP (controlled from Matrix).
* A puppet is the opposite, a Matrix account controlled from another protocol such as IRC or XMPP (the controller/puppetmaster being the user there).
* A double-puppet is when you are using both protocols and have connected them to each other such as a message from Discord appears as your real Matrix account and message from Matrixx appears as your real Discord account instead of something virtual only existing due to the bridge.

### What does the public history visibility mean? I don't want to appear in search engines

The public/world-readable history visibility option means exactly what it says,
public even without joining the room. These rooms are accessible to tools
such as [Matrix Static](https://view.matrix.org/) or upcoming [Matrix Public Archive](https://github.com/matrix-org/matrix-public-archive)
and thus their history is visible in search engines. If this isn't what you
want, set history visibility to one of the members only options (since
selecting this option, since being invited or since join).

Note that as the option name hints, the history visibility option will not
apply to previous messages. Thus if you first make room public and then
restrict it to members only the messages between these two changes are public
and new users will see them. Same if messages are visible to members and
then restricted further.

Another thing worth noting here is that encryption will not prevent new users
from reading the future messages, Matrix will share keys to new joiners to
some extent. For more information refer to [Matrix Spec issue #1](https://github.com/matrix-org/matrix-spec/issues/1)
and related issues.

### Can I see who is in any specific room without being there?

In general no, although there is a cornercase that by poking room directory API e.g. for [Matrix Suomi](r/matrix.fi:matrix.org): [https://matrix-client.matrix.org/_matrix/client/v3/directory/room/%23matrix.fi%3Amatrix.org](https://matrix-client.matrix.org/_matrix/client/v3/directory/room/%23matrix.fi%3Amatrix.org), you get the room ID and list of homeservers in it and if you see a single user (or otherwise not so popular homeserver), you can make educated guesses on who may be in the room.

I think this requires for the room to have an alias (not-published one should be fine) and a homeserver aware of the alias and room being queried.

### What are state resets?

The term is used least in two different scenarios:

* when your display name and/or avatar return back to what they were previously
  without anyone doing anything.
* more seriously when the Matrix federation decides that the room is actually
  in the past adding/removing users who were (or weren't) in the room at that time.
  This also affects administrator/moderator access.

[This issue was supposed to be fixed at room version 2 with Stare Resolution Version 2](https://spec.matrix.org/latest/rooms/#complete-list-of-room-versions),
but regardless [still happens in all versions after that](https://github.com/matrix-org/synapse/issues/8629). If you are affected, your best bet is to
`/upgraderoom {{site.matrixLatestRoomVersion}}`, which is a bit distruptive operation as all your users have to join the upgraded version and all homeservers involved must support it.

You shouldn't just trust me or the variable on this site on what is the latest version, [consult the Spec](https://spec.matrix.org/latest/rooms/#complete-list-of-room-versions) and add [Version Checker](matrix:u/version:maunium.net) or [Fluff Generator](matrix:u/+:jae.fi) or [their sibling](https://github.com/maubot/rsvc) to your room and once they join, `!servers upgrade {{site.matrixLatestRoomVersion}}` replacing the  {{site.matrixLatestRoomVersion}} with your target version.

#### How about DAG splits?

DAG splits are a phenomenon somehow related to state resets above, but instead
of all servers accepting the same old state, they disagree and split to different
directions with varying severity.

In minor case some servers may decide that a user is not in the room and not
display messages from them, while in more severe situations the room may practically
be two different rooms with no new messages in common between different sides
kind of resembling [IRC's netsplits before sync.](https://en.wikipedia.org/wiki/Netsplit)

People understanding state resolution (which by the way don't include me)
disagree on the exact cause only agreeing that it's difficult to fix. From
what is told to me, I understand it to be tracked [in the same Synapse issue #8629](https://github.com/matrix-org/synapse/issues/8629).

### What are these idlekicks for inactivity, why are they for?

Some Matrix rooms decide to connect their channel to IRC maintaining the same users on both sides, which can be heavy for the IRC network depending on bridge type of which there are three "major" variants:

* matrix-appservice-irc which creates a ghost for every Matrix user on the IRC side. All of these pretend to be separate clients, so if you have 1000 ghosts at IRC, all internal PING/PONG (keepalive) traffic will be sent 1000 times every few minutes and so will every message received.
* heisenbridge has two modes, either it acts as a IRC bouncer keeping everything separate for every user or a single bot connection to IRC while creating puppets for IRC users to use at Matrix. It also supports RELAYMSG for more modern IRC networks.
* matterbridge is the most lightweight of the three working as a traditional relaybot on both sides. Unlike the others, it doesn't require selfhosting your own homeserver making it the most accessible for those with less resources and the option I use whenever possible. Sadly it doesn't look that great [without RELAYMSG support I live in hope of Matrix implementing one day](https://github.com/matrix-org/matrix-spec/issues/840).

As matrix-appservice-irc very quickly becomes traffic-intensive, its operators generally have agreement with IRC networks (or are IRC networks by themselves) to remove unused connections after a month or three of inactivity, which is judged by lack of public read-receipts anywhere the bridge can see. It could have been implemented better [pretending to be a server instead](https://github.com/matrix-org/matrix-appservice-irc/issues/329), which would have a problem of practically being `root` and thus not many IRC networks would open their door to a third party bridge and the Ergo IRCd doesn't even support server linking (opting to be HA instead, but more of that in "Why should I use Matrix instead of IRC?").

Being a server would also resolve IRC users getting annoyed by huge disconnection floods whenever matrix-appservice-irc restarts as it could be [batched by the IRCd users are connected to](https://ircv3.net/specs/batches/netsplit).

The issues of matrix-appservice-irc grow worse when the room has bridges to other protocols, as those grow the IRC user count, use nicknames (sometimes capturing nicknames of people using both protocols and may be difficult to regain if the bridge doesn't answer to `!irc nick SomethingElse`) especially when the other protocol doesn't support direct/private messages and doesn't have even that excuse of using a connection slot.

I hope this answer helped explain why this behaviour exists and that IRC users aren't opposed to bridging out of malice.

#### But the relaybots look so ugly

IRC users have dealt with them since always, I tend to use Limnoria IRC bot which is forked from Supybot and has had the Relay plugin (for relaying messages between multiple IRC networks) [since possibly before `Wed Feb 2 06:45:35 2005 +0000`](https://github.com/progval/Limnoria/commit/e4e5c1482489451c1ae9b6b4ee9b9147a295320e) and I imagine it was far from the first IRC relay.

This means that even before IRCv3 RELAYMSG and displayname proposals, which I wish to merge so modern clients could show displaynames and legacy RELAYMSGs, there have been client-side solutions that have also been evolving:

* Irssi I haven't used personally, but I hear it has a [detelexify](https://github.com/zouppen/irssi-detelexify/) that looks a bit like it's made with Heisenbridge in mind.
* WeeChat used to have a separate script for this, but at version 1.1 in gained the Trigger plugin able to perform actions without scripts, thus meaning you can use something like [this Relaybot 2 Trigger example](https://github.com/weechat/weechat/wiki/Triggers#relaybot-2) without having to install anything (while `/script` would be easy too).

I hope Matrix will get better at this too.

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

If you want in, you may knock using Nheko. Additionally/Alternatively your best
bet is to come to [#verkkopalvelut](https://webchat.pirateirc.net/?channel=#verkkopalvelut)
and tell `AmindaSuomalainen` your Matrix ID in a nice message (to show you aren't a bot)
that you wish in.

### I don't currently want to touch Matrix, but I am seeing abuse from there, what can I do?

If you are using Telegram or Discord, you are out of luck, as while you can
remove messages, that may get removed from Matrix, you cannot remove the
abusive users. If you are using XMPP you may be out of luck.

However if you use IRC and the Matrix users are behind matrix-appservice-irc
([check this list](https://github.com/matrix-org/matrix-appservice-irc/blob/develop/docs/bridged_networks.md) or your network operators) you may be in luck as long as
[you or your ops haven't answered "yes" to the Matrix bot](https://github.com/matrix-org/matrix-appservice-irc/issues/462).

Matrix-appservice-irc attempts to sync permissions from IRC in a limited fashion,
and if it's unable to join a ghost (see an earlier question), it will kick the
user from Matrix for as long as the ban stays in place.

In other words, if you were using Matrix personally, the IRC bridge would
drastically increase the moderation tools available for you! You can now use
wildcard bans that aren't natively supported and even extbans like (LiberaChat's)
`/mode #yourchannel +b $r:*:matrix.org*` to ban all matrix.org users from your
channel or set `+e` ban exceptions on them!

*Note: this obviously stops working should the Matrix user change their
gecos/"real name" in which case your only option is to ban the entirety of
Matrix. E.g. on LiberaChat `/mode +b *!*@2001:470:69fc:105::/64` assuming
your abusers don't have a cloak (vhost in any other IRC network).*

#### I fear someone has said yes

In that case someone may have near absolute power on the Matrix side and could have
removed the matrix-appservice-irc bot from power thus preventing it from
kicking users banned from IRC letting them spam freely on Matrix while being
invisible to IRC. In even worse scenario the abusive user was given power
and they are immune to whatever is done from IRC.

There is also the chance that [a netsplit gives a Matrix user moderator permissions that are never removed when sync occurs](https://github.com/matrix-org/matrix-appservice-irc/issues/518).

#### That doesn't help me

If everything else fails, you can always mail abuse at matrix dot org, who
will want the following details (as of 2022-10-16):

* Your matrix ID
* the room ID(s) your report is about
* timestamps or links to the events you are telling us about

Assuming you are an IRC user and thus unable to provide the two first,
I would include:

* IRC network in question
* IRC channel in question
* WHOIS information of the abusive user (the realname should include MXID)
* timestamps and logs upon the incident

I haven't tried this personally though, as I am Matrix user and have been
sending raw events in JSON to them.

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
