<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Guide for installing and using Limnoria which is actively developed fork of Supybot either from Debian package or from source and with or without root." />
<meta name="keywords" content="Supybot,Limnoria,IRC,bot,python2,git,Debian,Linux,Mint,Ubuntu,Kubuntu,Lubuntu,Xubuntu,Arch" />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/Limnoria.html">
<title>Installing & running Limnoria.</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

# Installing

There are three ways to install [Limnoria] depending on your operating system. If you are on Debian-based Linux distribution e.g. [Debian], [*Ubuntu], [Linux Mint] you can install the Debian package. Or then you can install from source which should work on all other OSes too (at least Mac OS X, I don't have successful experience with Windows) and you can also install for current user only.

## With the Debian package

<strong>This method requires root access.</strong>

First become root by running

```
sudo su
```

Then download the Debian package. Here you have to choice do you install the stable version or testing version.

Replace "VERSIONHERE" with "master" to get stable version or "testing" to get testing version.

```
wget http://compiler.progval.net/limnoria-VERSIONHERE-HEAD.deb
dpkg -i limnoria-VERSIONHERE-HEAD.deb
apt-get install -f
```

The "apt-get install -f" tries to fix broken packages by downloading and installing missing depedencies if there are them.

### Upgrading

To upgrade just run the steps above. Remember that the Debian packages are daily builds, so they are changed every day. You can see the latest change on [compiler.progval.net]. The "-HEAD" packages are always the most recent version.

## From source

I recommend that you have [git] installed, because it will make upgrading easier and you don't have to find the [download links] from [GitHub].

If you are going to do a global installation you might want to become root now, otherwise skip the next command

```
sudo su
```

Now download (or "clone") the git repository.

```
git clone git://github.com/ProgVal/Limnoria.git
```

move into the cloned repository

```
cd Limnoria
```

and decide do you want install stable or testing version.

In case you want the testing version, change into the testing branch. If you want the stable version skip this.

```
git checkout -b testing origin/testing
```

Now if you are root and what global installation, you run

```
python setup.py install
```

or local installation

```
python setup.py install --user
```

Limnoria is now installed and you can move to configuring it.

<strong>[Arch Linux] users (and users of other distributions which use python3 by default instead of python"): REPLACE "python" WITH "python2" in all commands!</strong>

### Upgrading

Return to the git repository or if you have removed it, follow the installation steps again.

Update the cloned repository by running

```
git pull
```

and then reinstall

```
python setup.py install
```

or only for current user

```
python setup.py install --user
```

<hr/>

# Configuring the bot

If you installed [Limnoria] as root, you can skip the next section and move to "running Supybot-wizard".

## Preparing locally installed Limnoria for use

Limnoria's binaries were installed to ~/.local/bin which isn't in default $PATH. This means that you must either type the whole path always when you want to run Limnoria or add ~/.local/bin to your PATH. We do the previously mentioned.

You can add it to the PATH by running the following commands:

```
echo "PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc
echo "PATH=$HOME/.local/bin:$PATH" >> ~/.zshrc
```

<strong>If you type only one ">" instead of ">>" in those commands, you will replace the content of those files with "PATH=$HOME/.local/bin:$PATH" instead of appending it into them.</strong>

then run 

```
source .bashrc
```

or with zsh

```
source .zshrc
```

and you should be able to run the commands without needing to type the whole PATH, so you can now move into configuring.

<strong>NOTE: You don't need to do this again after upgrading.</strong>

## Running the Supybot-wizard

First return to your home folder if you aren't there already.

```
cd ~
```

Now create a folder for your bot, move into it and run supybot-wizard.

```
mkdir bot
cd bot
supybot-wizard
```

## Supybot-wizard

```
This is a wizard to help you start running supybot. What it will
do is create the necessary config files based on the options you
select here. So hold on tight and be ready to be interrogated :)

First of all, we can bold the questions you're asked so you can
easily distinguish the mostly useless blather (like this) from
the questions that you actually have to answer.

Would you like to try this bolding? [y/n] (default: y) 
```

> y

Yes, we do. This bolding should work on both Linux and Mac OS X.

```
 Do you see this in bold? [y/n] 
```

> y

I can't answer for you, but at least I see it in bold, so I selected y.

```
Great!

We've got some preliminary things to get out of the way before we
can really start asking you questions that directly relate to
what your bot is going to be like.

We want to know if you consider yourself an advanced Supybot user
because some questions are just utterly boring and useless for
new users. Others might not make sense unless you've used Supybot
for some time.

 Are you an advanced Supybot user? [y/n] (default: n) 
```

> n

I am actually advanced Supybot user in my opinion, but in this guide we aren't advanced users :).

```
This version of Supybot (known as Limnoria) includes another
language. This can be changed at any time. You need to answer
with a short id for the language, such as 'en', 'fr', 'it'
(without the quotes). If you want to use English, just press
enter.

 What language do you want to use? (default: en) 
```

> en

Supported languages are currently en, fr, fi, it, hu. I am the Finnish translator and I know that there are big issues with some translations. If you decide to use fi and notice issues, please report them at [issue tracker of my Limnoria fork at GitHub].

```
Your bot needs to create some directories in order to store the
various log, config, and data files.

 Where would you like to create these directories? (default: .) 
```

> .

We created this new folder just for our bot.

```
Good! We're done with the directory stuff.

Now we're going to ask you things that actually relate to the bot
you'll be running.

First, we need to know the name of the network you'd like to
connect to. Not the server host, mind you, but the name of the
network. If you plan to connect to irc.freenode.net, for
instance, you should answer this question with 'freenode'
(without the quotes).

 What IRC network will you be connecting to? 
```

> freenode

[Freenode] is very popular IRC network and Limnorias support channels are there too.

<strong> Network names should always be typen with small letters to avoid issues with some plugins e.g. [Relay] & [LinkRelay].

```
 What server would you like to connect to? 
```

> irc.freenode.net

irc.freenode.net should put us into some server which is part of [freenode].

```
Found freenode (no network available).

IRC Servers almost always accept connections on port 6667. They
can, however, accept connections anywhere their admin feels like
he wants to accept connections from.

 Does this server require connection on a non-standard port? [y/
n] (default: n) 
```

> y

We probably want to use [SSL] to make people on same (W)LAN unable to spy everything what the bot sees. SSL wasn't supported in [Supybot] directly without [Twisted], but it is in [Limnoria] and [Gribble].

```
 What port is that?     
```

> 6697

[SSL ports of freenode] are listed on their [homepage]. 6697 is popular SSL port as the wizard told previously in case you listened to the longer explanation :).

```
 What nick would you like your bot to use? 
```

You must use your imanigation and take a nick which you like.

```
Some servers require a password to connect to them. Most public
servers don't. If you try to connect to a server and for some
reason it just won't work, it might be that you need to set a
password.

 Do you want to set such a password? [y/n] (default: n) 
```

[Freenode] allows identifying to services with password username:password, but it's recommended to use [SASL] instead. I will tell how to use it after the wizard.

```
Of course, having an IRC bot isn't the most useful thing in the
world unless you can make that bot join some channels.

 Do you want your bot to join some channels when he connects? [y/
n] (default: y) 
```
> y

```
Separate channels with spaces. If the channel is locked with a
key, follow the channel name with the key separated by a comma.
For example: #supybot-bots #mychannel,mykey #otherchannel

 What channels? (default: )   
```

> #limnoria-bots #supybot-bots

These two are bot testing channels for all [Limnorias] & [Supybots] & [Gribbles] which anyone can join with his/her bot.

```
Beginning configuration for Admin...


Done!

Beginning configuration for User...


Done!

Beginning configuration for Channel...


Done!

Beginning configuration for Misc...


Done!

Beginning configuration for Config...


Done!

Now we're going to run you through plugin configuration. There's
a variety of plugins in supybot by default, but you can create
and add your own, of course. We'll allow you to take a look at
the known plugins' descriptions and configure them if you like
what you see.

 Would you like to look at plugins individually? [y/n] 
```

> y

Why not? We can see this list later by running "list --unloaded" with the bot.

```
 What plugin would you like to look at? [Alias/Anonymous/
AutoMode/BadWords/ChannelLogger/ChannelStats/Conditional/Ctcp/
Dict/Dunno/Factoids/Filter/Format/Games/Google/Herald/
Internet/Karma/Lart/Later/Limiter/Math/MessageParser/
MoobotFactoids/Network/News/NickAuth/NickCapture/Nickometer/
Note/Plugin/PluginDownloader/Praise/Protector/Quote/QuoteGrabs/
RSS/Relay/Reply/Scheduler/Seen/Services/ShrinkUrl/Status/
String/Success/Time/Todo/Topic/URL/Unix/Utilities/Web] 
```

> NickAuth

NickAuth is very useful plugin which allows you to identify to your bot by identifying to network services. I will talk more about it later. <strong>NickAuth is currently only in testing version.</strong>

<strong>Don't load plugins which you don't need!</strong>

```
Add a description of the plugin (to be presented to the user inside the wizard)
here.  This should describe *what* the plugin does.


 Would you like to load this plugin? [y/n] (default: y) 
```

> y

...

We just found [a bug](https://github.com/ProgVal/Limnoria/issues/425)! Good thing that I just told you what this plugin does.

This bug is now fixed.

```
Support authentication based on nicks and network services.


 Would you like to load this plugin [y/n] (default: y)
```

> y

See above.

```
Beginning configuration for NickAuth...


Done!

 Would you like add another plugin? [y/n] 
```

> n

You can add other plugins if you want, but remember that you can see the list of unloaded plugins with "list --unloaded".

<em>In advanced user mode you are asked a list of all plugins which you want to load instead of load one by one.</em>

```
Although supybot offers a supybot-adduser script, with which you
can add users to your bot's user database, it's *very* important
that you have an owner user for you bot.

 Would you like to add an owner user for your bot? [y/n]
(default: y) 
```

> y

I must tell you about supybot-adduser later. It's very helpful and so are the commands to give CTRL - C from terminal or reload the configuration from terminal.

```
 What should the owner's username be? 
```

> Mkaysi

but you should probably use your own nick here.

```
What should the owner's password be? 
```

> password

<STRONG>DO NOT USE THAT PASSWORD!</STRONG>

```
Re-enter password: 
```

> password

<STRONG>DO NOT USE THAT PASSWORD!</STRONG>

```
Of course, when you're in an IRC channel you can address the bot
by its nick and it will respond, if you give it a valid command
(it may or may not respond, depending on what your config
variable replyWhenNotCommand is set to). But your bot can also
respond to a short "prefix character," so instead of saying "bot:
do this," you can say, "@do this" and achieve the same effect. Of
course, you don't *have* to have a prefix char, but if the bot
ends up participating significantly in your channel, it'll ease
things.

 Would you like to set the prefix char(s) for your bot?  [y/
n] (default: y) 
```

> y

```
Enter any characters you want here, but be careful: they should
be rare enough that people don't accidentally address the bot
(simply because they'll probably be annoyed if they do address
the bot on accident). You can even have more than one. I
(jemfinch) am quite partial to @, but that's because I've been
using it since my ocamlbot days.

 What would you like your bot's prefix character(s) to be? 
```

> Qwerty123

By giving invalid prefix character, we get list of allowed prefix characters.

```
Value must contain only ~!@#$%^&*()_-+=[{}]\|'";:,<.>/?

 What would you like your bot's prefix character(s) to be? 
```

Just select something. You can later specify any character you want by using reply.whenaddressedby.strings. I will return to it later.

```
There are a lot of options we didn't ask you about simply because
we'd rather you get up and running and have time left to play
around with your bot. But come back and see us! When you've
played around with your bot enough to know what you like, what
you don't like, what you'd like to change, then take a look at
your configuration file when your bot isn't running and read the
comments, tweaking values to your heart's desire.

All done! Your new bot configuration is <BOTNICK>.conf. If you're
running a *nix based OS, you can probably start your bot with the
command line "supybot <BOTNICK>.conf". If you're not running a *nix
or similar machine, you'll just have to start it like you start
all your other Python scripts.
```

As the Wizard says, just run

> supybot botnick.conf

which works even with local installation if you added ~/.local to $PATH.

<hr/>
<strong>COMING SOON(ER OR LATER)</STRONG>

## Identifying

### Normally

### Automatically

### With NickAuth (testing version only)

## Further configuring

### Registering & identifying to Services

### [SASL]

Limnoria supports SASL thanks to [nyuszika7h](https://github.com/nyuszika7h). SASL allows you to identify before you are even connected to the network.

### Don't highlight everyone when you talk to them

### Quieter error messages

### Changing the prefix

#### Prefix strings

### More networks 

## supybot-adduser

## Playing with the users.conf by hand

<!-- vim : set ft=html -->
