---
layout: post
comments: true
title: "Short quickstart on tmux & WeeChat for GUIless support"
category: [english]
tags: [english, irc, tmux]
redirect_from: /english/2016/03/09/weechat-tmux-quickstart.html
---

_Sometimes you don't have GUI when you need remote support, luckily you
don't need it even if you have only one device._

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [What is what?](#what-is-what)
- [Installing things](#installing-things)
- [tmux](#tmux)
- [WeeChat](#weechat)
- [pastebinit](#pastebinit)
- [Further reading](#further-reading)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## What is what?

- Tmux is terminal multiplexer which allows you to have "multiple
  terminals" in one terminal. You can also detach it which means returning
  to the terminal where you ran tmux leaving tmux and everything there
  running and later return to it.
- WeeChat is popular text based IRC client.

## Installing things

_Note: WeeChat has multiple optional depedencies, but I am only listing
the most important ones (I will return to it later) unless they are all
in one package._

- Arch & deriatives:
  - `sudo pacman --needed -S tmux weechat perl gpm pastebinit`
- Debian & deriatives:
  - `sudo apt-get install weechat-curses weechat-plugins gpm pastebinit`

## tmux

Just run `tmux` and you will find yourself in a new shell, but with tmux
bar on the bottom where you see open "windows".

Basic navigation:

\*Note: Tmux users ctrl + b by default instead of ctrl + a as it was
developed in screen. That can be changed with tmux.conf (check further
reading after WeeChat).

- Ctrl + b + c = new "window"
- Ctrl + b + number = move to "window" number
- Ctrl + b + x = kill "window"
- Ctrl + b + w = interactive "window" selection
- Ctrl + b + d = detach tmux (return with `tmux attach`)

## WeeChat

Time to finally go to IRC. Go to tmux first and there run `weechat` (or
if your distribution has ancient version of WeeChat, `weechat-curses`, but
in that case you should upgrade (if your distribution is
[Debian/Ubuntu/Raspbian, use this repository](https://weechat.org/download/debian/))).

WeeChat welcomes you and suggests you to read at least the quickstart
guide and recommends reading user's guide too, but in this case we
can skip those.

First we must connect to the network where the support channel of our
distribution is.

1. Add the network to WeeChat.
   - liberachat: `/server add liberachat irc.libera.chat/6697 -ssl -autoconnect`
2. Connect there.
   - `/connect liberachat`
3. Join the channel of your distribution.
   - `/join #distribution`
     - you can also join multiple channels at once by separating them by
       commas e.g. `/join #channel,#channel2`.

You might want to have friendly channel listing and be able to click the
channels with mouse? That is why you installed perl and gpm (you might
need to `sudo systemctl start gpm` or whatever init system you use).

1. `/script install buffers.pl`
2. `/mouse enable`

Now you should see bar with the core buffer (`weechat`), server buffers
merged to it (`liberachat`) and `#distribution`. If mouse doesn't work, you
can `/buffer X` where X is the number to move. For moving between merged
buffers move to the buffer and press Ctrl + x.

And the last thing, if you need to see just plain lines without
sidebars or anything, press `alt + l` (`alt` can be replaced with `esc`).

## pastebinit

You are often wanted to pastebin something which can be difficult without
GUI. Luckily there is pastebinit which you can use instead of typing
everyting by hand.

Usage:

- `pastebinit file.txt` to pastebin the content of `file.txt`
- `dmesg | pastebinit` to pastebin output of `dmesg`

Pastebinit replies by givig you address to the paste which you can then
give to IRC.

Alternatives to pastebinit with some pastebins:

- [ix.io](http://ix.io/): `command | curl -F 'f:1=<-' ix.io`
- [sprunge.us](http://sprunge.us/): `command | curl -F 'sprunge=<-' http://sprunge.us`

These also answer by giving you link to the paste.

## Further reading

- tmux
  - [my ~/.tmux/tmux.conf](https://github.com/Mikaela/shell-things/blob/master/conf/tmux.conf)
  - Hawk Host Blog _which was very helpful to me when I started using tmux._
    - [TMUX – The Terminal Multiplexer (Part 1)](https://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/)
    - [TMUX – The Terminal Multiplexer (Part 2)](https://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/)
  - `man tmux`
- WeeChat
  - [WeeChat documentation index (multiple languages](https://weechat.org/doc/)
    - [Quick Start guide](https://weechat.org/files/doc/stable/weechat_quickstart.en.html)
    - [User's guide](https://weechat.org/files/doc/stable/weechat_user.en.html)
    - [FAQ](https://weechat.org/files/doc/weechat_faq.en.html)
  - [My IRC page](https://mikaela.info/irc/)
    - At the time of writing there are two posts about WeeChat.
- pastebinit
  - [pastebinit homepage](https://www.stgraber.org/category/pastebinit/)
  - `man pastebinit`
