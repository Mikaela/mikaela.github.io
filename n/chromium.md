---
title: Chromium launch flags
excerpt:
  List of Chromium terminal flags that I keep forgetting and missing
  occassionally.
layout: mini
permalink: /n/chromium.html
redirect_from:
  - /n/chromiumflags.html
  - /n/chromeflags.html
sitemap: true
lang: en
robots: noai
---

# Chromium terminal flags

- `--ozone-platform=wayland` - Start with `wayland` instead of `X11`. For
  automatic try `--ozone-platfor-hintm=auto` instead
- `--disk-cache-dir='/dev/null'` - Disable disk cache (Chromium equivalent of
  `browser.cache.disk.enable;false`)
- `--enable-features=WaylandWindowDecorations` - Wayland title bar etc.? No
  idea, everything just has it. TODO!
- `--profile-directory=Default` - Chromium profile. Doesn't match the profile
  name specified in profile manager, since the first one is always Default?
- `--no-startup-window` - Starts in the background (tray if enabled?). I have no
  idea where is the documentation or where did I find this for my login scripts
  originally.
- `--app-id=` - when autostarting a PWA, this is the appid.
- `--app-run-on-os-login-mode=windowed` - when autostarting a PWA; this opens it
  in a PWA window. TODO: What are the other modes than `windowed`?
