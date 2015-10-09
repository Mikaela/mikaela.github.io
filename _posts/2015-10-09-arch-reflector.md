---
layout: post
comments: true
title: "Using reflector in Arch my way"
category: [english]
tags: [arch, linux, reflector, mirrors]
---

*Reflector is a tool that checks the most recently upgraded Arch Linux
 mirrors and ranks them by speed and saves them to your mirrorlist.*

**This is largely based on [ArchWiki page on reflector] which is licensed
in [GNU Free Documentation License 1.3 or later].**

[ArchWiki page on reflector]:https://wiki.archlinux.org/index.php/Reflector
[GNU Free Documentation License 1.3 or later]:http://www.gnu.org/copyleft/fdl.html

TL;DR commands:

<pre>
sudo pacman --needed -S reflector rsync curl
cd /etc/systemd/system/
sudo curl -LO https://github.com/Mikaela/shell-things/raw/master/etc/systemd/system/reflector.service
sudo systemctl enable reflector
sudo systemctl start reflector
sudo pacman -Syu
</pre>

(end of TL;DR and what you actually do)

1. Install reflector itself, additional depedency of rsync to rank the
   mirrors by speed, and url which you use in the second command
2. to download my reflector.service
    * differences to Arch Wiki version: requires network-online.target
      so you don't have to enable any wait-online services and uses only
      https mirrors.
3. enable the service so it's ran on boot
4. start it now so it checks the most recently updated mirrors and
   saves them to mirrorlist.
5. Check for updates & install them.

Do check the service itself at https://github.com/Mikaela/shell-things/raw/master/etc/systemd/system/reflector.service !
