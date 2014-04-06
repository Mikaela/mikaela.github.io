<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="description" content="Supybot security issues," />
<meta name="keywords" content="Security,Issues,Supybot,crash,Debian,Ubuntu,IRC" />
<meta name="author" content="Mikaela Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.io/IRC/Supybot.html">
<title>Security issues of Supybot</title>
<link rel="stylesheet" type="text/css" href="../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../sitemap/sitemap.html)
<hr/>

<em>If you are looking for web interface of my bot (known as Yvzabevn on freenode), click [here.]</em>

[here.]:Yvzabevn.html

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

## 4. Web page with special characters in title can be used to send DCC/CTCP commands.

This doesn't mean only things like CTCP actions (also known as /me), but known problems with old routers ( FF ? DCC SEND “ff???f??????????????” 0 0 0 ) which make 
them reconnect to the internet.

Usage:

```
!web title <malicious.page.here>
!web fetch <malicious.page.here>
```

Note that web fetch is disabled by default.

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

I recommend [Limnoria], because it seems to be more active (activity of [Gribble] isn't announced anywhere) and it has additional commands, translations and new plugin called [PluginDownloader], which makes installing of 3rd party plugins easy. Ohloh supports comparing different projescts, [here is comparsion of Limnoria, Gribble and Supybot](https://www.ohloh.net/p/compare?project_0=Limnoria&project_1=Gribble%3A+Support+Bottie&project_2=Supybot).

<strong>If you use Debian/Ubuntu or any Debian based distribution, you can get [stable version of Limnoria here] or [testing version here].</strong>

The links above should always be the latest version of Limnoria and they are updated daily.

[stable version of Limnoria here]:http://builds.progval.net/limnoria/limnoria-master-HEAD.deb
[testing version here]:http://builds.progval.net/limnoria/limnoria-testing-HEAD.deb

[Gribble modifications when compared to Supybot.]	

[Limnoria modifications when compared to Gribble.] Features of Gribble have been fully merged to Limnoria.

[Gribble modifications when compared to Supybot.]:http://sourceforge.net/apps/mediawiki/gribble/index.php?title=Gribble_Project_Git_Repository
[Limnoria modifications when compared to Gribble.]:https://github.com/ProgVal/Limnoria/wiki/LGC

Your current botname.conf is <strong>100% compatible with forks</strong>.

[Join Supybot channels on freenode!]

[Limnoria]:https://github.com/ProgVal/Limnoria
[Gribble]:http://sourceforge.net/apps/mediawiki/gribble/index.php?title=Main_Page
[PluginDownloader]:https://github.com/ProgVal/Limnoria/tree/master/plugins/PluginDownloader
[Join Supybot channels on freenode!]:irc://irc.freenode.net/#supybot,#gribble,#limnoria

[Changelog of this page.]

[Changelog of this page.]:https://github.com/Mkaysi/mkaysi.github.com/commits/master/IRC/Supybot.html.md

<hr/>

<div id="disqus_thread"></div>
<script type="text/javascript">
/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_developer = 0; 
var disqus_url = 'http://mkaysi.github.com/IRC/Supybot.html';
var disques_title = 'Security issues of Supybot';
var disqus_shortname = 'mkaysishomepage'; // required: replace example with your forum shortname
/* * * DON'T EDIT BELOW THIS LINE * * */
            (function() {
                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = 
true;
                dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0])
.appendChild(dsq);
            })();
        </script>
        <noscript>
Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Dis
qus.</a>
</noscript>
        
<p><a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus
</span></a></p>
<!-- vim : set ft=html -->
</body>
</html>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-40171169-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
