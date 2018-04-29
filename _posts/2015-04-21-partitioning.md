---
layout: post
comments: true
title: "Note to self on partitioning"
category: [english]
tags: [english]
published: false
---

This post is mainly for me to document this. I usually have only / and
/home partitions (swapfile is on /), but UEFI also requires separate
/boot/efi and it probably doesn't hurt to train myself into making it on
older device.

* /boot
    * 512 MB [as recommended at ArchWiki](https://wiki.archlinux.org/index.php?title=Unified_Extensible_Firmware_Interface&oldid=365720#EFI_System_Partition)
    * FAT32
        * doesn't need to be FAT32 unless /boot/efi is on same partition
          and /boot/efi must be FAT32.
* /
    * BTRFS
* /home
    * BTRFS
* swap
    * 1024 MB
        * 1024 MB has been enough for me everywhere. The least amount of
          RAM that I encounter is on my VPS which has 489 MB of RAM.

BTRFS might not be ready for production, but my phone
([Jolla](https://jolla.com) uses it and I haven't had any more serious
issues than:

* Doesn't support swapfiles (that is why I have swap partition)
* Jolla: [BTRFS balancing is required sometimes](https://together.jolla.com/question/30822/root-and-home-disks-full-and-causing-various-problems/)
* Laptop: when battery has ran out, [Antergos] has got stuck booting and
  I have had to `btrfs check --repair /dev/sdX` (where X is / and /home
  separately) before it starts booting again.
