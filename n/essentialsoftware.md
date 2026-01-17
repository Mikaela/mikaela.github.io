---
title: Essential software and configuration on my systems
excerpt:
  This is just a quick personal reference so I don't have to guess and notice
  that I forgot something important.
layout: mini
permalink: /n/essentialsoftware.html
redirect_from: /n/pipx.html
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
  - [pipx](#pipx)
  - [Homebrew](#homebrew)
- [Fedora Atomic](#fedora-atomic)
  - [`rpm-ostree install` everywhere](#rpm-ostree-install-everywhere)
  - [`rpm-ostree kargs`](#rpm-ostree-kargs)
  - [Situational `rpm-ostree install`](#situational-rpm-ostree-install)
  - [Flatpaks](#flatpaks)
    - [Alarms](#alarms)
    - [Communication](#communication)
    - [Gayming](#gayming)
      - [Flatpakked Steam for the flatpak-unaware](#flatpakked-steam-for-the-flatpak-unaware)
    - [General purpose](#general-purpose)
    - [Office](#office)
    - [YouTube](#youtube)
  - [Snaps](#snaps)
    - [Discord rich presence ipc socket](#discord-rich-presence-ipc-socket)
  - [Other essential atomic/kinoite/flatpak/gayming reading](#other-essential-atomickinoiteflatpakgayming-reading)
- [Essential system configuration](#essential-system-configuration)
  - [Debian console](#debian-console)
  - [Terminus on Fedora](#terminus-on-fedora)
    - [Terminus on Arch Linux](#terminus-on-arch-linux)
  - [SSD](#ssd)
  - [BTRFS](#btrfs)
  - [Swap](#swap)
  - [sudo](#sudo)
    - [The `sudo` lecture for reference](#the-sudo-lecture-for-reference)
  - [systemd presets](#systemd-presets)
  - [Debian](#debian)
    - [sources.list](#sourceslist)
    - [`/etc/apt/preferences.d/whatever`](#etcaptpreferencesdwhatever)
  - [sshd](#sshd)
  - [Encrypted DNS](#encrypted-dns)
  - [`/etc/xdg/autostart`](#etcxdgautostart)
  - [`aminda-*.{service,socket}`](#aminda-servicesocket)
  - [systemd sockets](#systemd-sockets)
    - [firewalld for systemd sockets](#firewalld-for-systemd-sockets)
- [Remember!](#remember)
  - [Accessing UEFI setup without key smashing](#accessing-uefi-setup-without-key-smashing)
  - [Recovering selinux policy issues](#recovering-selinux-policy-issues)
  - [Removing all flatpaks](#removing-all-flatpaks)
  - [rsync](#rsync)
  - [VeraCrypt](#veracrypt)

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
- `setroubleshoot` on distributions using it gives graphical notifications when
  SELinux has a security warning and thus hints that it might be a good idea to
  take a look at journalctl to see whether it's something that requires action
  either incorrect rule or actually nefarious activity.
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
- `unattended-upgrades`, `dnf-automatic` or `rpm-ostreed-automatic` so security
  updates are at least downloaded if not even directly installed (see
  configuration and systemd units!)
  - if `dnf-automatic`, consider
    `sudo systemctl enable dnf-automatic-install.{timer,service}` or at least
    `sudo systemctl enable dnf-automatic-download.{timer,service}`
  - for `rpm-ostree`, `systemctl enable rpm-ostreed-automatic.timer --now`
    - Remember to check `/etc/rpm-ostreed.conf`, it should say
      `AutomaticUpdatePolicy=stage` and likely `LockLayering=false` under
      `[Daemon]`. Alternatively `AutomaticUpdatePolicy=apply` for more
      excitement in life in form of automatic reboots.

## Usability

- `nvim git tmux zsh mosh` - good luck without these
- <del>if cryptographic operations are taking ages, consider something like
  `haveged`. It's controversial, so if there are no issues, don't install a
  random number generator.</del> Should be unnecessary since kernel 5.6, but
  **_Debian 13 sddm regardless wants it._**
  - If you install `haveged`, please also `sudo systemctl enable --now rngd`
    from `rng-tools` (Fedora, Arch?) or `rng-tools5` (Debian) together to ensure
    quality, but those shouldn't be required on 5.6 and later either.
- userspace oom killer, may avoid frozen systems, much more pleasant than
  actually having to deal with a frozen system.
  - `earlyoom`
    - remember to `sudo systemctl enable --now earlyoom`
  - `systemd-oomd`
    - remember to `sudo systemctl enable --now systemd-oomd`
    - https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/oomd.conf.d
- `thermald` for additional help keeping system cool, especially intel
  - `sudo systemctl enable --now thermald`
- `vnstat` - help for observing bandwidth usage
- `yggdrasil` - essential for getting through Carrier Grade NAT whether there is
  IPv6 or not. Also gives static internal IPv6 reducing need for dynamic DNS.
- `tlp` - for laptop power management, especially ThinkPad.
  - `sudo tlp-stat | less`
  - `sudo systemctl enable --now tlp`
- `zram` - for compressing RAM and getting a bit more breathing room before
  userspace oom killer hits.
  - Fedora: `sudo dnf install zram-generator zram-generator-defaults`
  - Debian: `sudo apt install systemd-zram-generator`
  - To check that it works `zramctl`. May take a while after
    `sudo systemctl reload` or a reboot.
- `inxi` - system information script (and dependencies)

<!--
- `zram-tools` - small compressed swap in RAM
  - Remember to check configs! Fedora: `/etc/zram.conf`
  - `sudo systemctl enable --now zramswap.service zram-swap.service`
-->

### pipx

pipx automatically creates virtualenvs and is basically a package manager for
apps written in Python. Here is a small list to remember in no particular order.

- (`pipx install "reuse @ git+https://github.com/fsfe/reuse-tool.git"`)
  - Refer to [n/reuse](/n/reuse.html), development version. Package manager
    version is generally good enough.
- `pipx install "yt-dlp[default] @ git+https://github.com/yt-dlp/yt-dlp.git@master"`
  - Downloader for multiple online video services, development version.
- `pipx install xkcdpass`
  - `correct horse battery stable` needs no introduction, the possibilities are
    nearly endless with `xkcdpas --help`. E.g.
    - `xkcdpass --wordfile eff-long,fin-kotus --valid-chars '[a-z]' --delimiter ',' --case random`
    - `UNLAWFUL,OPPIRAHAT,astonish,ruvettua,JOUTAVA,pultti`
- (`pipx install pre-commit`)
  - Synced pre-commit hooks for git, probably in all my repositories by now.
    However I would install it from system package manager instead.
- `pipx install "yle-dl[extra] @ git+https://github.com/aajanki/yle-dl"`
  - Downloader for `{areena,arenan}.yle.fi`, Finnish public broadcaster web
    portal.
- `pipx install "git+https://github.com/syncplay/syncplay.git"`
  - Client (and server) for synchronising playback of a file. All parties need
    the same file, but seeking, playing and pausing are synchronized. Mpv
    recommended!

Just remember to `pipx upgrade-all` occassionally!

### Homebrew

In order to avoid having to use `rpm-ostree`, Homebrew is practical for some
tools and applications.

```
sudo mkdir /home/linuxbrew
sudo chown -R $(whoami):$(whoami) /home/linuxbrew
cd /home/linuxbrew
git clone https://github.com/Homebrew/brew .linuxbrew
# The following is only applicable to Fedora Atomic or other distributions with /var/home instead of /home
# Make a copy to avoid conflicts
cp /home/linuxbrew/.linuxbrew/bin/brew /home/linuxbrew/.linuxbrew/bin/brew2
# Replace "pwd -P" with just "pwd" so bottles and all work.
# Credit: https://github.com/orgs/Homebrew/discussions/1282#discussioncomment-1281288
sed -i 's/pwd\ \-P/pwd/g' /home/linuxbrew/.linuxbrew/bin/brew2
# Use the modified copy instead of the original.
brew2 install aircrack-ng bat bat-extras btop htop inxi ipfs llvm mtr neovim nmap node pipx pre-commit qrencode ripgrep ruby smartmontools weechat
```

Additionally I have helpful tools for making this easier.

- [Wrapper script automaticising things after cloning](https://gitea.blesmrt.net/mikaela/scripts/src/branch/master/bash/usr-local-bin/homebrew)
- systemd services for
  [setting permissions](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system/linuxbrew-permissions.service)
  ([overriding user/group](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system/linuxbrew-permissions.service.d/user-group-override.conf))
  and
  [automatic updates](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system/linuxbrew-update.service)
  ([specifying user](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system/linuxbrew-update.service.d/00-user.conf))
  - [linuxbrew-permissions.timer](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system/linuxbrew-permissions.timer)
    [linuxbrew-update.timer](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system/linuxbrew-update.timer)
- [System update script aware of the above systemd units](https://gitea.blesmrt.net/mikaela/scripts/src/branch/master/bash/deb-update.bash)

## Fedora Atomic

_By which I mean Fedora Kinoite unless otherwise specified._ A system where
everyone runs the same image, except that as this section shows, I add to it a
bit...

### `rpm-ostree install` everywhere

```bash
# Ensure third party Fedora repos are available, this is part of the KDE
# welcome prompt, maybe?
sudo fedora-third-party enable

# Layer packages I need on top of the base image.
sudo rpm-ostree install android-tools bat chromium cronie cronie-anacron duperemove foot foot-terminfo gamescope git-lfs iwd mangohud mosh mpv oidentd oxygen-cursor-themes plocate rng-tools setroubleshoot snapd sshguard symlinks syncthing terminus-fonts-console tmux tor torsocks unbound zsh

# Enable automatic updates (check /etc/rpm-ostreed.conf for
# AutomaticUpdatePolicy=stage (or apply for automatic reboots at probably
# unwanted times & difficulties with encryption passphrase) and
# LockLayering=false unless you want to be stuck with the base image)
sudo systemctl enable rpm-ostreed-automatic.timer --now

# Apply changes now, fix permission for my /root config
sudo rpm-ostree apply-live && sudo chmod a+x /var/roothome

# footclient (or server) for all users on-demand. Requires
# the previous command or reboot
sudo systemctl --global enable foot-server.socket

# Uninstall all flatpaks (to get rid of Fedora remote and unnecessary apps,
# refer to later section of this page for more relevant flatpaks).
# (Yes, the invalid command is intentional, fix it to acknowledge reading and
# understanding.)
sudo flatpak uninstall --all --assumeno
```

Consider also adding
[RPMFusion through their OSTree instructions](https://rpmfusion.org/Howto/OSTree).

- The _Major releases_ uninstalling and installing is especially important so it
  switches from local package to layered package, which also affects all other
  third party repositories such as `google-chrome-stable` if it was added. While
  there is repository breakage risk stopping system upgrades, at least it will
  upgrade itself as opposed to errorring about being a local not upgraded
  package in the future.
- You need it when using e.g. Broadcom WiFi or `mpv` and receiving
  `Failed to initialize a decoder for codec 'hevc'.`

### `rpm-ostree kargs`

```bash
# REMOVE ssd FROM rootflags if not on SSD!
sudo rpm-ostree kargs --delete=rhgb --delete=quiet --delete=rootflags=subvol=root --append=rootflags=subvol=root,noatime,compress-force=zstd:0,ssd --append=net.ifnames=0 --append=rd.shell=0 --append=rd.emergency=halt --append=btusb.enable_autosuspend=0 --append=btusb.reset=1 --append=mitigations=auto,nosmt
```

- `rhgb quiet` - These enable graphical boot screen and suppressing more verbose
  kernel messages (the other text than `[OK]` from systemd)
- `rootflags=` - the `/etc/fstab` entries for `/` as the file has no effect on
  `/` on Atomic. The parameters are explained later on this page.
- `net.ifnames=0` - disables the predictable interface names returning to `eth0`
  and `wlan0`. People say the only predictable thing about them is amount of
  complaints.
- `rd.shell=0 rd.emergency=halt` - hardening to not enter debug shell upon wrong
  encryption password
- `btusb.enable_autosuspend=0` - disables Bluetooth devices suspending
  automatically. In general suspending them would be a good idea, but in
  practice I keep losing all Bluetooth devices after a few hours without
  rebooting and then I have to reboot through KDE Connect for everything to work
  again.
- `btusb.reset=1` send a HCI reset command to Bluetooth devices on connection
  initialization.
- `mitigations=auto,nosmt` - enable automatic mitigations for CPU
  vulnerabilities including disabling hyperthreading (not default).
- `lockdown={confidentiality,integrity}` - hardening from secure boot being
  enabled, locks down realtime changes to kernel including unsigned kernel
  modules and in form of blocking default `osnoise` increases hardware
  noisiness.

### Situational `rpm-ostree install`

- `chromium` although, mentioned above, may be unhappy should its configuration
  already exist before staging it. I am particularly suspicious of
  `/etc/{chromium,chromium-browser}`, which may be caused by my
  `init-browser-policies.bash` when executed too early.
- In general `neilalexander`'s yggdrasil copr makes life easier with
  `sudo rpm-ostree install yggdrasil`
- For ThinkPads: `sudo rpm-ostree install tlp tlp-rdw` is good for battery
- For NVIDIA propietary drivers with `sudo fedora-third-party enable`:
  `sudo rpm-ostree install akmod-nvidia xorg-x11-drv-nvidia-cuda`
  - This also requires
    `sudo rpm-ostree kargs --append=rd.driver.blacklist=nouveau --append=modprobe.blacklist=nouveau --append=nvidia-drm.modeset=1`
    and suggests keeping an eye on the source page
    [rpmfusion howto nvidia#ostree](https://rpmfusion.org/Howto/NVIDIA#OSTree_.28Silverblue.2FKinoite.2Fetc.29)
- For Steam Deck and other handhelds with their copr:
  `sudo rpm-ostree install hhd hhd-ui`
- rpmfusion packages
  - For Broadcom WiFi with `rpmfusion-nonfree` enabled:
    `sudo rpm-ostree install akmod-wl kernel-devel`
  - DVD playback: `sudo rpm-ostree install rpmfusion-free-release-tainted` and
    `sudo rpm-ostree install libdvdcss`
  - Bluetooth APTX HD codec: `sudo rpm-ostree install pipewire-codec-aptx` which
    allows better quality playback with some devices e.g. Fairbuds XL.
  - For
    [hevc playback support](https://discussion.fedoraproject.org/t/how-do-i-enable-h265-hevc-playback-in-fedora-41-or-42-2025/147870),
    `sudo rpm-ostree install libavcodec-freeworld`
  - VirtualBox? Also at rpmfusion,
    `sudo rpm-ostree install akmod-VirtualBox VirtualBox`

### Flatpaks

These also affect non-Fedora-Kinoite for which my first production installation
was on Steam Deck and upon learning of `flatpak uninstall --all`, this section
got out of paw so it got cut a bit. The default flatpaks can be figured out
[from this file](https://pagure.io/pungi-fedora/blob/main/f/fedora.conf).

Always remember that you **_don't paste commands to terminal directly, use a
text editor in the middle instead!_**

```bash
# Considering everything is installed from there, it should exist
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# I need Nheko
sudo flatpak remote-add --if-not-exists nheko-nightly https://nheko.im/nheko-reborn/nheko/-/raw/master/nheko-nightly.flatpakrepo
```

#### Alarms

```bash
sudo flatpak install --assumeyes flathub org.kde.kclock org.kde.kteatime
```

- KClock is the Plasma Mobile clock app featuring what you would expect from a
  smart phone clock app.
- KTeaTime is tea timer in the tray bar and more likely to work than Apple Siri
  going to understand shortcut voice command "musta tee" ("black tea") correctly
  instead of "musta tie" ("black road") or "musta työ" ("black way)") or just
  "musta" ("black").

#### Communication

```bash
sudo flatpak install --assumeyes nheko-nightly im.nheko.Nheko//master
sudo flatpak install --assumeyes flathub im.dino.Dino info.mumble.Mumble org.briarproject.Briar org.gajim.Gajim org.signal.Signal org.squidowl.halloy org.telegram.desktop
```

- Mumble is a FOSS VoIP app Discord tries to challenge and although it has
  gaming features I use it for calling and know more people using it for
  podcasting than calling
- Dino is a modern XMPP client
- Briar is a P2P messenger using Tor or LAN, no bluetooth on desktop yet?
- Gajim is XMPP client that does everything
- Signal is E2EE messenger
- Halloy is a modern IRC client
- Telegram is a common chat-app although not that secure
- Nheko nightly is simply the best Matrix client

#### Gayming

```bash
sudo flatpak install --assumeyes flathub com.heroicgameslauncher.hgl com.valvesoftware.Steam com.valvesoftware.Steam.CompatibilityTool.Proton-GE com.valvesoftware.SteamLink eu.usdx.UltraStarDeluxe
# Note branch numbers!
sudo flatpak install --assumeyes flathub org.freedesktop.Platform.VulkanLayer.MangoHud//24.08 org.freedesktop.Platform.VulkanLayer.gamescope//24.08
```

- HeroicGames supports GOG and Epic Games (and Amazon)
- Steam needs no explanation
- Proton GE is improved version of Proton, the WINE based compatibility layer
  for playing Windows games and probably needs no introduction either
- FOSS Karaoke, possibly fun to try sometime, once courage is gathered.
  Spiritual successor of PlayStation 2 SingStar with option for own songs?
- Remote playing for other LAN Steam instances
- MangoHud and gamescope can be used by Heroic Games or manually in Steam (see
  gayming README below), but they might require specific version or branch, so
  after the dualslash change the branch from `24.08` if they decide to update to
  require a newer version.

##### Flatpakked Steam for the flatpak-unaware

Looking at you, handhelddaemon, 2025-05-28.

```
mkdir -vp $HOME/.local/share/
ln -nsfv $HOME/.var/app/com.valvesoftware.Steam/.local/share/Steam $HOME/.local/share/Steam
ln -nsfv $HOME/.var/app/com.valvesoftware.Steam/.steam $HOME/.steam
```

#### General purpose

```bash
sudo flatpak install --assumeyes flathub app.devsuite.Ptyxis com.calibre_ebook.calibre com.dropbox.Client com.github.tchx84.Flatseal com.github.wwmm.easyeffects com.nextcloud.desktopclient.nextcloud com.rafaelmardojai.Blanket de.haeckerfelix.Shortwave it.mijorus.gearlever me.kozec.syncthingtk org.fedoraproject.MediaWriter org.gnome.eog org.kde.elisa org.kde.kate org.kde.kcalc org.kde.kolourpaint org.kde.krdc org.pulseaudio.pavucontrol org.kde.kwrite org.kde.okular org.qbittorrent.qBittorrent org.torproject.torbrowser-launcher
```

- Ptyxis reminds me of a Windows Terminal for Linux
- Calibre is the VLC of ebooks, especially if you have an ebook reader
- Dropbox is a file synchronization app using the cloud :(
- Flatseal is a permission/override manager GUI, although one is integrated with
  KDE Plasma systemsettings
- Easyeffects features autogain, limiter, equalizer amongst other useful audio
  features. I wasn't sure whether to include it here, but I do autostart it most
  of the time...
- NextCloud is selfhosted Google/Office/whatever suite and the desktop client is
  kind of Dropbox.
- Blanket gives nice sounds for e.g. focusing, white and nature noise inclued
- Shortwave is Radio Browser using Internet Radio app and woof approves having
  it at paw
- Gearlever makes appimages less annoying a bit
- Syncthing-gtk is a GUI for syncthing providing desktop notifications without
  browser.
- Spread the love of Fedora Kinoite by having Fedora Imagewriter!
- Eye of GNOME is GNOME picture viewer and if I cannot `eog image.png` I get
  confused
- Elisa is the Fedora Kinoite shipped music player
- Kate is my go-to text editor when I want a GUI (otherwise it's the rpm-ostree
  nvim) and if the flatpak didn't exist (and if I wouldn't likely be using nvim
  where flatpaks have no power), I would make it yet another rpm-ostree
  install...
- Kcalc is calculator
- Kolourpaint seems to be KDE's response to MS Paint, shipped with Fedora
  Kinoite
- Krdc is Fedora Kinoite shipped remote desktop client (VNC, RDP)
- pavucontrol is the volume manager and needs no introduction especially if one
  looks at it
- kwrite is the KDE text editor
- Okular is the KDE document viewer
- qBittorrent just is the best way to download Linux images since the Fedora
  Media Writer doesn't use P2P and may be a burden for servers, while it does
  have the capacity to write any image and also restore the USB stick
  afterwards.
- Tor Browser just must exist everywhere just in case!

#### Office

```bash
sudo flatpak install --assumeyes flathub org.kde.skanpage org.libreoffice.LibreOffice org.libreoffice.LibreOffice.BundledExtension.Voikko
# May be huge, especially TeXlive
sudo flatpak install --assumeyes flathub org.freedesktop.Sdk.Extension.texlive org.kde.kile
```

- KDE Scanner app (in case of removing all flatpaks)
- LibreOffice is world-famous office suite
- Voikko is Finnish spellchecking support for it

#### YouTube

A too popular video/streaming service with ads rampant and Google fighting
adblockers. When sharing devices and not wanting to log in (I am paying for
YouTube Music Premium), a desktop client is starting to be more practical and
these show promise to my eyes:

```bash
sudo flatpak install --assumeyes flathub jp.nonbili.noutube org.kde.audiotube org.kde.plasmatube rocks.shy.VacuumTube
```

- `NouTube` is a wrapper for both YouTube and YouTube Music including adblocking
  and not requiring login.
- `AudioTube and PlasmaTube` are KDE desktop clients for both services, however
  the latter requires a Invidious or Piped instance so it has a bit of technical
  setup. It also functions as a PeerTube client though.
- `VacuumTube` is YouTube TV client with adblocking and controller support and
  may be practical for bigger screens or Steam Deck that is always connected to
  TV.

### Snaps

I heavily prefer flatpaks since they allow multiple simultaneous repositories as
opposed to Snap tying you into one at a time basically always meaning Canonical.

```bash
sudo snap install tldr discord vlc
# SECURITY WARNING! Allow Discord to detect open games (and everything else)
sudo snap connect discord:system-observe
```

- Discord - chat application focused on gayming and communities, propietary.
- Signal - least bad secure messenger for now. I have two phones, phone numbers
  and thus Signal accounts, so it needs to be duplicated.
- TLDR - summarized usage instructions on terminal commands, when man is too
  much
- VLC - multimedia player. Verified on Snap, broken since ages ago on flatpak.

#### Discord rich presence ipc socket

Based on
[Discord flatpak instructions](<https://github.com/flathub/com.discordapp.Discord/wiki/Rich-Precense-(discord-rpc)#unsandboxed-applications>)

`mkdir -vp ~/.config/user-tmpfiles.d` and create a whatever `.conf` file there
containing the following perhaps without comments

```
# Make a symlink /run/user/$(id -u)/discord-ipc-0 pointing to
# /run/user/$(id -u)/snap.discord/discord-ipc-0 so non-snaps recognise it
L %t/discord-ipc-0 - - - - snap.discord/discord-ipc-0
# Point the flatpak Discord location to Snap too, whether it works or not.
L %t/app/com.discordapp.Discord/discord-ipc-0 - - - - %t/snap.discord/discord-ipc-0
```

The linked flatpak instructions say
`systemctl --user enable --now systemd-tmpfiles-setup.service`, but I had to
reboot (relogin would most likely be enough).

### Other essential atomic/kinoite/flatpak/gayming reading

- [init-browser-policies.bash](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/init-browser-policies.bash)
  for setting up Firefox policies. It's shipped by default in Kinoite, otherwise
  I would list it above.
- [gayming/README.md](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/gayming/README.md)
  for earlier or other notes that didn't fit here or I don't want to duplicate
  then.

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

<!--Zramswap is not enough.--> 8 GB everywhere may be enough,

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

- [sudoers.d in my "shell-things" (dotfiles)](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/sudoers.d)

Consider these:

```sudoers
# Thank you Tails, for first leading me to these:

# Always ask for password
Defaults timestamp_timeout=0

# Display asterisks when entering passwords (as opposed to nothing)
Defaults pwfeedback

# When using sudo, always display the lecture (see below Arch)
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

#### The `sudo` lecture for reference

```txt
We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.
```

I consider the second point especially important and wonder if it could save
less experienced users from clickfix by looking scary.

In my root shell, I like to append

> Additionally you shouldn't be logging in as root directly.

while I keep doing it anyway, but that is bad for auditing purposes as there
will not be a trace in logs who did what as root unlike with `sudo`.

### systemd presets

You are practically **_guaranteed horrible time especially on Debian_**, unless
`/etc/systemd/system-preset` has a `whatever.preset` saying `disable *` as some
distributions consider it a good idea to autostart every installed service by
default. I am unsure on whether this requires `sudo systemctl daemon-reload` to
apply.

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

Refer to my "shell-things" (dotfiles) for:

- [resolved.conf.d/](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/resolved.conf.d)
- [unbound.conf.d/](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/unbound/unbound.conf.d)

### `/etc/xdg/autostart`

Not having terminal autostarting for all users is pain. First
`sudo systemctl --global enable foot-server.socket`

- [footclient-tmux.desktop](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/xdg/autostart/footclient-tmux.desktop)

```desktop
[Desktop Entry]
Type=Application
Exec=footclient -m tmux
Icon=foot
Terminal=false
Name=Foot Client running tmux
```

### `aminda-*.{service,socket}`

They workaround either me or the distribution messing things up. While at it,
don't forget `/etc/sysctl.d`

- [my shell-things/dotfiles (naturally) on /etc/systemd/system](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/system)

### systemd sockets

Starting services on-demand rather than keeping them on all the time. Some of
these are already on this page, but to recap and have them all in one place:

```bash
# User services or sockets
sudo systemctl --global enable foot-server.socket
# System sockets
sudo systemctl enable --now ssh.socket sshd.socket avahi-daemon.socket systemd-oomd.socket oidentd.socket
```

Remember that systemd sockets are silly and listen only to `::` by default and
since system administrators not-so-uncommonly set that to only mean IPv6 in
order to avoid dotted-decimals, it may be desirable to have a
`/etc/systemd/system/socket.d/dualstack-bind.conf` with

```ini
[Socket]
BindIPv6Only=both
```

#### firewalld for systemd sockets

```bash
sudo firewall-cmd --add-service=ssh --permanent && sudo firewall-cmd --add-service=ssh --permanent --zone=home
sudo firewall-cmd --add-service=ident --permanent && sudo firewall-cmd --add-service=ident --permanent --zone=home
sudo firewall-cmd --add-service=mdns --permanent && sudo firewall-cmd --add-service=mdns --permanent --zone=home
sudo firewall-cmd --reload
```

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

### Recovering selinux policy issues

- The Fedora advice is `sudo fixfiles -B onboot`, but that didn't assist me.
- Boot with flags `enforcing=0 autorelabel` to temporarily have permissive mode
  and automatic fixing.
- What actually worked was booting with `enforcing=0` and `sudo restorecon -R /`

### Removing all flatpaks

```bash
sudo flatpak uninstall --all --assumeyes
```

Now that overwhelmingly sinking into them has been resolved, you can reinstall a
lot of them and feel overwhelmed again!

### rsync

You want to use `rsync` instead of `cp` when taking a final copy of a system
before reinstall?

```bash
# Abbreviatable as -aP?
rsync --progress --archive <source> <destination>
```

### VeraCrypt

In the beginning of 2025-06 VeraCrypt decided to not be my friend. The trick was
downloading appimage
[from their download page](https://veracrypt.io/en/Downloads.html), ensuring it
was signed with a key I trusted and had previously signed,
`5069 A233 D55A 0EEB 174A  5FC3 821A CD02 680D 16DE` and **_this is not how you
use VeraCrypt, Linux or sudo!_**

```bash
gpg --verify VeraCrypt-1.26.24-x86_64.AppImage.sig
mkdir VeraCrypt-1.26.24-x86_64.AppImage.config
# NO, WRONG!
sudo ./VeraCrypt-1.26.24-x86_64.AppImage
```

but the layered VeraCrypt package kept trying to run `/usr/sbin/true` constantly
asking for password since `Defaults timestamp_timeout=0` and even removing that
didn't help and theoretically this will only cause permissions issue for that
single portable appimage configuration directory created before...
