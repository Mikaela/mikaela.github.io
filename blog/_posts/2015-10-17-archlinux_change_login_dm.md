---
layout: post
comments: true
title: "Changing Display Manager (login screen) with Arch Linux"
category: [english]
tags: [arch, linux, display manager]
redirect_from:
  - /antergos-dm.html
  - /english/2015/10/17/archlinux_change_login_dm.html
  - /english/2015/10/17/antergos_change_login_dm.html
sitemap: false
---

_Also applies to other distributions based on it, how do you change the display
manager, aka login screen._

- `--needed` makes pacman not install packages that are already installed.
- uncommented line = line that doesn't begin with `#`.
- to change DM you don't need to reboot, you can also
  `sudo systemctl stop olddm` and `sudo systemctl start newdm`, but this logs
  you out.
- my personal recommendation is using LightDM if it works for you, otherwise
  sddm. I personally use LightDM, because sddm is missing support for
  `sudo passwd -de user`
  [sddm/sddm#472](https://github.com/sddm/sddm/issues/472)

## LightDM gtk greeter

- `sudo pacman --needed -S lightdm lightdm-gtk-greeter accountsservice numlockx`

Edit the file `/etc/lightdm/lightdm.conf` and find the uncommented line that
starts with `greeter-session=` and change it to
`greeter-session=lightdm-gtk-greeter`.

If you have keyboard with [numpad] you might want to enable Num Lock by default
by finding the uncommented line starting with `greeter-setup-script=` and
changing it to `greeter-setup-script=/usr/bin/numlockx on`. If there isn't
uncommented line anywhere in the file, just uncomment one or add it under the
commented line.

Then enable it by running `sudo systemctl enable -f lightdm` and reboot.

## sddm

- `sudo pacman --needed -S sddm`

SDDM is simple display manager for all desktop environments and is successor of
KDM which is the KDE Display Manager.

To create a config file and enable it for next reboot:

```
sddm --example-config | sudo tee /etc/sddm.conf
sudo systemctl enable -f sddm
```

The lines you might want to change are the one starting with `Nucmlock=` and I
recommend changing it to `Numlock=on` if you have the [numpad]. The other line
starts with `Current=` and is used to select the current theme. Available themes
can be seen with `ls /usr/share/sddm/themes`.

KDE users might also want to install `sddm-kcm` which gives GUI for controlling
sddm.

## gdm

- `sudo pacman --needed -S gdm`

The last display manager I am mentioning is the Gnome Display Manager and is
only for Gnome users and I am not so familiar with it and I believe using it is
just `sudo systemctl enable -f gdm`.

[numpad]: https://en.wikipedia.org/wiki/numpad
