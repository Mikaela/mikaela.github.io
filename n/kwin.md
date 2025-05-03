---
title: Useful KDE window rules
excerpt:
  KDE Window rules (kwin?) are very helpful when windows just don't align to
  your wishes, especially on small displays like Steam Deck or when your games
  launch positioned wrong or your gamescope fullscreen flag just gets ignored.
layout: mini
permalink: /n/kwin.html
redirect_from:
  - n/windowrules.html
  - n/kdewindowrules.html
sitemap: true
lang: en
robots: noai
---

_{{ page.excerpt }}_

First step is opening `LC_ALL=C.UTF-8 systemsettings`, scrolling down to
`Apps & Windows` where there is `Window Management` which opens a sidebar with
`Window Rules`.

Alternatively one can just second click any titlebar, choose more actions and
select either `Window specific special settings` or
`App specific special settings` (backtranslated from Finnish).

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Gamescope](#gamescope)
- [All apps](#all-apps)
- [FanFicFare](#fanficfare)
- [GNOME Console](#gnome-console)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Gamescope

My first papercut that I thought for a longer time on Fedora Kinoite (instead of
SteamOS) on Steam Deck was that my games with Heroic Launcher were focusing
wrong, partially across the screen. A few times I just double clicked the
titlebar to maximize it, but then I realized I can right click the window,
select the more actions and make rules for the window. Of course the add rule
from `systemsettings` would work too.

- Description: `settings for gamescope`
- Windows class (application): `Exact match`: `gamescope`
- Match whole window class: `Yes`
- Window types: `All selected`
- _Add Property_, _Size & Position_:
- Initial placement: `Force` `Maximized`
  - _Originally I went just with this, but then I realized that I can fix
    gamescope ignoring `--fullscreen` flag with the next property:_
- _Add Property_, _Size & Position_:
- `Fullscreen`: `Apply initially` `Yes`

## All apps

My Steam Deck has a small display and I generally use it docked to TV, so why
not maximize everything by another rule?

- Description: `everything?`
- Windows class (application): `Unimportant`: ``
- Match whole window class: `Yes`
- Window types: `Normal window`
- _Add Property,_ _Size & Position_
- Initial placement: `Force` `Maximized`

And there is one papercut less on enjoying Fedora Kinoite on Steam Deck. I think
this would also work with SteamOS, but that launches to game mode aka big
display mode anyway, so it's unnecessary.

Offtopic lifehack:

```bash
mkdir -p ~/.config/autostart/
ln -nsfv /var/lib/flatpak/exports/share/applications/com.heroicgameslauncher.hgl.desktop ~/.config/autostart/
ln -nsfv /var/lib/flatpak/exports/share/applications/com.valvesoftware.Steam.desktop ~/.config/autostart/
```

Next login you will autostart Heroic Games and Steam. I suggest visiting Heroic
Games settings to start minimized so it will background update games and Steam
settings to start in big picture mode, so you will have Steam Deck like
experience even without SteamOS.

With Heroic Games your mileage may vary as some games want minimizing Steam for
controller to work, others want Steam to be quit.

## FanFicFare

Funnily this is the first window rule I remember making on my main laptop
regarding FFF's browser cache feature.

- Description: `Calibre FFF on top`
- Windows class (application): `Unimportant`: ``
- Match whole window class: `Yes`
- Window types: `Normal window`
- _Add Property_
- Window title: `Exact match`: `Downloading metadata for stories`
- _Add Property_, _Arrangement & Access_
- Keep above other windows: `Force` `Yes`

## GNOME Console

I don't remember making these settings, but they seem to be working?

- Description: `Preferences for org.gnome.Console`
- Windows class (application): `Exact match`: `kgx org.gnome.Console`
- Match whole window class: `Yes`
- Window types: `All selected`
- _Add Property_ _Size & Position_
- Position: `Apply initially`: `768` x `432`
- _Add Property_, _Size & Position_
- Size: `Apply initially`: `768` x `432`

And my GNOME Console aka `kgx` launches on bottom right of the display.
