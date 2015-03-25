---
layout: post
comments: true
title: "Stay away from Anope IRC Services"
category: [english]
tags: [irc, english]
---

This post is my experiences with developers of Anope IRC Services and with
this kind of behaviour I encourage everyone to not use it in any network
where it can be avoided.

If you are Anope developer, keep in mind that **views of your project are
those that the most noisy member of your project has** and **your project
is your most noisy people.**

*All times are Europe/Helsinki which in these logs is UTC+2. I am also
following Finnish law [Secrecy of correspondence] which allows me to
publish private discussions that I am sender or receiver of. Same policy
is followed in [freenode-harassement].*

[Secrecy of correspondence]:https://en.wikipedia.org/wiki/Secrecy_of_correspondence
[freenode-harassement]:https://github.com/Mikaela/freenode-harassement/

**I am also removing logs to pastebins as those are mostly expired.**

## Kban without reason

This log hasn't been cut before the kban to show that I said nothing on this
channel yet at this point.

```
[11:00:35] *** Joins: Mikaela (Mikaela@teranova-n8s1gp.113c.5rfa.1bc8.2001.IP)
[11:00:36] *** Server sets mode: +Pfnrt *4:2
[11:02:08] *** Mikaela is now known as Michaela
[11:04:41] *** Michaela is now known as Mikaela
[11:12:17] *** Joins: Ishaq (Ishaq@teranova-7g5.ito.48.37.IP)
[11:12:33] *** Quits: Eck (Eck@studio.boxlabs.uk) (Ping timeout: 121 seconds)
[11:15:55] *** Jyzee-Spirit is now known as Jyzee-zZ
[11:17:32] *** Quits: Ishaq (Ishaq@teranova-7g5.ito.48.37.IP) (Quit: Unexpected Leave!)
[11:40:41] *** CyberBotX is now known as CBX-PoweredDown
[11:53:00] *** Joins: Ishaq (Ishaq@teranova-ebpcqq.ujdd.o1kn.1af8.2001.IP)
[13:29:45] *** Joins: Hal9000 (Sebastian@denorastats.org)
[13:29:45] *** Botox sets mode: +o Hal9000
[13:40:42] *** Quits: roadrunner (Rene@teranova-4m5eo7.dip0.t-ipconnect.de) (Quit: KVIrc 4.2.0 Equilibrium http://www.kvirc.net/)
[13:49:15] *** Joins: roadrunner (Rene@teranova-4m5eo7.dip0.t-ipconnect.de)
[13:49:20] *** Joins: Csibesz (csibesz@teranova-819dg6.residential.rdsnet.ro)
[13:49:29] <Csibesz> hi
[13:49:42] <Csibesz> how i can add to nickserv on welcome message to welcome user
[13:50:04] <Csibesz> unregistered_notice = "Welcome to ****** nicname
[13:50:11] <Csibesz> *nickname
[13:52:26] <ctcp> yes
[13:52:32] <Csibesz> yes what:D
[13:52:46] <ctcp> whats the question
[13:52:57] <Csibesz> how i can add to nickserv to great nick with nickname
[13:53:15] <Csibesz> 3:34:46] -NickServ- Welcome to bla bla
[13:53:23] <ctcp> exactly as the example shows
[13:53:26] <Csibesz> i want 3:34:46] -NickServ- Welcome to bla bla Csibesz
[13:54:43] <ctcp> oh im not sure how to add nickname
[13:55:37] *** Joins: ctcpp (wmojbgh@teranova-ega0na.dynamic.ziggo.nl)
[13:56:36] *** Joins: winterchillz (winterchil@teranova-79n.3dh.187.85.IP)
[13:57:06] <winterchillz> morning
[13:57:43] <Yoerger> morning
[13:58:12] *** Quits: ctcp (wmojbgh@teranova-ega0na.dynamic.ziggo.nl) (NickServ (GHOST command used by ctcpp))
[13:58:12] *** ctcpp is now known as ctcp
[13:59:42] <Csibesz> yes that was the problem:D
[13:59:48] <Csibesz> i add uline other server:D
[13:59:59] <Csibesz> sorry not here
[14:00:00] <Csibesz> :DD
[14:01:21] <winterchillz> yet to setup my uline, I'll have to read around a bit, still a bit confusing
[14:01:40] <winterchillz> especially lazy to identify to the server via the standard command, especially when I'm on my phone lol
[14:01:46] <Csibesz> :)
[14:02:12] <Csibesz> why is that i can se chanserv log on chan and other netadmin on other serv he can
[14:03:35] *** Quits: telex (telex@teranova-4254u8.de) (Connection closed)
[14:04:04] *** Joins: telex (telex@teranova-4254u8.de)
[14:09:37] <ctcp> no one understand your question Csibesz
[14:10:20] <Csibesz> i see this on chan
[14:10:21] <Csibesz> [14:09:45] (ChanServ): Inheriting commands and privs from Helper to Services Operator
[14:10:44] *** Joins: Eck (Eck@studio.boxlabs.uk)
[14:10:46] <Csibesz> but my friend connected to her serv he dont seen
[14:10:51] <Csibesz> on same chan ..
[14:11:00] <Csibesz> and have same flags
[14:11:11] <winterchillz> maybe she has less access privileges on the opers.conf?
[14:12:15] <ctcp> thats oper blocks in anope
[14:12:17] <ctcp> inherits = "Helper, Another Helper"
[14:12:26] <ctcp> read the examples Csibesz
[14:12:43] <ctcp> in services.conf
[14:12:50] <Csibesz> yes i see
[14:12:50] <Csibesz> :D
[14:14:33] <Csibesz> yes fixed:Ö)
[14:14:36] <Csibesz> thanks:)
[14:15:36] <winterchillz> btw, SaberUK, managed to do the redirect we spoke about earlier; Got the irc. domain to function, our ISP had the option to just add a redirect
[14:16:08] <winterchillz> just added the option for irc.our.domain to point to the server IP and it went live instantly, thanks for the help with that :)
[14:26:14] *** Quits: Csibesz (csibesz@teranova-819dg6.residential.rdsnet.ro) (Connection closed)
[14:30:45] *** Obi_Wan[-offline-] is now known as Obi_Wan
[14:34:22] <winterchillz> can someone point me to a document that I can read so I can understand the uline better? I want my irc to stop telling me that the services are imposter
[14:34:34] <winterchillz> and instead start picking up the /ns /cs etc. commands
[14:34:54] <winterchillz> I'm not sure how to do that though and I feel a bit lost
[14:35:43] <ctcp> https://github.com/inspircd/inspircd/blob/v2.0.18/docs/conf/links.conf.example#L109
[14:36:02] *** Quits: Hal9000 (Sebastian@denorastats.org) (Ping timeout: 121 seconds)
[14:36:04] <ctcp> your using inspircd i assume
[14:36:08] <ctcp> if i recall
[14:36:13] <winterchillz> yes, ctcp, that's correct
[14:36:43] <winterchillz> so I have to change that line to the name my services are using as a network?
[14:36:48] <ctcp> indeed
[14:37:57] <winterchillz> haha, oh, didn't think it'd be that easy
[14:38:06] * winterchillz bows down to ctcp
[14:38:56] <ctcp> developers of services package and ircd did all that winterchillz
[14:39:10] <ctcp> we are just using their work
[14:39:15] <winterchillz> true that, but you're the person who helped me in my case
[14:39:22] <winterchillz> it'd be ungrateful not to thank you
[14:39:23] <ctcp> Your welcome
[15:24:40] *** Quits: roadrunner (Rene@teranova-4m5eo7.dip0.t-ipconnect.de) (Quit: KVIrc 4.2.0 Equilibrium http://www.kvirc.net/)
[15:41:13] *** Joins: roadrunner (Rene@teranova-4m5eo7.dip0.t-ipconnect.de)
[16:07:31] *** Quits: Eck (Eck@studio.boxlabs.uk) (Connection closed)
[16:27:54] *** Quits: winterchillz (winterchil@teranova-79n.3dh.187.85.IP) (Quit: )
[16:54:40] *** Joins: therock247uk (therock247u@teranova-ccgda5.cable.virginm.net)
[17:16:28] *** Joins: Viper (Viper@teranova-uq4.tnq.82.81.IP)
[17:16:28] *** Botox sets mode: +o Viper
[17:29:43] *** Obi_Wan is now known as Obi_Wan[-offline-]
[17:45:16] *** Joins: MikeXIII (Mike@teranova-fpb.1tl.159.69.IP)
[17:58:27] *** Adam sets mode: +b *!*@teranova-fpb.1tl.159.69.IP
[17:58:27] *** MikeXIII was kicked by Adam ()
[17:58:29] <Adam> oh
[17:58:29] <Adam> dang
[17:58:32] <Adam> that isnt the right button
[17:58:38] *** Adam sets mode: -b *!*@teranova-fpb.1tl.159.69.IP
[17:58:58] *** Adam sets mode: +b *!*@teranova-n8s1gp.113c.5rfa.1bc8.2001.IP
[17:58:58] *** Mikaela was kicked by Adam ()
```

