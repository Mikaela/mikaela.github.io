---
layout: post
title: "Matrix abuse protection model for community maintainers: security by obscurity"
category: [english]
tags: [matrix]
---

*I am administrator or moderator in multiple communities in Matrix, the most sizable
 being 23 rooms + two spaces. I don't have my own homeserver or Mjolnir. And I am tired.*

If I was using Discord, I would make a guild, make roles within it and then
right click people and assign them roles and they would be able to manage all
channels those roles let them. Time estimate less than 15 minutes.

Sadly I am not using Discord, I am using Matrix. This means that while burnt out
it feels like no one has thought of the case where a community with more than
a couple of rooms wants to use Matrix.

## Setup

I am tired, so excuse me for not involving complete documentation and just
smaller steps:

1. Use https://develop.element.io/ (or have a config.json allowing you to use
   labs)
2. Create a space.
3. Through developer mode `/upgraderoom {{ site.matrixLatestRoomVersion }}`.
   1. ***WARNING*** The room version number here is configured in Jekyll site
      variable, not one specific to this post.
   2. ***WARNING*** You should check [the Matrix spec](https://spec.matrix.org/latest/rooms/)
      for the latest stable room version.
   3. ***WARNING*** Traditionally homeservers by other parties than Matrix.org
      (read Synapse) lag behind on supported room versions and you may break
      your room for people using those. At the time of adding this note (2021-12-14), the
      spec v1.1 is a month and couple of days old (2021-09-11) and room version
      7 is not implemented by Conduit.
       1. Yes, at the time of writing this post I am recommending version 9,
          while the aforementioned variable is {{ site.matrixLatestRoomVersion }}
          as that is what Element encourages and features such as restricted rooms
          require and as this post hints, Matrix is even more impossible to manage
          without those.
4. Clear cache and reload so the old space maybe disappears.
5. See also https://github.com/vector-im/element-web/issues/19208
6. Now that there is a space, right click it to create a new room under it and
   select that it can only be joined by space members. You will hopefully end up
   with room version 9 (the default at time of writing is 6 and has even worse
   situation with abuse pretention).
7. Go to room settings and set the room to public join assuming it's supposed
   to be public (14 of this worst case scenario are)
8. Repeat steps 5-7 for all rooms you need, you can hopefully figure out how
   to handle a private space (9 rooms in this case).

### Bus factor

As we are a serious organisation using Matrix here, even if we have no money
or people or homeserver or Mjolnir, what happens if you somehow become unable
to access your account or are asleep or something when you are needed? You add
more people with power and also register yourself on multiple homeservers, so
if your main account goes down, you have power somewhere else.

Let's say you have 20 rooms (you get it a bit more easy than I do), I think
you have three methods to promote your other accounts:

***WARNING: administrator status cannot be removed by others.***

* A. Using the graphical user interface, invite the other administrators to
  the room and click the buttons to make them administrators. I am too tired
  to check how to do this, but it's a graphical user interface, good luck!
  Remember you will do this twenty times, once for every room/administrator.
* B. You can type `/invite @user:example.org` and then `/op @user:example.org 100`
  and copy-paste it all the time!
* C. My favourite, you can have a pre-formatted power-level event in json in
  a git repository from which you can copy-paste it to all rooms, first `/devtools`,
  then "room state", "m.room.power_levels", "edit" and you can paste your new
  administrators there and press "send"! This is the only mass option you have,
  and you will have to do this once every twenty rooms.

Remember you will have to do this every time you add a new moderator (or they
will be unable to act in the room when they are needed)!

We also have a matterbridge (which has it's own configuration for every room, but
offtopic here) which has administrator / power level 100 in every room, so if
I am not available the administrator team can login as it and take care of
the situation.

## Abuse finds you!

Congratulations, if abuse has found you, the security through obscurity model
has failed and now you get to deal with it! That is very simple, you just check
the abuser MXID, and paste `/ban @yourorgisbad:evil.example.invalid` to all twenty
rooms.

Did you find out that you have a lot of abuse from a single server and Matrix
doesn't support wildcards in bans? No problem, [Matrix has your back with "Moderation in Matrix!"](https://web.archive.org/web/20211205204104/https://matrix.org/docs/guides/moderation/),
you simply use `/devtools` and ban the entire server by sending a completely new event
`m.room.server_acl`, luckily you are a professional `/devtools` user at this point
so having to do this 20 times is nothing to you.

### Icing on the cake

Could this get any better? Yes, the abuse could happen when you are sleeping
or otherwise out of the picture, so your fellow ICT team member (who has no interest
in touching this mess with a long stick) has to step in for you and resolve the issue.

It's a stress situation for them, will the ICT team be able to find the shared
password for the Matrix administrator account you hopefully have and speedlearn
to be a `/devtools` professional or able to handle even easier forms of spamming
or flooding without you present? My money is on the spammer. Good luck, high-five
for the next team meeting where you wonder what happened, how to prevent it from
happening again and will you even support Matrix in the future?

I hope someone thanked you for ever having your organization there, I know
that I have only gotten complaints about matterbridge looking ugly and not
using matrix-appservice-irc, \<redacted-for-similar-trouble\>, matrix-whatever-discord,
etc.

## Mikaela, are you ok, has this happened to you?

Thank you for asking, I am not ok, I have a burnout and xmas is poor time for me
in general, and this whole issue is ridiculous, someone could have thought of
it since 2014, everything I am saying is public knowledge, but no one cares.

It's whoever is running Matrix without hosting their own homeserver and Mjölnir
(which brings all reasonable management for organizations) who is at fault (me).
I wonder how much would a Mjolnir help if abuse was sophiscated enough to DDoS
it off the internet before beginning.

## What is this community with 23 rooms and two spaces?

It's [Pirate Party of Finland](https://piraattipuolue.fi/en). I cannot say
whether it's us or Matrix that is obscure enough to have avoided the nightmare I
painted in this blog post, but as I am the only administrator at Matrix, I
have locked it down so the rest of the ICT team can continue not touching Matrix
or practicing `/devtools` first without a stressful situation.

[Our main space](matrix:r/space.piraatit.fi:matrix.org?action=join) requires
knocking before it can be joined. Don't ask me what Matrix clients support
knocking, it's part of [Matrix spec version 1.1](https://spec.matrix.org/v1.1/rooms/v7/#authorization-rules),
don't even ask me what Matrix servers support it.

Our public rooms within that space require being a member of that space.

Our more sensitive rooms that desire working peace from spammers are in a
subspace, which again require belonging to it, and which requires knocking too.
We have similar system in place at Discord where we just grant people a role
once they have talked a bit and shown themselves to not be malicious and this
is the best <s>we</s> I can do at Matrix.

The above looks a bit weird as I was going to put the actual json events
there, but I am too tired to bother with that.

## Afterword

If I am wrong at anything I said, please contact me instantly either in [my discussion channels](/discuss),
[the GitHub issue for this post](https://github.com/Mikaela/mikaela.github.io/issues/268)
or mention `@Mikaela` in any GitHub.com/GitLab.com issue (I am not reading my email actively though)
as if I am wrong and there is a reasonable Discord-style interface for this
without additional money, you are improving my life greatly as I am not just
going to stop using Matrix.

* [Obligatory changelog link](https://github.com/Mikaela/mikaela.github.io/commits/master/blog/_posts/2021-12-05-matrix-community-abuse-security-by-obscurity.md)
