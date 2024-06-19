---
layout: mini
permalink: /n/systemd-boot.html
redirect_from:
  - /n/systemd-bootd.html
  - /n/gummiboot.html
  - /n/dracut.html
  - n/uki.html
  - n/unifiedkernelimage.html
sitemap: false
lang: en
---

This is mostly based on
[kowalski7.cc.xyz instructions](https://kowalski7cc.xyz/blog/systemd-boot-fedora-32/)
which also tells more clearly what to do. These are my notes on what I have done
on top of it and probably not very much comprehensible by others than me.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

  - [Installing Fedora?](#installing-fedora)
  - [Converting to systemd-bootd later](#converting-to-systemd-bootd-later)
- [REMOVE ME UPON CONFIRMING THE ABOVE IS CORRECT](#remove-me-upon-confirming-the-above-is-correct)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Installing Fedora?

Boot Anaconda with the flag `inst.sdboot` to not have to install systemd-boot
later.

## Converting to systemd-bootd later

1. `sudo mkdir /efi`
1. Edit `/etc/fstab` mmounting the EFI partition to `/efi`
1. `sudo mkdir $(cat /etc/machine-id)` also note the machine-id, it's used a
   lot.
1. `sudo dnf install systemd-boot-unsigned sdubby -y`
1. `cat /proc/cmdline` noting it, it will become included in `kernel_cmdline=""`
   in `/etc/dracut.conf.d/99-cmdline.conf` (or other freeform name as long as it
   ends to .conf?) Might also be worth it to note other dracut configuration
   files including defaults `/usr/lib/dracut/dracut.conf.d`
1. TODO BOOTCTL INSTALL FROM ARCH WIKI?
1. TODO `printf "\tsudo mkdir /boot/%b/%b\n" "$MACHINEID" "$EXPECTEDKERNEL"`
1. TODO
   `printf "\tsudo kernel-install add %b /lib/modules/%b/vmlinuz\n" "$EXPECTEDKERNEL" "$EXPECTEDKERNEL"`
1. The original instructions said to `sudo dnf reinstall kernel-core`, but this
   has deviated with systemd-uki. They also said to `sudo bootctl` to see if it
   got installed properly before...
1. `sudo reboot`
1. TODO: PROTECTED PACKAGES SHELL-THINGS!

I saw an instruction somewhere about `sudo lsinitrd` displaying what is within
the image, but that doesn't seem to be the case for UKI. TODO!

---

# REMOVE ME UPON CONFIRMING THE ABOVE IS CORRECT

1. Read https://kowalski7cc.xyz/blog/systemd-boot-fedora-32/ very helpful and
   base of this
2. Anaconda inst.sdboot 3.efi mounttaus /efi, fstab
3. Mkdir /efi/machine-id
4. systemd-boot-unsigned sdubby
5. cat /proc/cmdline
6. dracut asetukset
7. bootctl install
8. kernel-install add
9. dnf reinstall kernel-core? Ei liene tarpeen, koska uki?
10. Sudo bootctl
11. Reboot

Note protected packages. Shell-things, grub?

https://github.com/dracutdevs/dracut/issues/1995

lsinitrd /levykuva| less # tietoa sisällöstä

---