After this I am unbanned, but it's irrevelant to this post as I said
nothing on the channel this time.

### \#inspircd & Brainwashed Atheme users

As many InspIRCd users are also using Anope this seemed like a good place to
ask...

```
[17:59:55] <Mikaela> does anyone have any idea why I was banned from #anope at teranova?
[18:01:50] <Mikaela> Adam: are you the same Adam as at teranova and could comment ^^?
[18:01:56] <AnneGwenn> Mikaela: last logs?
[18:02:08] <Mikaela> moment
[18:02:17] <Adam> I dont care for brainwashed atheme users
[18:02:32] <Mikaela> so that means no reason at all?
[18:03:26] <Adam> if thats what you want it mena, either way its not a conversation for here
[18:05:46] <Mikaela> AnneGwenn: <EXPIRED PASTE>
[18:07:19] <Adam> er, it to mean*
[18:07:40] <Mikaela> I don't think I even talked on that channel
[18:19:36] <SaberUK> >elementalircd
[18:19:38] <SaberUK> oh god poor you
[18:26:02] *** Joins: Souris (souris@ChatSpikeg496fo.dynamic.upc.nl)
[18:41:33] <Elfangor> Hear hear
[19:13:33] *** Quits: Elfangor (HomoSapien@ChatSpike9t0.ec3.171.122.IP) (Ping timeout: 121 seconds)
[19:41:33] <grawity> the people in #anope tend to be assholes about visitors associated with competing services
[19:42:20] *** Joins: Linda (Linda@ChatSpikeo2t1cb.bchsia.telus.net)
[19:42:33] <grawity> ( probably because some people used to come there just to troll, I dunno ¯\_(ツ)_/¯ )
[19:43:12] <Sheogorath> :D
[19:44:16] <grawity> also I didn't even notice Adam had replied... need more coffee.
```

### The following query

* This was actually a good discussion and I thought that maybe Anope and
  its developers are actually OK, but as we later see this was incorrect
  assumption.
* It's also learned that my Anope help issue was caused by WeeChat's OTR.py
  script attempting to use OTR with HostServ. This has been fixed in it
  though and now it won't attempt to send messages to any known network
  services meaning `*Serv` ChanFix, Alis or anything beginning with `*`
  (ZNC modules) by default.

