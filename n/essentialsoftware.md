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
  - [SSD](#ssd)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Security

- `microcode` - propietary, but otherwise CPU holes are going to be gaping open. Refer to `tail -n +1 /sys/devices/system/cpu/vulnerabilities/*`
  - Debian calls this as `amd64-microcode` or `intel-microcode`
- `ufw` for Deb-based or `firewalld` on Fedora
- `sshguard` for mitigating shared systems where others refuse to use keys
- `needrestart` for knowing when updates actually require services to be restarted or a kernel upgrade happens and requires reboot
- `molly-guard` so you won't accidentally `reboot` or `poweroff` production rather than local machine.
- `apt-listchanges` changelogs are worth knowing when updating.
- `apt-listbugs` known bugs are especially nice when performing bigger updates.
- `chrony` - security demands the time to be correct, Chrony supports NTS and is proper NTP server instead of just SNTP like systemd-timesyncd.
  - alternatively configure `systemd-timesyncd`
- `unbound` - my choice for both DNSSEC validating and DNS-over-TLS, even if I had it connect to upstream dns\[crypt\]proxy
  - alternatively configure `systemd-resolved`. Simultaneously `systemd-networkd` may be a good idea.
- `unattended-upgrades` or `dnf-automatic` so security updates are at least downloaded if not even directly installed (see configuration and systemd units!)
  - if `dnf-automatic`, consider `sudo systemctl enable dnf-automatic-install.{timer,service}`
    or at least `sudo systemctl enable dnf-automatic-download.{timer,service}`

## Usability

- `nvim git tmux zsh` - good luck without these
- if cryptographic operations are taking ages, consider something like `haveged`. It's controversial, so if there are no issues, don't install a random number generator.
- userspace oom killer, may avoid frozen systems, much more pleasant than actually having to deal with a frozen system.
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
- `yggdrasil` - essential for getting through Carrier Grade NAT whether there is IPv6 or not. Also gives static internal IPv6 reducing need for dynamic DNS.
- `tlp` - for laptop power management, especially ThinkPad.
  - `sudo tlp-stat | less`
  - `sudo systemctl enable --now tlp`

## Offtopic system configuration

This is just too close to not mention here (and was besides in my planning issue):

### Debian-based

- `sudo dpkg-reconfigure console-setup`
  - ensure UTF-8 and select Terminus
- `sudo dpkg-reconfigure keyboard-configuration`
  - compose key

### SSD

- `sudo systemctl enable --now fstrim.timer`
- check that `/etc/fstab` has `noatime` so every file access isn't written to the disk. BTRFS filesystems should also have `ssd` flag.
