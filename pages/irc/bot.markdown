---
layout: page
permalink: /irc/bot.html
sitemap: false
excerpt: "A little about my IRC bot. Useful links, why it doesn't reply to me, how to make it recognize me, what does it actually do?"
redirect_from: /bot.html
---

*Please read also [rules of my channels.](https://mikaela.info/channel.html)*

* [Web interface](https://bot.mikaela.info)
    * [Plugin documentation](https://bot.mikaela.info/plugindoc/)

## Limnoria

My bot is [Limnoria] which is currently the most popular [Supybot] fork
that is still under active development and it has merged in features of
another popular fork, [Gribble].

My role with [Limnoria] was Finnish translator and IRC support and I also
made minor changes to make some default configuration variables more reasonable. Most of [documentation] since [Supybot] and before my leaving is also
written by me.

* [Blog: Leaving Limnoria]({% post_url 2015-03-25-leaving-bots-life %})
* [Blog: My background on Limnoria]({% post_url 2015-05-18-life-bot-background %})

[Supybot]:https://github.com/Supybot/Supybot
[Limnoria]:https://github.com/ProgVal/Limnoria
[Gribble]:https://github.com/nanotube/supybot_fixes
[documentation]:https://limnoria-doc.readthedocs.org/en/latest/

## Usage

### Addressing the bot

The following table opens where the bot will reply to in channel. In PM
the bot replies to everything *(without prefix)*.

<table>
    <tr>
        <th>Replies to</th>
        <th>Examples</th>
        <th>Changeable per-channel</th>
    </tr>
    <tr>
        <td>prefix characters: <code>%</code> <code>+</code>
        <code>!</code></td>
        <td><code>+ping</code> <code>%ping</code> <code>+ping</code></td>
        <td>Yes</td>
    </tr>
    <tr>
        <td>nick in the beginning and end</td>
        <td><code>bot: ping</code> <code>ping, bot</code></td>
        <td>Yes (not nick), but why?</td>
    </tr>
    <tr>
        <td> prefix strings: <code>msb1</code> & <code>msb2</code>
        (for legacy reasons) and <code>__</code></td>
        <td><code>msb1ping</code> <code>msb2ping</code>
        <code>__ping</code></td>
        <td>Yes</td>
    </tr>
    <tr>
        <td>MessageParser (in the middle of line): <code>__</code> &
        <code>__()</code></td>
        <td><code>Does the bot work? __ping</code> for single-worded
        commands and <code>what is Linux? __(wiki Linux)</code> for
        commands with multiple words.</td>
         <td><strong><em>no</em></strong> (too difficult, but
         possible)</td>
    </tr>
</table>

For checking the channel specific prefixes, refer to the following
commands. They can be used in channel (if you know the prefix) or PM.

<table>
    <tr>
        <th>Prefix</th>
        <th>Command</th>
    </tr>
    <tr>
        <td>Prefix characters</td>
        <td><code>channel reply.whenAddressedBy.chars</code></td>
    </tr>
    <tr>
        <td>Nick (beginning & end)</td>
        <td><code>channel reply.whenAddressedBy.nick</code> and
        <code>channel reply.whenAddressedBy.nick.atEnd</code></td>
    </tr>
    <tr>
        <td>prefix strings</td>
        <td><code>channel reply.whenAddressedBy.strings</code></td>
    </tr>
</table>

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
    * or on networks where there are no services, identd and static host.
        * identd alone is not enough.

### Identifying

*All users have a password in the bot, but I have made them invalid (by
adding `!` in front of the hash in users.conf). If you have password set
separately as said below, it will work.*

* If you have a password, `/msg <bot> user identify username password`
    * Passwords can be asked from me if needed. After getting one, change
      it immediately with
      `/msg <bot> user set password OLDPASSWORD NEWPASSWORD`
* If you use NickServ account:
    * Use the `auth` command.
    * `/cycle` so extended-join sends your account name to the bot.
    * `/kick <bot>` so the bot will automatically rejoin and send whox
      requests to the channel receiving your NickServ account.
* [Other methods / Official documentation](https://limnoria-doc.readthedocs.org/en/latest/use/getting_started.html#making-supybot-recognize-you)

## Channels

List of the channels where the bot is on can be seen with /whois. However
this list doesn't include secret/private channels (mode +s/+p).

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
correct prefix to be used.

## Issues you may encounter

For all known issues, see the issue tracker link below relevant subtopic
as this section only lists those that you are likely to see or that others
have asked about from me.

I am trying to run [the latest released version of Limnoria.](https://github.com/ProgVal/Limnoria/tags)

External plugins are updated whenever I see need for it, but at least when
I upgrade Limnoria.

### Limnoria issues

* Issue tracker: https://github.com/ProgVal/Limnoria/issues

*Includes Limnoria core and [included plugins](https://github.com/ProgVal/Limnoria/tree/master/plugins).*

* [Title is only told for the first link in a message](https://github.com/ProgVal/Limnoria/issues/152)
* [Some commands using hostmasks behave weirdly](https://github.com/ProgVal/Limnoria/issues/281)
* [Users cannot log out](https://github.com/ProgVal/Limnoria/issues/461)
    * no idea why they would want to do that though.
* [There is no way to add capabilities to group of users](https://github.com/ProgVal/Limnoria/issues/471)
* [Users cannot change their usernames](https://github.com/ProgVal/Limnoria/issues/616)
    * so ping me instead if you need it changed
* [Meta descriptions for links aren't told](https://github.com/ProgVal/Limnoria/issues/650)
    * these could be useful with news sites.
* [DNS command doesn't mention CNAMEs/ALIASes](https://github.com/ProgVal/Limnoria/issues/864)
* Internet whois is quite broken [1](https://github.com/ProgVal/Limnoria/issues/993) [2](https://github.com/ProgVal/Limnoria/issues/994)
* [RSS: no announced feeds in web interface](https://github.com/ProgVal/Limnoria/issues/1085)
* [html/javascript redirects aren't followed](https://github.com/ProgVal/Limnoria/issues/1120)
    * you will especially see this if you encounter links to my
      "URL shortener"
* [Google says: Error invalid resultSize](https://github.com/ProgVal/Limnoria/issues/1163)
* [Web title & titlesnarfer are broken](https://github.com/ProgVal/Limnoria/issues/1173)

## ProgVal/Supybot-plugins issues

* Issue tracker: https://github.com/ProgVal/Supybot-plugins/issues

*Includes plugins from @ProgVal's/pinkieval's [plugin repository.](https://github.com/ProgVal/Supybot-plugins)*

* LinkRelay
    * [Doesn't sync topics between relayed channels](https://github.com/ProgVal/Supybot-plugins/issues/31)
    * [Status of user in the channel isn't shown](https://github.com/ProgVal/Supybot-plugins/issues/60)
    * [What the bot says isn't relayed.](https://github.com/ProgVal/Supybot-plugins/issues/288)
        * **This is currently the most visible issue on channels where
          LinkRelay is used.**