```
[18:52:02] <Adam> sorry about earlier I was just a little angered over some comments you said in #inspircd before joining, I shouldnt have just banned you like that, apologies
[18:52:30] <Mikaela> which comments exactly?
[18:52:47] <Adam> (04:08:36) < Mikaela> I think I still prefer to Atheme. At least it's understandable and doesn't tell you that you must group on page that doesn't have anything releated to groups and Atheme's HostServ is clear instead of saying "no
[18:52:51] <Adam>                       help available for ." The command also seem weird
[18:53:08] <Adam> with all due respect, you probably do not know *anything* about anope
[18:53:39] <Adam> especailly if you just pick up stuff from #atheme its usually always incorrect
[18:53:43] <Adam> anyway I unbanned you
[18:53:43] <Mikaela> I am used to using Atheme and joined to the network because of curiosity and wanting to learn Anope and I also asked the questions on your help channel
[18:54:01] <Mikaela> I don't think #atheme has ever talked about Anope with me being there
[18:54:51] <Adam> If you want to be helpful you should report bugs etc to #anope or -devel instead of making vague claims in #inspircd etc, that is not helpful and just makes us look bad, when theres a good chance you may be completely wrong
[18:55:43] <Mikaela> I always start by doing basic things like registration first and I have no idea on what are bugs with Anope and what just issues with your network.
[18:55:43] <Adam> I used to be there and I know they certainly did
[18:56:40] <Mikaela> I have probably missed that.
[18:57:27] <Mikaela> Do you know "rules of marketing" or whatever they were? They have point in "when person has bad experience with you, they will tell that to 15 people and when person has good experience with you, they will tell that to three people" or similar
[18:57:55] <Mikaela> I am referring to kban without any apparent reason as I didn't even talk on the channel
[18:58:03] <Adam> Im not sure if those apply to idelogical zealots which is who I am accustomed to dealing with
[18:58:10] <Adam> whether or not you are one is left to be determined I suppose
[18:58:38] <Adam> and probably rests more on my behavior than anything else tbh so sorry!
[18:58:51] <Adam> (but, there were many of them prior to my existance)
[18:59:31] <Mikaela> if I was zealot, I guess I wouldn't bother connecting to network using Anope or if I did, I would do that with some other reason than curiosity and wanting to also learn it. I also didn't hear anything on the help channel on how do I group nicks or set that local suffix into email address and what else did I ask
[18:59:38] <Adam> such as nenolod, his close friends, although they don't come around much anymore.
[18:59:44] <Adam> and sure you would connect
[18:59:59] <Adam> to troll etc
[19:00:19] <Mikaela> I don't think I have ever trolled on purpouse
[19:00:36] <Adam> even if you dont have bad intentions, like say grawity, he used to just give totally incorrect help to people in #anope
[19:00:51] <Adam> just because he doesnt use anope, but for some reason still feels like he can assist users, thats just silly
[19:00:53] <Mikaela> did you ever take a look on #help ?
[19:01:16] <Adam> oh, no, I dont ever watch that channel
[19:01:32] <Adam> I dont think anyone does lol
[19:01:49] <Mikaela> I don't mostly assist with services unless I am sure how to do that and I am only comfortable around Atheme if I am asked for help as that is what I have been using since 2010 as user and later some days as oper (until I got in fight with other opers)
[19:02:15] <Mikaela> it advertises being official help channel for your network so I naturally thought that I should ask my questions there
[19:02:38] <Adam> Id be interested in what you did to make hostserv give back "no help available for ." though
[19:02:46] <Adam> do you mean literally thator just "no help available for <command>"
[19:02:47] <Mikaela> I only ran /msg hostserv help
[19:02:53] <Mikaela> I mean that literally
[19:03:08] <Mikaela> 2015-02-15 19:02:59+0200 < Mikaela> help
[19:03:10] <Mikaela> 2015-02-15 19:02:59+0200 -- HostServ: No help available for     .
[19:03:24] <Adam> (12:03:19) -!- Irssi: Starting query in teranova with hostserv
[19:03:24] <Adam> (12:03:19) <Adam_> help
[19:03:24] <Adam> (12:03:20) -HostServ(services@services.teranova.net)- HostServ commands:
[19:03:24] <Adam> (12:03:20) -HostServ(services@services.teranova.net)-     GROUP          Syncs
[19:03:24] <Adam>           the vhost for all nicks in a group
[19:03:25] <Adam> etc
[19:03:38] <Adam> from an unregistered unidentified user, adam_
[19:03:47] <Mikaela> oh, I think I know what that is, please let me test.
[19:03:49] <Mikaela> I am registered as Mikaela
[19:03:59] <Adam> works from Adam too but he is an oper
[19:04:48] <Mikaela> I thought it was OTR sending whitespace tag, but disabling that doesn't change anything, it still says the same thing
[19:05:08] <Adam> does your client have a debug mode to see what it is actually sending
[19:05:18] <Mikaela> oh, no, I failed with that command. It was OTR whitespace confusing it
[19:05:33] <Adam> Im not sure what OTR is
[19:05:40] <Mikaela> I set otr.py to always send that, because Atheme and Supybot or any other bot I interacted with doesn't care about it
[19:05:50] <Mikaela> Off-The-Record end-to-end encryption
[19:05:55] <Adam> what is it exactly that you are sending
[19:06:00] <Mikaela> https://otr.im/
[19:06:18] <Mikaela> what I am sending is "help", but the otr script for WeeChat added whitespace to the end to advertise my capability for OTR
[19:06:21] <Mikaela> ?OTRv2? I would like to start an Off-the-Record private conversation. However, you do not have a plugin to support that. See https://otr.cypherpunks.ca/ for more information.
[19:06:38] <Adam> what kind of whitespace
[19:06:46] <Adam> just like spaces? tabs?
[19:06:50] <Adam> other whitespace?
[19:06:57] <Mikaela> I am not fully sure, but the code is at https://github.com/mmb/weechat-otr
[19:07:09] <Mikaela> I think it should be normal spaces or tabs, but I am not developer
[19:07:30] <Adam> hm
[19:07:53] <Adam> well if you find out (dump your clients i/o maybe?) and file a bug I can look at fixing it if its not too big
[19:08:18] <Mikaela> I have no idea how I would be doing that and all messages that I send to you shoul also have the same tag or at least the first one which starts query
[19:09:06] <Mikaela> I think I am currently just disabling that whitespace for Anope. It's weird that only HostServ has issues as NickServ and ChanServ worked without any issues at all
[19:09:10] <Adam> pm Adam_ something ill see what it is
[19:09:22] <Adam> they use the same parser code so, that is weird
[19:10:22] <Mikaela> and if you now looked into help channel, could you offer me some kind of idea on how would I go grouping my altnick or setting my email address to mikaela+teranova@mikaela.info?
[19:11:05] <Mikaela> with Atheme where I am used to that was just /nick altnick /ns group, but Anope wants username and password of the target and then says that I must go to some website which says nothing about grouping to me
[19:11:47] <Adam> it appears to append 25 character 9 (decimal)
[19:12:36] <Adam> I get the same from all services with it
[19:12:44] <Adam> [12:12:28] <Adam_> help             
[19:12:44] <Mikaela> ?OTR:AAICAAAAxPVlffsB15W+dhZj54EtF7lLvgtW8fqaieg5mg3MEfxOgLca2O9RRyk4NR2Rw5fzgj8wdYxbExLFNT3hjB9tmCNSS+bFqLEtjvRXxx++8cjqy2vYu8A5BYl01JI51RBTWWgrTPvGQ5EO2TdeNWbC2uiR4oS7l8JkrjsKpNeDpS+o0KlfVZhg7pXaEFrHWhiHS0vzLZKDBVKAopiSkOXX1JEtbWinRUHa53h/vZ1OUTyDY8f6HMUaHwtoq02o/nRQW1rdgzsAAAAghIqxWdWjvAHQB/PK7EemAzGag9a64Hpb9lq84GFxsHY=.
[19:12:44] <Adam> [12:12:28] -NickServ- No help available for .
[19:13:11] <Adam> now youre speaking with OTR i cant read it
[19:13:13] <Mikaela> weird, I am sure that I have WeeChat sending that to everyone by default and NickServ and ChanServ answered without issues
[19:13:34] <Adam> you must have an exception somewhere for ns and cs
[19:13:36] <Adam> to not use it
[19:13:38] <Mikaela> I am not speaking OTR as I cannot end it
[19:13:51] <Adam> (12:12:44) <Mikaela> ?OTR:AAICAAAAxPVlffsB15W+dhZj54EtF7lLvgtW8fqaieg5mg3MEfxOgLca2O9RRyk4NR2Rw5fzgj8wdYxbExLFNT3hjB9tmCNSS+bFqLEtjvRXxx++8cjqy2vYu8A5BYl01JI51RBTWWgrTPvGQ5EO2TdeNWbC2uiR4oS7l8JkrjsKpNeDpS+o0KlfVZhg7pXaEFrHWhiHS0vzLZKDBVKAopiSkOXX1JEtbWinRUHa53h/vZ1OUTyDY8f6HMUaHwtoq02o/nRQW1rdgzsAAAAghIqxWdWjvAHQB/PK7EemAzGag9a64Hpb9lq84GFxsHY=.
[19:13:53] <Mikaela> ?OTR:AAIKAAAAwGk3J6pLR/1b7y2vOYq+rCyx2DZ2UDYiqR139uvhII5VEvjJAE+WHdKxzZzPw4dk9h55CYC0D3KJlxHvByr2xHwYnTVcNKcOAk7Gu474TQjq+3snFdiyuuBkMZ9TUZ8WLJOxUZXfGEUVMs24CPyFghkYtlJZ8BjAYg7LWBa+/osGO8GlwWOsyLJsBsLDkwi3jjWRMpSLC5mNlYRFDpa+EMDu9/WZoRUsIbo8ZAH4eDmxu5c+FFi7EP9EYL6hEzfhpQ==.
[19:13:56] <Adam> I saw this
[19:14:17] <Mikaela> which was the last thing you saw before that OTR started?
[19:14:41] <Adam> http://pastebin.com/mnVdSJnR
[19:15:45] <Mikaela> 2015-02-15 19:13:13+0200 < Mikaela> weird, I am sure that I have WeeChat sending that to everyone by default and NickServ and ChanServ answered without issues
[19:15:46] <Mikaela> I think this is the only line
[19:16:06] <Mikaela> and you pasting that tag probably made WeeChat believe that you support OTR as I attempted to /otr start earlier
[19:16:11] <Adam> well, you must not be sending to nickserv and chanserv, because they cant parse it
[19:16:14] <Adam> oh
[19:16:21] <Adam> close/reopen the query perhaps
[19:17:18] <Mikaela> done             
[19:17:20] <Mikaela> and the only expection I can see in /iset send_tag is HostServ on network te             
[19:17:59] <Mikaela> I usually abbreviate network names to two letters in WeeChat to not have them take so much space in channel list             
[19:18:08] <Adam> thats worse now, i see visable junk at the end of all of your messages
[19:18:42] <Mikaela> weird, it should be invisible             
[19:18:49] <Adam> it was before
[19:18:59] <Adam> maybe its using a different key with different characters
[19:19:07] <Adam> because im seeing a bunch of I's which is how irssi shows tabs
[19:19:27] <Mikaela> irssi has OTR support in git, but I am not sure if it was merged yet             
[19:19:54] <Adam> im not interested in it, only making it so services can deal with it if someone uses it I suppose
[19:20:21] <Adam> send another message to adam_
[19:20:33] <Mikaela> I have no idea what atheme or supybot are doing to handle it without issues             
[19:21:35] <Adam> hm still only seeing character 9's there
[19:21:54] <Adam> it must be different per user per session
[19:22:03] <Mikaela> oh, I might have one idea             
[19:22:27] <Mikaela> the script generates new key for every nick@network that I use and teranova doesn't have keys yet, I will cp them             
[19:25:43] <Mikaela> I am on umode +R by the way, so I am not receiving anything from adam_             
[19:25:52] <Mikaela> if you even sent anything             
[19:25:54] <Adam> im not sending anything
[19:26:41] <Adam> anyway ns/cs definitely don't parse this I can manually append it to my messages and I get the same error you got
[19:27:27] <Adam> as far as + in emails, services does allow it except we have login.anope.org instead which has its own validation
[19:27:32] <Adam> which probably uses some php thing I dont know
[19:27:39] <Adam> its our code, custom
[19:28:03] <Mikaela> when I query NickServ and say "help" it works. Maybe that script has some kind of hardcoding to avoid NickServ             
[19:28:10] <Adam> that could be
[19:28:57] <Adam> what services actually sends you back is
[19:29:03] <Adam> "no help available for \2\9\2"
[19:29:33] <Mikaela> yes, that script has hardcoding, but is missing some services. I think I understand the script enough to send pull request fixing that             
[19:29:52] <Mikaela> https://github.com/mmb/weechat-otr/blob/master/weechat_otr.py#L974-979             
[19:32:31] <Adam> also we have grouping on here disabled
[19:32:53] <Adam> because of our login.anope.org account system
[19:33:06] <Mikaela> that answers the question.             
[19:33:08] <Mikaela> I hope SASL still identifies me as Mikaela even if I connect as Michaela?             
[19:33:09] <Adam> you dont need to group though you can just /ns id Mikaela password
[19:33:14] <Adam> yes
[19:33:18] <Mikaela> I see             
[19:33:37] <Mikaela> Atheme does the same, but OFTC and their weird services logout you as you change to nick that doesn't have your SSL certificate             
[19:33:48] <Adam> it is because you own the account Mikaela in ldap, you cannot /nick notmikaela and then /ns group to mikaela, because what if someone owns notmikaela in ldap?
[19:33:56] <Adam> or, what if noone does now, but does later?
[19:34:29] <Adam> maybe if you registered both in login.anope.org, but then they would be two totally independent accounts, so
[19:34:39] <Mikaela> shouldn't the ldap check that?             
[19:35:06] <Mikaela> I think I am currently happy. Does Anope have better documentation like quickstart guide for users somewhere?             
[19:35:12] <Adam> it could maybe but that would be a mess
[19:35:14] <Adam> I think
[19:35:25] <Adam> if you have someone else register in ldap the account you own a nick for that is grouped to Mikaela 
[19:35:45] <Adam> they would /ns id yournick theirpassword and then you would have to be forcibly removed
[19:35:48] <Adam> lol
[19:35:49] <Adam> or something
[19:36:07] <Adam> the ldap schema has no concept of groups of nicks and then a display or anything, it just has accounts
[19:36:12] <Adam> whic his how we set it up
[19:36:50] <Mikaela> there was also some kind of avatar thing in login.anope.org. How does that work? Why it doesn't lookup my avatar from Gravatar or somewhere as my email was already given?             
[19:36:57] <Adam> OFTC just simply doesnt have accounts, its not that uncommon, anope 1 behaved that way. it certainly doesnt make it wrong
[19:37:10] <Adam> I think it was made before gravatar was a thing
[19:37:27] <Adam> just, upload it yourself, its only used on the forums I think
[19:37:37] <Mikaela> and I would be interested in the documentation as Atheme is missing those excpet /msg service everything             
[19:37:39] <Mikaela> I see             
[19:38:37] <Adam> I dont think there is user documentation
[19:38:57] <Mikaela> I wonder what is the first service that succeeds in writing that             
[19:39:10] <Adam> There used to be the docgen but that was baiscally just the help output glorified and put on a webpage, but its only does anope 1
[19:39:28] <Adam> Im not sure if there needs to be any user documentation
[19:39:33] <Adam> most of its obvious
[19:39:33] <Mikaela> I see             
[19:39:43] <Adam> and well what is a "user"
[19:39:57] <Adam> imo a user is just someone who uses IRC but does not say administer channels
[19:40:19] <Adam> the average user probably uses nothing more than identify and maybe some info outputs
[19:40:21] <Mikaela> I have been planning to be writing fast quickstart for Atheme, because Finns at pirateirc have trouble with understanding services and registering and everything             
[19:40:40] <Adam> channel administation can be more complex
[19:40:53] <Adam> although we have qop for access which is about as dumbed down as possible
[19:40:59] <Adam> compared to say flags
[19:41:33] <Adam> since its basically each command is associated with a channel prefix, which users often understand pretty early
[19:42:10] <Mikaela> https://github.com/Mikaela/wiki.mikaela.info/issues/2             
[19:42:35] <Adam> some documentation would be welcome I suppose though
[19:42:51] <Mikaela> and I have written this for myself for automatically setting templates the way I want and later be lazy https://github.com/Mikaela/gist/blob/master/irc/atheme/cstemplate             
[19:42:55] <Adam> I never really got into it because never had the time and my time was best spent developing actual features which not everyone can do
[19:43:23] <Mikaela> I would have time, but I have no skills or then I don't feel like doing anything or something             
[19:43:50] <Mikaela> automatic identification part should be same with both as that is SASL or CertFP             
[19:45:07] <Adam> you should setup anope and play with it some and see what its like
[19:45:55] <Mikaela> I am currently having opering burnout or something, so not immediately and it feels better to be in some network as normal user where to wonder things             
[19:46:39] <Adam> hm oper burnout lol
[19:46:45] <Adam> from the other opers?
[19:47:05] <Mikaela> those             
[19:47:41] <Mikaela> oh, I hope you don't mind that I added the beginning of this discussion to that zerobin as I talked about it ~everywhere including kaniini whom you don't seem to like so much             
[19:47:57] <Adam> oh thats great.
[19:48:31] <Adam> I do mind actually
[19:48:57] <Adam> but thats ok
[19:49:22] <Mikaela> I can probably erase that zerobin if you wish             
[19:49:32] <Mikaela> I don't think anyone from there read it as no one has said anything             
[19:50:06] <Mikaela> erased             
[19:50:10] <Adam> thanks
[19:50:48] <Mikaela> they will just  be wondering my weird comments and 404 error on paste expiry/removal/whatever             
[19:50:50] <Adam> how much did you show nenolod
[19:51:47] <Mikaela> I don't think they ever saw that paste as they appear to be away, but it was the same paste as on #inspircd with my full log on #anope and your apology and I manually explained otr.py causing the issues             
[19:51:59] <Adam> oh
[19:52:03] <Mikaela> I cannot be fully sure on the idle time as mammon doesn't handle that correctly             
[19:52:30] <Adam> its just, I try to avoid nenolod. generally if I totally avoid him he will avoid me and then we all get along fine
[19:52:38] <Adam> but if I start poking at him/him at me we get in fights and its bad
[19:53:00] <Adam> so I try to just completely ignore him
[19:53:31] <Mikaela> I haven't had issues with them, but I have some strange feelings             
[19:53:53] <Adam> ive had nothing but issues
[19:53:55] <Adam> for a number of  years
[19:54:01] <Adam> really since forever
[19:54:21] <Adam> so, I try to stay away
[19:54:52] <Adam> shouldnt have banned you earlier that just stirs up stuff
[19:54:55] <Mikaela> wouldn't it be better for both to cooperate as you are both services developers?             
[19:55:03] <Adam> no
[19:55:25] <Adam> hes a manipulative narcissist and cannot be reasoned with
[19:55:30] <Adam> ive tried to before
[19:55:45] <Mikaela> it will probably also stir up stuff that I said that I got banned without even talking on the channel and being called as "brainwashed Atheme user"             
[19:55:49] <Adam> I was an atheme developer for like idk a week
[19:55:58] <Adam> >.>
[19:56:20] <Mikaela> I didn't think that you could get upset on the comments on #inspircd as I also asked them on the help channel             
[19:56:23] <Adam> oh well
[19:57:45] <Adam> after the way hes treated all of us for so many years theres no chance I dont think
[19:58:11] <Adam> you know
[19:58:28] <Adam> ironically hes responsbile for some of the cooler inspircd/anope stuff
[19:59:02] <Mikaela> I don't know anything about that treatment except that they seem to have low tolerance towards some people and I think I have been in good ters even if there are some strange things             
[19:59:30] <Adam> like when i added os_dns to anope he started going around spamming anope has security holes etc and is vuln to whatever, even though it is all false
[19:59:38] <Adam> made quite a rucus though
[19:59:40] <Adam> on twitter too
[20:00:07] <Adam> so I changed it around a bit a made m_dns for anope, which is an entirely modular dns system, and now its also powering inspircd 2.2's dns system
[20:00:40] <Mikaela> I see             
[20:00:46] <Adam> his problem was just it was in the core and kind of not opt out (though it was really if you configured it to be disabled ..) but oh well now its modular
[20:00:49] <Adam> I do like it
[20:02:03] <Adam> hes an impulsive liar about stuff like that really, he will say whatever it is he has to to convince you that hes right
[20:02:03] <Mikaela> Does anope have other services than those listed on about page? according to #atheme atheme has no other list of services than going through example config file and I think that is a little too difficult at the moment so I am just going to open pull request hardcoding anope             
[20:02:07] <Adam> even though its totally wrong
[20:02:48] <Adam> pull request to where
[20:02:52] <Mikaela> if you mean e.g. certfp, I have experience with that, but I might also be wrong about it and currently it's just the best way I can identify             
[20:02:56] <Mikaela> That OTR.py script             
[20:03:06] <Adam> no you just have to read the example configs, but
[20:03:07] <Adam> its just uh
[20:03:14] <Adam> nickserv chanserv botserv memoserv operserv
[20:03:17] <Adam> hostserv
[20:03:22] <Adam> sometimes statserv
[20:03:31] <Adam> I think thats it
[20:03:32] <Mikaela> so http://anope.org/about.php is not full list             
[20:03:52] <Adam> thats right minus statserv thats sort of new
[20:04:02] <Adam> we have no chanfix or whatever else
[20:04:02] <Adam> gameserv
[20:04:13] <Adam> or saslserv, which I dont actually understand its purpose, though we do have sasl support
[20:04:17] <Adam> its just in nickserv
[20:04:25] <Mikaela> oh and kaniini appears to be present now and they answered "no" to my question on Atheme people banning Anope people without reason             
[20:04:27] <Mikaela> I will write those             
[20:04:41] <Adam> no I don't think they ban anope people without reason, why would they
[20:05:06] <Mikaela> how do you know if Anope network supports SASL by the way? I am contributor in Limnoria and our documentation tells to check if SASL is supported by whoising SaslServ             
[20:05:20] <Adam> cap ls?
[20:05:48] <Adam> just try it and see I guess, so you have to connect first without it in order to see if its supposed?
[20:05:51] <Adam> er supported
[20:05:58] <Adam> even if saslserv is on, does that mean the ircd really supports it?
[20:06:09] <Adam> or what kind of mechs are enabled?
[20:06:16] <Adam> some ircds dont do external but will do others
[20:06:45] <Mikaela> cap ls is a little difficult to users and I am not sure if cap ls is so easy to users either             
[20:07:11] <Mikaela> that network with I have burnoer actually had Atheme SASL enabled, but not InspIRCd and tens of other similar issues             
[20:07:33] <Adam> theres probably never a way to know unless you send AUTHENTICATE whatever
[20:07:35] <Adam> and get back a reply
[20:07:39] <Adam> for sure
[20:08:18] <Mikaela> Limnoria is IRC bot and I guess most of our users don't bother reading messages.log or console output on whether it succeeds with SASL or not             
[20:08:52] <Mikaela> it supports PLAIN, EXTERNAL and ECDSA (which was added by grawity)             
[20:14:29] <Mikaela> Does https://github.com/mmb/weechat-otr/pull/115 look correct to you?             
[20:15:01] <Adam> yea
[20:15:06] <Mikaela> :)             
[20:15:13] <Adam> you could add athemes other stuff there
[20:15:18] <Adam> gameserv and w\e
[20:15:24] <Adam> groupserv
[20:15:46] <Adam> is it smart enough to /whois them and see what server they are on
[20:15:48] <Adam> and then act based on that
[20:16:02] <Mikaela> Atheme has too many different services for me to remember and I think I will do that later when I can go through the example config file. That is why I don't close the issue #114             
[20:16:37] <Mikaela> I don't think they are enough intelligent for that and as the services server is changeable it should probably use the services numberic, but I don't think it's intelligent enough to do that and I have no coding skills to make it do that             
[20:17:05] <Adam> it almost always starts with "services."
[20:17:28] <Adam> or contains it
[20:17:30] <Adam> might be "ircservices."
[20:17:56] <Mikaela> but for example I could be evil and change it to "palvelut." (which is services. in Finnish), I don't think that is working alternative             
[20:18:15] <Adam> well thats not whats in the default config files
[20:18:16] <Adam> which is what people use
[20:19:49] <Mikaela> the default is services.int with Atheme, I have no idea on Anope and people usually change it to include their network and just because it's the default isn't reason enough to assume that it's always the default             
[20:20:04] <Adam> ive been doing this a long time
[20:20:12] <Adam> 99.9% of the time it starts with services.
[20:20:41] <Mikaela> I don't think ignoring that 0.1% is OK             
[20:21:06] <Mikaela> oh and the negative Anope discussion seems to be going on different channel than #atheme and it probably startd from my comments             
[20:21:19] <Adam> im sure
```

