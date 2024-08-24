---
title: Essential software on my systems
excerpt: This is just a quick personal reference so I don't have to guess.
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
- [Offtopic system configuration](#offtopic-system-configuration)
  - [Debian-based](#debian-based)
    - [Terminus on Fedora](#terminus-on-fedora)
    - [Terminus on Arch Linux](#terminus-on-arch-linux)
  - [Accessing UEFI setup without key smashing](#accessing-uefi-setup-without-key-smashing)
  - [SSD](#ssd)
  - [BTRFS](#btrfs)

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

- `nvim git tmux zsh` - good luck without these
- <del>if cryptographic operations are taking ages, consider something like
  `haveged`. It's controversial, so if there are no issues, don't install a
  random number generator.</del>
- userspace oom killer, may avoid frozen systems, much more pleasant than
  actually having to deal with a frozen system.
  - `earlyoom`
    - remember to `sudo systemctl enable --now earlyoom`
  - `systemd-oomd`
    - remember to `sudo systemctl enable --now systemd-oomd`
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

## Offtopic system configuration

This is just too close to not mention here (and was besides in my planning
issue):

### Debian-based

- `sudo dpkg-reconfigure console-setup`
  - ensure UTF-8 and select Terminus
- `sudo dpkg-reconfigure keyboard-configuration`
  - compose key

#### Terminus on Fedora

After installing the package, adjust `/etc/vconsole.conf` e.g.:

```conf
KEYMAP="fi"
FONT="ter-v16v"
```

Maybe `sudo updatedb` and `locate ter-v16v` at first though?

#### Terminus on Arch Linux

See Fedora, but change the `FONT` to `"ter-132b"` instead.

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
