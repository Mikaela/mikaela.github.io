---
layout: page
permalink: /bot.html
sitemap: false
excerpt: "A little about my IRC bot. Useful links, why it doesn't reply to me, how to make it recognize me, what does it actually do?"
---

*Please read also [rules of my channels.](https://mikaela.info/channel.html)*

* [Web interface](https://bot.mikaela.info)
    * [Plugin documentation](https://bot.mikaela.info/plugindoc/)

## Limnoria

My bot is [Limnoria] which is currently the most popular [Supybot] fork
that is still under active development and it has merged in features of
another popular fork, [Gribble].

My role with [Limnoria] was Finnish translator and IRC support and I also
made minor changes to make some default configuration variables more sane.
Most of [documentation] since [Supybot] and before my leaving is also
written by me.

* [Blog: Leaving Limnoria]({% post_url 2015-03-25-leaving-bots-life %})
* [Blog: My background on Limnoria]({% post_url 2015-05-18-life-bot-background %})

[Supybot]:https://github.com/Supybot/Supybot
[Limnoria]:https://github.com/ProgVal/Limnoria
[Gribble]:https://github.com/nanotube/supybot_fixes
[documentation]:https://limnoria-doc.readthedocs.org/en/latest/

## Usage

### Quick start

Use `list` command to get list of plugins, `list <plugin>` to get list of
commands in plugin, `help <plugin> <command>` to get usage instructions
for \<command\> in \<plugin\>.

If the bot tells you `(X more messages)`, use the `more` command to see
more output.

There are also default plugins which means that when you use only
`<command>` the command is automatically understood as `<plugin> <command>`
for example `tell` is configured to be `later tell` which tells text
to nick next time it's seen. If `command` exists only in one plugin,
it's gets turned to `<plugin> <command>` automatically.

In case command exists in multiple plugins, the bot will tell you that
the command exists in multiple plugins and asks you to specify the plugin
before it.

## Users

The bot doesn't allow anyone to register and I will register channel ops
manually on the channels the bot is on. Users are primarily identified by
NickServ account, but on networks where there are no services it's required
to use hostmasks.

Requirements for getting account:

* being op on channel where the bot is on or similar good reason
* having NickServ account
    * or on networks where there are no services hostmask that you can be
      identified with
        * static host
        * identd


### Identifying

The bot requires users to have password, but I always set the password
as something from pwgen as I primarily identify users based on NickServ
account or hostmask.

* If you have a password, `/msg <bot> user identify username password`
    * Passwords can be asked for me if needed, after getting one, change
      it immediately with `/msg <bot> user set password OLDPASSWORD NEWPASSWORD`
* If you use NickServ account:
    * Use the `auth` command.
    * `/cycle` so extended-join sends your account name to the bot.
    * `/kick <bot>` so the bot will automatically rejoin and send whox
      requests to the channel receiving your NickServ account.
* [Other methods / Official documentation](https://limnoria-doc.readthedocs.org/en/latest/use/getting_started.html#making-supybot-recognize-you)

## Channels

List of the channels where the bot is on can be seen with /whois. However
this list doesn't include secret/private channels (mode +sp).

The bot can also be requested to join other channels, but I reserve the
right to not join it anywhere or to not register specific channel ops
to the bot.

## What does the bot do?

Currently the bot is primarily spamming my channels with new items in some
RSS feeds. You can find list of the feeds added to the bot at
[the web documentation for RSS plugin](https://bot.mikaela.info/plugindoc/RSS/),
but  listing the feeds automatically announced on the channel isn't
possible [yet](https://github.com/ProgVal/Limnoria/issues/1085).

It's also protecting channels from spam using the [AttackProtector plugin.](https://github.com/ProgVal/Supybot-plugins/tree/master/AttackProtector)

The bot also has `ops` command for getting op attention, but it requires
correct prefix to be used, check
`/msg <bot> config channel <#channel> reply.whenaddressedby.chars`. The
prefix can be different on different channels.
