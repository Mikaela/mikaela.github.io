---
layout: post
comments: true
title: "Channels & Hostmask groups: A basic Howto"
category: [english]
tags: [irc, english]
redirect_from: /english/2015/01/10/channels-hostmask-groups-a-basic-howto.html
---

@Annwenn got me opering at her network after long pause with my opering.
She also named this blogpost and requested me to write this and I don't
have any better place where to put this, but I am starting with other talk
before getting to the subject.

It appears that I am not as bad oper as I thought as I was able to identify
and find solutions to multiple issues including server-side aliases not
working, SASL being loaded with services, but not with IRCd, CertFP loaded
with services, but not IRCd, missing oper-only channels (and allowing
everyone to join #services) etc.

The services package is Atheme and IRCd InspIRCd which are the same I would
have picked if I had started running IRC server which I was avoiding
before. The forks of Atheme don't have any stable releases yet and Atheme
is still getting security fixes.

I am not linking to the network or complete issue list here as I don't want
too much traffic there.

And now to the subject.

First, register a channel, for example #test.

```
/join #test
/cs register #test
```

2. Register the group !test

```
/msg groupserv register !test
```

3. Set options & flags at #test. The following are what I usually set to
   channels.

```
/cs set #test GUARD ON
/cs set #test MLOCK
/cs set #test PRIVATE ON
/cs set #test NOSYNC OFF
/cs set #test SECURE ON
/cs set #test TOPICLOCK ON
/cs set #test VERBOSE ON
/cs flags #test $oper +Aehiortv
/cs flags #test !test +AiV
```

Here $oper adds people who are opered to access list (if EXTTARGET $oper is
enabled) and allows people who have +c in group !test to see the access
list (even with PRIVATE on), invite themselves or see the channel key using
ChanServ and have autovoice on the channel.

4. Set the options and flags of !test.4. Set the options and flags of
   !test.

```
/msg groupserv set !test channel #test
/msg groupserv set !test joinflags +cviA
/msg groupserv set !test open on
```

joinflags +cvi means that when people join the group, they automatically
have +cvi which allows them to have access in channels where !test has
flags, take vhosts which are offered to the group and invite other people
to the group.

5. Offer vhosts to the group (requires you to be oper).

```
/hs offer !test test/$account
/hs offer !test tester/$account
```

6. Take one of the vhosts.

```
/hs offerlist
/hs take tester/$account
/hs on
```

`/hs offerlist` shows which vhosts are offered to you or groups where you
have `+v`.