## Other bothering behaviour

* This can probably be considered as misunderstanding etc.
  but these things bother me.

```
2015-02-22.log-[16:11:58] <SaberUK> if you are using inspircd add <include file="conf/aliases/anope.conf.example"> to your inspircd config
2015-02-22.log-[16:13:49] <Verbat> i'm using unreal
2015-02-22.log-[16:14:11] <Moot> -> include "aliases/anope.conf";
2015-02-22.log-[16:15:17] <Verbat> just did added that but it doesnt seem to work....
2015-02-22.log-[16:15:22] <Verbat> just added*
2015-02-22.log:[16:17:28] <Mikaela> Verbat: which IRC client are you using and have you told it to send unknown commands to server (if applicable)?
2015-02-22.log-[16:17:49] <Verbat> i'm using mIRC
2015-02-22.log-[16:18:09] <Verbat> 7.34
2015-02-22.log-[16:18:16] <Verbat> what is "send unknown commands to server (if applicable)"? :)
2015-02-22.log:[16:18:42] <Mikaela> some IRC clients don't send unknown commands to server by default and need manual configuring. I have no idea about mIRC
2015-02-22.log:[16:19:12] <Mikaela> WeeChat requires "/set irc.network.send_unknown_commands on" before /ns and all work and irssi requires dispatch.pl
2015-02-22.log-[16:19:38] <Moot> Verbat it should work with mIRC
2015-02-22.log:[16:19:50] <Mikaela> does "/quote ns help" or "/raw ns help" work?
2015-02-22.log:[16:19:52] <Mikaela> if they do, mIRC is not sending the command, if they don't, something is wrong with your config
2015-02-22.log-[16:19:53] <Adam> it works with mirc, clearly he is not using either
2015-02-22.log-[16:20:18] <Verbat> brb sec :)
2015-02-22.log:[16:20:39] <Adam> Mikaela explaining unnecessary stuff like that to people usually ends up just confusing them more than anything else
2015-02-22.log-[16:20:44] <Adam> to new people
2015-02-22.log:[16:22:01] <Mikaela> I haven't talked with any mIRC user how it behaves with unknown commands and I was wondering if mIRC is capturing the command while everything else works wit
hout issues. I am not sure what is the official way of explaining "sending unknown commands to server"
2015-02-22.log-[16:24:36] <Jobe> typically mIRC sends unknown commands to the server, the exception is for commands mIRC handles internally either by custom script or its own code
2015-02-22.log-[16:25:32] <Adam> you two should take this conversation elsewhere
2015-02-22.log-[16:30:45] *** Joins: Florian (Florian@teranova-896pv6.hsi12.unitymediagroup.de)
2015-02-22.log-[16:31:20] <Florian> Spricht hier einer zufällig Deutsch?
2015-02-22.log-[16:37:03] <ctcp> i speak a litle Florian
```

