<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Supybot security issues," />
<meta name="keywords" content="Security,Issues,Supybot,crash,Debian,Ubuntu,IRC" />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/IRC/Supybot.html">
<title>Security issues of Supybot</title>
<link rel="stylesheet" type="text/css" href="../tyyli.css" />
</head>

<em>If you are looking for web interface of my bot (known as Supybot on freenode), click [here.]</em>

[here.]:OtusBot.html

# Latest version of Supybot was released in 2005

All activity happens in git repository of Supybot nowadays and it happens seldomly. The version, which was released in 2005 is 0.83.4.1. 

It's available from [SourceForge], Debian repositories, Ubuntu repositories and repositories of many other Linux distributions.

[SourceForge]:http://supybot.sf.net/

# 0.83.4.1 has critical issues

What issues?

## 1. Anyone can crash it and computer where it's running on

And this is very easy. Just run the command 

```
!misc last --regexp m/(.*\w){512}/
```

where ! is the prefix character.

Misc is loaded by default and cannot be unloaded without modifying the config.

## 2. The previous wasn't the only way to do this

Everyone can also make the bot count an equation, which brings it and the host computer down. 

For example:

```
!math calc factorial(999999)
```

## 3. Anyone can access network services via the bot.

I don't have example command for this, but it happens by nesting "format cut" and "misc tell". 

What does this mean? Anyone can tell the bot to ghost someone else on same account, take over a channel by telling the bot to give flags (if it has correct flags), change password of the account and everything else what you do with network services.

# Are these issues publicly known?

<STRONG>Of course they are.</strong> They have been reported to

1. [Ubuntu], [issue 1] and [issue 2]

[Ubuntu]:http://ubuntu.com/
[issue 1]:https://bugs.launchpad.net/ubuntu/+source/supybot/+bug/996947
[issue 2]:https://bugs.launchpad.net/ubuntu/+source/supybot/+bug/996950

2. [Debian], [issue 1] and [issue 2].

[Debian]:http://debian.org/
[issue 1]:http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=672214
[issue 2]:http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=672215

The first issue has been also used to take down some of [Ubuntu IRC bots] several times. At least UbotX (I don't remember the number) and meetingology.

[Ubuntu IRC bots]:https://wiki.ubuntu.com/IRC/Bots

3. to their IRC channel.

Some of them are fixed in git repository, but most people aren't using it.

## How to avoid them?

You can add anticapability for these commands using "owner defaultcapability", but that is only a temporary solution. There can also be other issues.

There are also two active Supybot forks, known as [Limnoria] and [Gribble], which are actively developed and have fixed these issues. If you want permanent solution, you should install either of them.

I recommend [Limnoria], because it seems to be more active (activity of [Gribble] isn't announced anywhere) and it has additional commands, translations and new plugin called [PluginDownloader], which makes installing of 3rd party plugins easy.

[Gribble modifications when compared to Supybot.]	

[Limnoria modifications when compared to Supybot.] (By the way, Gribbles features have been fully merged to Limnoria.)

[Gribble modifications when compared to Supybot.]:http://sourceforge.net/apps/mediawiki/gribble/index.php?title=Gribble_Project_Git_Repository
[Limnoria modifications when compared to Supybot.]:https://github.com/ProgVal/Limnoria/wiki/LGC

Your current botname.conf is <strong>100% compatible with forks</strong>.

[Join Supybot channels on freenode!]

[Limnoria]:https://github.com/ProgVal/Limnoria
[Gribble]:http://sourceforge.net/apps/mediawiki/gribble/index.php?title=Main_Page
[PluginDownloader]:https://github.com/ProgVal/Limnoria/tree/master/plugins/PluginDownloader
[Join Supybot channels on freenode!]:irc://irc.freenode.net/#supybot,#gribble,#limnoria

[Changelog of this page.]

[Changelog of this page.]:https://github.com/Mkaysi/mkaysi.github.com/commits/master/IRC/Supybot.html.md
