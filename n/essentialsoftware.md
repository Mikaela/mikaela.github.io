---
title: Essential software and configuration on my systems
excerpt:
  This is just a quick personal reference so I don't have to guess and notice
  that I forgot something important.
layout: mini
permalink: /n/essentialsoftware.html
sitemap: true
lang: en
robots: noai
---

# Essential software for new systems

_{{ page.excerpt }}_

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Security](#security)
- [Usability](#usability)
- [Essential system configuration](#essential-system-configuration)
  - [Debian console](#debian-console)
  - [Terminus on Fedora](#terminus-on-fedora)
    - [Terminus on Arch Linux](#terminus-on-arch-linux)
  - [SSD](#ssd)
  - [BTRFS](#btrfs)
  - [Swap](#swap)
  - [sudo](#sudo)
  - [systemd presets](#systemd-presets)
  - [Debian](#debian)
    - [sources.list](#sourceslist)
    - [`/etc/apt/preferences.d/whatever`](#etcaptpreferencesdwhatever)
  - [sshd](#sshd)
  - [Encrypted DNS](#encrypted-dns)
  - [`/etc/xdg/autostart`](#etcxdgautostart)
  - [`aminda-*.{service,socket]`](#aminda-servicesocket)
- [Remember!](#remember)
  - [Accessing UEFI setup without key smashing](#accessing-uefi-setup-without-key-smashing)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Security

- `microcode` - propietary, but otherwise CPU holes are going to be gaping open.
  Refer to `tail -n +1 /sys/devices/system/cpu/vulnerabilities/*`
  - Debian calls this as `amd64-microcode` or `intel-microcode`
  - Arch knows them as `amd-ucode` or `intel-ucode` and won't load it for you,
    you will have to `initrd /intel-ucode.img` yourself instantly after `linux`
    and before `initrd /initramfs-linux-lts.img`...
- `ufw` for Deb-based or `firewalld` on Fedora (and Kali and Arch Linux, if you
  so choose in the last)
- `sshguard` for mitigating shared systems where others refuse to use keys
- `needrestart` for knowing when updates actually require services to be
  restarted or a kernel upgrade happens and requires reboot
  - Arch users may prefer `checkservices` from `archlinux-contrib`
- `molly-guard` so you won't accidentally `reboot` or `poweroff` production
  rather than local machine.
- `apt-listchanges` changelogs are worth knowing when updating.
- `apt-listbugs` known bugs are especially nice when performing bigger updates.
- `chrony` - security demands the time to be correct, Chrony supports NTS and is
  proper NTP server instead of just SNTP like systemd-timesyncd.
  - alternatively configure `systemd-timesyncd`
- `unbound` - my choice for both DNSSEC validating and DNS-over-TLS, even if I
  had it connect to upstream dns\[crypt\]proxy
  - alternatively configure `systemd-resolved`. Simultaneously
    `systemd-networkd` may be a good idea.
- `unattended-upgrades` or `dnf-automatic` so security updates are at least
  downloaded if not even directly installed (see configuration and systemd
  units!)
  - if `dnf-automatic`, consider
    `sudo systemctl enable dnf-automatic-install.{timer,service}` or at least
    `sudo systemctl enable dnf-automatic-download.{timer,service}`

## Usability

- `nvim git tmux zsh mosh` - good luck without these
- <del>if cryptographic operations are taking ages, consider something like
  `haveged`. It's controversial, so if there are no issues, don't install a
  random number generator.</del>
- userspace oom killer, may avoid frozen systems, much more pleasant than
  actually having to deal with a frozen system.
  - `earlyoom`
    - remember to `sudo systemctl enable --now earlyoom`
  - `systemd-oomd`
    - remember to `sudo systemctl enable --now systemd-oomd`
    - https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/oomd.conf.d
- `zram-tools` - small compressed swap in RAM
  - Remember to check configs! Fedora: `/etc/zram.conf`
  - `sudo systemctl enable --now zramswap.service zram-swap.service`
- `thermald` for additional help keeping system cool, especially intel
  - `sudo systemctl enable --now thermald`
- `vnstat` - help for observing bandwidth usage
- `yggdrasil` - essential for getting through Carrier Grade NAT whether there is
  IPv6 or not. Also gives static internal IPv6 reducing need for dynamic DNS.
- `tlp` - for laptop power management, especially ThinkPad.
  - `sudo tlp-stat | less`
  - `sudo systemctl enable --now tlp`

## Essential system configuration

Since software being present and doing nothing may not actually do anything.

### Debian console

- `sudo dpkg-reconfigure console-setup`
  - ensure UTF-8 and select Terminus
- `sudo dpkg-reconfigure keyboard-configuration`
  - compose key

### Terminus on Fedora

<!-- Don't move this, as it's the same as Debian above -->

After installing the package, adjust `/etc/vconsole.conf` e.g.:

```conf
KEYMAP="fi"
FONT="ter-v16v"
```

Maybe `sudo updatedb` and `locate ter-v16v` at first though?

#### Terminus on Arch Linux

<!-- Don't move this, as it's the same as Debian and Fedora above -->

See Fedora, but change the `FONT` to `"ter-132b"` instead.

### SSD

- `sudo systemctl enable --now fstrim.timer`
- check that `/etc/fstab` has `noatime` so every file access isn't written to
  the disk. BTRFS filesystems should also have `ssd` flag.
  - NEVER ENABLE `atime`, `relatime` or `norelatime` under the threat of
    suffering especially on BTRFS. I have been doing fine without it for years,
    it will not help any issue, unless you want read operations to cause writes
    and eat space...

### BTRFS

- The above applies, `/etc/fstab` **_must have_** `noatime`.
- `compress=zstd:0` may be helpful. It enables zstd compression, which is an
  integrated feature of BTRFS, with the default compression level (3 at the time
  of writing). The BTRFS devs are most likely wiser than me and can provide a
  reasonable balance between efficiency and CPU use.
  - Alternatively `compress-force=zstd:0` may be used, but that might bring
    extra CPU usage in compressing what cannot be compressed.
    - Test on Lumina: 20G free -> 24G free.
  - The compression will happen either the next time the file is written or can
    be manually triggered through `sudo btrfs filesystem defragment -r "$PWD"`
- For swapfiles on btrfs partition, e.g.
  `btrfs filesystem mkswapfile --size 8G /swap`

### Swap

Zramswap is not enough. 8 GB everywhere may be enough,
[summarizing Gentoo](https://wiki.gentoo.org/wiki/Handbook:AMD64/Full/Installation#What_about_swap_space.3F).

No swap partition and swap file is acceptable (consider SSD)? See above for
btrfs or as root

```bash
fallocate -l 8G /swap
chmod 600 /swap
mkswap /swap
swapon /swap
```

The `/etc/fstab` rule is: `/swap    none    swap    sw  0   0` and then it's
just a matter of `sudo swapon -a`

### sudo

- https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/sudoers.d

Consider these:

```sudoers
# Thanks Tails
Defaults timestamp_timeout=0
Defaults pwfeedback
Defaults lecture = always
```

Additionally Arch Linux should consider either

```sudoers
# Allow full sudo access to the group which is uncommented. The first is
# Debian.
#%sudoers ALL=(ALL:ALL) ALL
# Defaults to passwordless sudo on Debian.
#%wheel ALL=(ALL:ALL) ALL
```

### systemd presets

You are practically **_guaranteed horrible time especially on Debian_**, unless
`/etc/systemd/system-preset` has a `whatever.preset` saying `disable *` as some
distributions consider it a good idea to autostart every installed service by
default.

To return to the preset state of nothing autostarting, execute the **_dangerous
if you don't know what you are doing_** command `sudo systemctl preset-all`.

### Debian

Remember to install `apt-transport-tor`!

#### sources.list

The mirror to use is `https://deb.debian.org/debian`.

#### `/etc/apt/preferences.d/whatever`

```apt
# Copied from https://www.wireguard.com/install/ (2020-01-11)
# Default priority appears to be 500, so 90 results to unstable being
# used when the package is not available anywhere else
Package: *
Pin: release a=unstable
Pin-Priority: 90

Package: *
Pin: release a=unstable-debug
Pin-Priority: 90
```

### sshd

If nothing else, **_please_** at least

```
# ssh-keygen -t ed25519 -N "" -f /etc/ssh/ssh_host_ed25519_key
HostKey /etc/ssh/ssh_host_ed25519_key

LogLevel VERBOSE
PermitRootLogin prohibit-password
PasswordAuthentication no
AuthenticationMethods publickey
```

### Encrypted DNS

- https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/resolved.conf.d
- https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/unbound/unbound.conf.d

### `/etc/xdg/autostart`

Not having terminal autostarting for all users is pain.

- https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/xdg/autostart/kgx-tmux.desktop

```desktop
[Desktop Entry]
Terminal=true
Exec=kgx --command="bash --norc -c tmux"
Name=Tmux in Console
Icon=org.gnome.Console
```

### `aminda-*.{service,socket]`

They workaround either me or the distribution messing things up. While at it,
don't forget `/etc/sysctl.d`

- https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system

## Remember!

Not quite configuration, but I am not going to start inventing a new place for
it.

### Accessing UEFI setup without key smashing

- systemd: there is a `systemctl reboot --firmware-setup`
  ([spotted here](https://toot.io/@ProfessorCode@fosstodon.org/113009727720521254))
- Plasma: in `systemsettings` section `desktop session` there is a checkbox to
  _after next boot, enter UEFI settings_ (via
  [reply to that](https://sauna.social/@justin@toot.io/113011195378808998))
- Windows allows access to UEFI by pressing Shift while reboot
  ([said here](https://sauna.social/@halva@wetdry.world/113011439141055477)) or
  simply `shutdown -r -t 1 -fw` twice
  ([said here](https://infosec.exchange/@jernej__s/113012094181641667)).
- GNOME: in the reboot after 60 seconds menu, hold alt to get into boot options
  ([said here](https://chaos.social/@keywan/113012020348714057))
- In boot loader the command `fwsetup` should take you there
  ([said here](https://fedi.absturztau.be/notice/AlGqYz5GeJOQw9dfNo)). And
  anyone using either grub or systemd-bootd has probably seen the menu entry.
- efibootmgr: `efibootmgr —bootnext 0000 && reboot`
  ([said or implied here](https://infosec.exchange/@dodgybadger/113012265751917509))
