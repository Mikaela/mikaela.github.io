---
layout: post
sitemap: false
comments: true
title: "Using reflector in Arch my way"
category: [english]
tags: [arch, linux, reflector, mirrors]
redirect_from:
  - /reflector.html
  - /arch-reflector.html
  - /antergos-reflector.html
  - /english/2015/10/09/arch-reflector.html
---

_Reflector is a tool that checks the most recently upgraded Arch Linux
mirrors and ranks them by speed and saves them to your mirrorlist._

**This is largely based on [ArchWiki page on reflector] which is licensed
in [GNU Free Documentation License 1.3 or later].**

[archwiki page on reflector]: https://wiki.archlinux.org/index.php/Reflector
[gnu free documentation license 1.3 or later]: https://www.gnu.org/copyleft/fdl.html

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
   mirrors by speed, and curl which you use in the second command
2. to download my reflector.service
   - differences to Arch Wiki version: requires network-online.target
     so you don't have to enable any wait-online services and uses only
     https mirrors.
3. enable the service so it's ran on boot
4. start it now so it checks the most recently updated mirrors and
   saves them to mirrorlist.
5. Check for updates & install them.

Do check the service itself at https://github.com/Mikaela/shell-things/raw/master/etc/systemd/system/reflector.service !

Bonus: edit `/etc/pacman.conf` and add the line:

```
NoExtract = etc/pacman.d/mirrorlist
```

so when you upgrade you won't get useless mirrorlist.pacnew file. **NOTE:**
it's intented to be `etc/pacman.d/mirrorlist` without the initial `/`,
because it's _relative_, not _absolute_, path.