```
2015-03-01.log-[14:52:25] <Moot> Hello, I don't receive any confirmation saying the memo was sent when I use the 'STAFF' option... But it's send and people receive it. Is it normal?
2015-03-01.log-[15:16:13] <DukePyrolator> hmm, there is no code for it in the module. so its not a bug. its a missing feature :-)
2015-03-01.log-[15:16:21] <Moot> yes i saw it
2015-03-01.log-[15:16:31] <Moot> i compared both codes m_send and m_staff
2015-03-01.log-[15:16:39] <Moot> can you add it to.. suggestions? :P
2015-03-01.log:[16:13:14] <Mikaela> what is the maximum password length? I am just told that the password is too long and told to use shorter one, but nothing on how much shorter
2015-03-01.log:[16:13:53] <Mikaela> 100 is too long, 50 is too long
2015-03-01.log:[16:14:30] <Mikaela> 25 went through, but it would be nice to know how long it can be
2015-03-01.log-[16:16:58] <LEthaLity> I'm tempted to guess something around 32, can't remember without checking
2015-03-01.log-[16:19:01] <LEthaLity> yeah 32, probably because of previous issues with hashing and storage
2015-03-01.log-[16:19:47] *** Quits: Milliways (aircpp@teranova-ved6jh.tn.glocalnet.net) (Ping timeout: 121 seconds)
2015-03-01.log-[16:19:56] <LEthaLity> you can change it in nickserv.conf though, look for passlen
2015-03-01.log:[16:20:41] <Mikaela> it seems that I am opening an issue
2015-03-01.log:[16:26:41] <Mikaela> it's now at https://bugs.anope.org/view.php?id=1639 , I hope I am understandable
2015-03-01.log:[16:27:29] <Mikaela> I must change that issue tracker to English, because that Finnish translation uses weird words that say nothing to me when thinking about bug tracking
2015-03-01.log-[16:41:14] <Adam> we don't need to know that, though
```

