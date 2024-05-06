---
layout: null
permalink: /n/systemd-boot.html
redirect_from:
  - /n/systemd-bootd.html
  - /n/gummiboot.html
  - /n/dracut.html
  - n/uki.html
  - n/unifiedkernelimage.html
sitemap: false
published: false
---

```
1. Read https://kowalski7cc.xyz/blog/systemd-boot-fedora-32/ very helpful and base of this
2. Anaconda inst.sdboot
3.efi mounttaus /efi, fstab
4. Mkdir /efi/machine-id
5. systemd-boot-unsigned sdubby
6. cat /proc/cmdline
7. dracut asetukset
8. bootctl install
9. kernel-install add
10. dnf reinstall kernel-core? Ei liene tarpeen, koska uki?
11. Sudo bootctl
12. Reboot

Note protected packages. Shell-things, grub?

https://github.com/dracutdevs/dracut/issues/1995

lsinitrd /levykuva| less # tietoa sisällöstä
```
