---
title: EasyEffects configuration
excerpt:
  I like EasyEffects to have autogain and limiter while I also wish to remember
  how to use mono audio for when one ear is plugged or something.
layout: mini
permalink: /n/easyeffects.html
sitemap: true
lang: en
robots: noai
---

_{{ page.excerpt }}_

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Global autostart](#global-autostart)
- [Effects](#effects)
  - [Mono audio](#mono-audio)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Global autostart

`/etc/xdg/autostart/com.github.wwmm.easyeffects.desktop`

```desktop
# This became just copy-paste from easyeffect's own autostart desktop entry
[Desktop Entry]
Type=Application
Name=com.github.wwmm.easyeffects
X-XDP-Autostart=com.github.wwmm.easyeffects
Exec=flatpak run --command=easyeffects com.github.wwmm.easyeffects --service-mode --hide-window
X-Flatpak=com.github.wwmm.easyeffects
```

## Effects

In the Effects tab of Effects tab (top and bottom),

Add effect

- Autogain
- Limiter

Based on my experience without additional configuration this will make using
YouTube Music more pleasant and not require touching volume buttons constantly.

### Mono audio

Add effect `Stereo Tools`, under `Stereo Matrix` set `Mode` to
`LR > L+R (Mono Sum L+R)`.

- [askubuntu](https://askubuntu.com/questions/1439652/how-can-i-downmix-stereo-audio-output-to-mono-in-pipewire-on-22-10/1441611#1441611)
  via
  [fedora discourse](https://discussion.fedoraproject.org/t/downmixing-stereo-audio-to-mono-audio/74982/3)
  which are more difficult for me than just remembering
  `aminda.eu/n/easyeffects`.