## Sorcerynet and the top secret IRCd change

* It's 2015-03-03 and I am being suicidal, because real life issues
  (school, gatekeeping, depression etc.) and I am looking for peer support
  channel for asexual people.
    * Update on 2015-03-25: for more information about these real life
      issues or the biggest ones, plase see [this post.]({% post_url 2015-03-25-leaving-bots-life.md %})
* I find one and connect to network that I have never heard about and
  join the channel and it seems nice one. Sadly the network is controlled
  by Anope developers (even if I thought they were just at Teranova) and
  I am immediately accused of connecting there just, because they are
  doing top secret IRCd change from their Charybdis fork to InspIRCd.
* Moving to InspIRCd is actually a good thing and it's my IRCd of choice
  currently and it also supports IRCv3 which is basic requirement for me
  nowadays.

```
[15:58:02] <Adam> how did you find sorcerynet?
[15:58:53] <Adam> eg, what made you join it
[16:58:03] <Mikaela> why do you ask?
[17:13:42] <Adam> oh I thought I did a pretty good job not telling anyone about it
[17:14:14] <Adam> though they did announce it on their mailing list apparently but I dont think anyone reads that :o
[17:15:01] <Mikaela> telling probably cannot hurt as I am already suicidal and no one can hurt me anymore
[17:15:20] <Mikaela> sorcerynet has the largest LGBTIQ channel that you find using IRC search engines with query "asexual"
[17:15:46] <Adam> huh
[17:16:11] <Adam> youre not a user of the network, you only registered 2 days ago
[17:16:16] <Adam> you are there because of the ircd migration
[17:16:48] <Mikaela> no, I am there, because there is LGBTIQ channel which so far seems active and not too insane
[17:18:08] <Mikaela> https://search.mibbit.com/search/asexual http://irc.netsplit.de/channels/?chat=asexual
[17:18:15] <Adam> I find that too much of a coincidence to believe it, so
[17:18:16] <Adam> sorry
[17:18:44] <Mikaela> do you have something personally against me?
[17:18:56] <Adam> no but I have something against anyone affiliated with atheme
[17:19:32] <Adam> a number of years ago we moved sorcery to anope off of their custom services package and we took hell from atheme from it, was bad, its the main reason nenolod hates me now
[17:19:43] <Adam> am trying to avoid a repeat on this move to inspircd which I am sure he will detest
[17:20:20] <Adam> it certainly was the main falling out betweeen us, before that we talked sometimes
[17:21:08] <Adam> the move was only announced on the 27th
[17:22:18] <Mikaela> can I ask to join #GayCafe there and ask them about me?
[17:22:28] <Adam> so you can understand atheme people appearing out of nowhere there makes me uneasy, i thought I had done a good job not mentioning it anywhere that might bring attention
[17:22:30] <Mikaela> or would grepped logs of me be enough?
[17:23:34] <Adam> fine if its totally unrelated them im sorry i jumped to the wrong conclusion
[17:24:15] <Mikaela> you are insane
[17:24:15] <Mikaela> <EXPIRED PASTE> grepping me
[17:24:22] <Adam> it would help if the first thing you said in #square wasn't of the "because it doesn't work how I personally think it does, it is wrong" logic
[17:24:31] <Adam> (10:26:06) < Mikaela> is it known issue that SASL EXTERNAL doesn't work? CertFP seems to work though and SASL PLAIN didn't error
[17:24:46] <Adam> the ircd was written prior to sasl external existing
[17:24:49] <Adam> it certainly is not an "issue"
[17:24:53] <Adam> it is simply not implemented
[17:25:21] <Adam> I imagine it will come about whenever it is switched to inspircd since that does support it afaik
[17:25:23] <Mikaela> I am not familiar with your IRCd at all and I only assumed SASL EXTERNAL would work, because I am aware of it being always enabled with Anope like SASL PLAIN is
[17:26:49] <Adam> then you should instead ask if sasl external is supported, perhaps
[17:27:06] <Adam> instead of assuming it is and because it doesnt work for you, there is a problem somewhere.
[17:27:16] <Mikaela> freenode is the only place ever where I have seen certfp without SASL EXTERNAL
[17:27:22] <Adam> btw the ircd is a fork of charybdis 3.2, so, its largly not even our stuff
[17:27:38] <Adam> they have an older ircd, too
[17:28:00] <Mikaela> if you want more <EXPIRED PASTE>
[17:28:31] <Adam> at the time charybdis didn't support sasl external, so its just not there. most networks don't proactively try and always sit on the latest versions of stuff
[17:28:45] <Adam> change is hard
[17:29:12] <Mikaela> I think I am suicidal enough to give logs of this discussion to kaniini when this is over
[17:31:16] <Adam> I really dont follow
[17:32:36] <Adam> are you afraid of me telling people youre lgbt?
[17:32:45] <Adam> (10:15:02) <Mikaela> telling probably cannot hurt as I am already suicidal and no one can hurt me anymore
[17:33:12] <Mikaela> no, telling the reason why I went there
[17:33:20] <Adam> oh
[17:33:37] <Adam> Ive known this for longer than youve known who I was
[17:33:37] <Mikaela> you haven't been very nice towards me, our first meeting that I remeber was kban from #anope without me een saying anything
[17:33:39] <Adam> I really dont care
[17:33:41] <Adam> what you are
[17:36:02] <Adam> anyway as I said if this is all just a weird coincidence then sorry I guess
[17:36:13] <Adam> you must amit though, some coincidence
[17:36:42] <Mikaela> very coincidence that you are always attacking me everywhere
[17:37:04] <Adam> well, youre appearing everywhere I am
[17:39:02] <Adam> also I hardly attacked you i simply asked why you joined the network
[17:39:08] <Adam> on #anope yes sure, but not here
[17:39:47] <Mikaela> simply asked why I joined the network and then claim that I haven't joined there with the reason I have, but think that I am there just for IRCd migration
[17:40:00] <Adam> i assumed you had yes
[17:40:19] <Adam> didnt occur to me there could possibly be any other reason
[17:43:16] <Adam> I guess if you were around the last time I did something like this with sor maybe youd undersatnd more what I was trying to prevent, sigh
[17:43:19] <Adam> anyway sorry, bye
```

