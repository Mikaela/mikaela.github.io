---
layout: post
comments: true
title: "Private/Secret IRC channels"
category: [english]
tags: [english, irc]
redirect_from: /english/2015/06/08/private_secret_channels.html
sitemap: true
robots: noai
---

_People often wonder about this and I thought that I could probably write
about this, how do you make IRC channel secret/private, either hiding it
from other people or not letting others in._

_Modes spbiI are standard and should be the same on all IRCds. I am also
assuming that your network uses Atheme IRC Services or fork of it._

To make channel secret, there are two useful modes. You might also want to
mlock them with `/msg chanserv help set mlock`.

- +s — hides the channel from all channel lists (for non-opers)
  -i). Keep in mind that you always see channels that you are on or share
  with other people in whois. +p also prevents `/knock` (which is command
  to request invite to the channel) on some IRCds.

Other nice modes that you may be interested in are:

- +b — (ban) depnding on does your network support extbans, try
  `/quote help extban`.
- +r — on Charybdis prevents unidentified users from joining the channel,
  you will want this with RESTRICTED.
  - InspIRCd uses +R
- - S — on Charybdis prevents users not using SSL/TLS from joining.
    - InspIRCd uses +z

And to make channel private, there are two ways, mode +i/+I and ChanServ
RESTRICTED (auto-kban unauthorized users).

With RESTRICTED you will want to prevent unidentified users from joining
or you will get people attempting to join while unidentified and then
banned immediately and unable to join after identifying.

To use it,

1. Give people who are supposed to be on the channel flags, I use +ViA
   which means auto-**Voice**, **i**nvite oneself and can see **A**ccess
   lists, you don't have to use these, but these are probably the most
   safe flags and the users must have at least one account to not be
   kbanned. `/msg ChanServ flags #channel account +ViA`
2. `/msg ChanServ set #channel restricted on`
3. You are ready, but you might also want to
   `/msg ChanServ set #channel private on`, so people cannot use
   `/msg chanserv access #channel list` to see who are the secret people
   you let in (and who aren't on the channel between auto-kban).

And last, mode +i and +I which are the oldest way to do this, but also the
most difficult.

First you set the mode +i and now everyone must be `/invite`d to the
channel or they cannot join. Then you set +I like you would set a ban
(read the `/quote help extban), here I assume you use Charybdis.

To allow user with account `friend` you would `/mode +I $a:friend` and
they are able to join freely without needing to be `/invite`d every time.

You might also find the modes `+g` (Charybdis) and `+A` (InspIRCd) helpful
as they allow everyone to use the `/invite` command.

I said that +iI is difficult and I must probably explain why it's so.

- It doesn't use services and the lists get emptied always when the channel
  gets empty.
- It's tied to whatever you give it, if you give it hostmask and that
  changes, the person cannot get in anymore. Also if you gave it extban
  matching to accountname and the person changes accountname, they are
  again unable to join until the +I is updated.
- _These were the reasons that came to mind at first, if you have others,
  feel free to suggest them._