## The last straw

* Correction: I am only on one network using Anope, Sorcerynet which was
  mentioned earlier and I am expecting Anope developers who control it to
  ban me from there as that would be their style as that would be their
  style.

```
[14:15:14] <Botox> anope: Adam 2.0: https://github.com/anope/anope/commit/fb17bc85ead8c1be6ebe1561f77865f083fdc000
[14:15:14] <Botox> Redesign m_ldap to no longer rely on undefined behavior
[14:15:14] <Botox> Accessing the same LDAP* from multiple threads at once is always
[14:15:14] <Botox> undefined, even if one thread is just polling ldap_result.
[14:15:14] <Botox> Instead keep one thread per connection and issue blocking queries on the
[14:15:14] <Botox> thread.
[14:15:14] <Botox> anope: Adam 2.0: Strip color codes when looking up fantasy commands. | https://github.com/anope/anope/commit/a899c04ec20bb85a0af994c3e7dfd80686cbef2b
[14:15:14] <Botox> anope: Adam 2.0: Hide set desc because set description exists | https://github.com/anope/anope/commit/b67963353fee302e08aebc566dbf61d84407940f
[14:15:14] <Botox> anope: Adam 2.0: Remove cloak prior to applying vhost in insp20 fhost handler | https://github.com/anope/anope/commit/dc58239c8a4222cfc97d06f91574417446fe8e55
[14:15:14] <Botox> anope: Adam 2.0: Normalize masks given to cs_ban, use entry to match them against users | https://github.com/anope/anope/commit/c3cc5804c32f423d4017a825300d926895ef64ed
[14:15:14] <Botox> anope: Adam 2.0: Normalize masks given to cs_kick, use entry to match them against users | https://github.com/anope/anope/commit/3f093d708f198c105e9ac528436a78d4246b8273
[14:15:14] <Botox> anope: Adam 2.0: Make cs_clone behave closer to how the help describes it | https://github.com/anope/anope/commit/78bff86dab32dc484164e5da8a535b3ec24c5c03
[14:15:14] <Botox> anope: Adam 2.0: Allow cs clone to clone levels too | https://github.com/anope/anope/commit/310e95a92e64a9546247fe57d4643328fa4ebe9b
[14:15:14] <Botox> anope: Peter Tseng 2.0: https://github.com/anope/anope/commit/bf727285bcf7c7c95c2b2b43faa3d1fa13bad6fb
[14:15:14] <Botox> SendConfirmMail: Replace %E with new email
[14:15:14] <Botox> The old mailer message said the user is changing email "to %e", which is
[14:15:14] <Botox> changing TO the OLD email. But instead, the user is actually changing
[14:15:14] <Botox> the email to the new email.
[14:15:14] <Botox> We could change %e to be the new email, but maybe some users of Anope
[14:15:14] <Botox> have already configured their messages to assume %e is the old email. So
[14:15:14] <Botox> instead, add a new %E that is replaced with the new email.
[14:15:14] <Botox> anope: Adam 2.0: Only matches sqlines against channels if they begin with a # | https://github.com/anope/anope/commit/92920f5a1c8866c8e26e1608f0feb3e3e54c8dd2
[14:15:14] <Botox> anope: Adam 2.0: Show passlen in PASSWORD_TOO_LONG | https://github.com/anope/anope/commit/c5ff7c686837afbb854aa6546ade3aa8c86a1cd1
[14:15:14] <Botox> anope: Adam 2.0: Document that m_ldap_authentication:disable_register_reason blocks grouping | https://github.com/anope/anope/commit/32c4908c8ce33a0b0c23fa05249db9aa5c47635c
[14:15:19] <Botox> anope: Adam- commented on issue #90: Support for cloning ChanServ levels between channels - Link: https://github.com/anope/anope/pull/90
[14:15:19] <Botox> anope: I have applied this myself in 310e95a92e64a9546247fe57d4643328fa4ebe9b
[14:15:20] <Botox> anope: Adam- closed PR #90 on 2.0: Support for cloning ChanServ levels between channels - Link: https://github.com/anope/anope/pull/90
[14:15:32] <Botox> anope: Adam- closed PR #111 on 2.0: Correct wrong XML response tag - Link: https://github.com/anope/anope/pull/111
[14:15:32] <Botox> anope: Sebastian Barfurth 2.0: Correct wrong XML response tag | https://github.com/anope/anope/commit/474cd7a99b13a0779205096cb4df43582d9418e6
[14:15:32] <Botox> anope: Adam 2.0: https://github.com/anope/anope/commit/03f05d3948e71d1547e618539214ffcca8f52cae
[14:15:32] <Botox> Merge pull request #111 from aFreshMelon/fix-xmlrpc-response
[14:15:32] <Botox> Correct wrong XML response tag
[14:15:38] <Botox> anope: Adam- closed PR #107 on 2.0: - Misc updates to the hybrid protocol modules: - Link: https://github.com/anope/anope/pull/107
[14:15:39] <Botox> anope: miwob 2.0: https://github.com/anope/anope/commit/76337bc04ac0072019cd3025da55eecd6692490f
[14:15:39] <Botox> - Misc updates to the hybrid protocol modules:
[14:15:39] <Botox>   - best supported version is 8.2.x
[14:15:39] <Botox>   - fixed UID message handler to cope with account names being '*'
[14:15:39] <Botox>   - minium required TS version is TS6 now
[14:15:39] <Botox> anope: Adam 2.0: https://github.com/anope/anope/commit/e030771cbcc947b34d264df9b200b4985bd226b6
[14:15:39] <Botox> Merge pull request #107 from miwob/master+misc-hybrid-changes
[14:15:39] <Botox> - Misc updates to the hybrid protocol modules:
[14:15:45] <Botox> anope: miwob 2.0: - Update SendClientIntroduction() to use * for account names instead of 0 | https://github.com/anope/anope/commit/abe232601b05fc78ae1c419165e4075b5690052c
[14:15:45] <Botox> anope: Adam 2.0: https://github.com/anope/anope/commit/69c18f131fb7622f943c2a163090f390596af12f
[14:15:45] <Botox> Merge pull request #106 from miwob/master+SendClientIntroduction
[14:15:45] <Botox> - Update SendClientIntroduction() to use * for account names instead of ...
[14:15:45] <Botox> anope: Adam- closed PR #106 on 2.0: - Update SendClientIntroduction() to use * for account names instead of ... - Link: https://github.com/anope/anope/pull/106
[14:15:49] <Botox> anope: Adam- closed PR #105 on 2.0: - Change SendForceNickChange() to use UIDs - Link: https://github.com/anope/anope/pull/105
[14:15:50] <Botox> anope: miwob 2.0: - Change SendForceNickChange() to use UIDs | https://github.com/anope/anope/commit/6ada3ec87180df159a2d55634a1972611f7fe62a
[14:15:50] <Botox> anope: Adam 2.0: https://github.com/anope/anope/commit/64781817acf702507fa09d7648bdea593bd269f1
[14:15:50] <Botox> Merge pull request #105 from miwob/master+use-uid-for-svsnick
[14:15:50] <Botox> - Change SendForceNickChange() to use UIDs
[14:15:59] <Botox> anope: Adam- closed PR #99 on 2.0: Added kickcheck override for users with protected privs - Link: https://github.com/anope/anope/pull/99
[14:16:00] <Botox> anope: H7-25 2.0: Added kickcheck override for users with protected privs | https://github.com/anope/anope/commit/61a8dd57f7984194dc453ef56b5b05c957aedd8b
[14:16:00] <Botox> anope: Adam 2.0: https://github.com/anope/anope/commit/8d3fa47ab2ec9719cbbdda55c95af962aaf5138e
[14:16:00] <Botox> Merge pull request #99 from H7-25/extemp_protected
[14:16:00] <Botox> Added kickcheck override for users with protected privs
[14:16:28] <mooncup> someone's been a busy boy
[14:18:12] *** Quits: Obi_Wan[-offline-] (Obi_Wan@teranova-dk56ti.rz.st-city.net) (Ping timeout: 121 seconds)
[14:21:45] <Mikaela> Does the message when you attempt to group now say that grouping is disabled or was just config file changed? If only config file was changed, I don't think that the issue is fixed
[14:22:04] <Adam> Look at the diff.
[14:22:21] <Mikaela> the diff looked only config file change to me if it was the correct diff
[14:22:34] <Adam> then thats what happened
[14:22:42] <Mikaela> then the issue is not resolved to me
[14:23:32] <Adam> well, I think it is because the default message currently explains as much as it needs to
[14:23:40] <Adam> registration is disabled, see some website
[14:24:04] <Mikaela> The default message says that registration is disabled and instructs going to some website which says nothing about grouping.
[14:24:14] <Adam> yes
[14:24:22] <Adam> grouping is understood to be registering
[14:24:45] <Mikaela> And the issue is that users think that they only want to connect nick to account, not register a new account so it's unclear that grouping is not possible and this is what the issue is about
[14:25:13] <Adam> "registration" is not defined as registering a new account
[14:25:24] <Adam> it can
[14:25:32] <Adam> but, it means nick registration, which is what group does
[14:25:34] <Adam> so the message is correct
[14:25:39] <Mikaela> Average user would define it as registering a new account
[14:25:52] <Adam> I dont think so
[14:26:13] <Adam> Remember anope is targeted at anope users, and not at atheme users who file bugs at us for fun
[14:26:55] <Mikaela> I consider myself as Anope user, because I am on two networks that use Anope and I am unable to select what services packages those networks use
[14:26:56] <Adam> just because your opionion says it means something, doesnt change history, and doesnt change how its worked until well technically last year, but still 2.0 still has many nick centric behaviors in it
[14:27:05] <Adam> well, you aren't one
[14:27:30] <Mikaela> Would it be impossible to say "Please note that grouping is disabled when ldap is used?" with better wording
[14:28:08] <Adam> I could say "registration and grouping" is disabled but that is redundant and ive previously explained
[14:28:35] <Adam> i suppose I could change it and people who read it would learn hey maybe they are not the same
[14:28:38] <Adam> but
[14:28:44] <Adam> I dont want to
```

## My contributions to Atheme and IRCv3

What I consider as contribution here is IRC support, git commits and
issue reporting/commenting.

* I haven't been IRC support to either and IRCv3 just writes documentation.
* Git commits:
    * Atheme: https://github.com/atheme/atheme/commits?author=Mikaela
        * "No commits found"
    * IRCv3: https://github.com/ircv3/ircv3-specifications/commits?author=Mikaela
        * Oh, it looks like I am wrong. I have done two commits, using
          singular they in place of `he/she` and added [Limnoria] to the
          list of IRCv3.1 compliant bots. I am [Limnoria] contributor, but
          Anope developers have never mentioned it.
* Issue tracker:
    * Atheme: https://github.com/atheme/atheme/issues?q=author:Mikaela &
      https://github.com/atheme/atheme/issues?q=mentions%3AMikaela+
        * nothing special visible
    * IRCv3: https://github.com/ircv3/ircv3-specifications/issues?q=author:Mikaela & https://github.com/ircv3/ircv3-specifications/issues?q=mentions%3AMikaela+
        * nothing so special here either unless you count [SASL REAUTH](https://github.com/ircv3/ircv3-specifications/issues/103)
          and as I say there, I only opened it because no one else was
          doing it (and everyone was complaining about it everywhere).

[Limnoria]:https://github.com/ProgVal/Limnoria/

## What would I use instead?

At the time of writing I would use Atheme until it stops releasing security
updates **OR** start using Shalture (which I also started translating to
Finnish, but lost motivation) **when** it starts relesing stable releases.
