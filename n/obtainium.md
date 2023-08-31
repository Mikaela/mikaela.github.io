---
layout: null
permalink: /n/obtainium.html
sitemap: false
---

[Obtainium](https://github.com/ImranR98/Obtainium/) downloads apps directly from forge/whatever without need for app
stores and theoretically I can bootstrap it by copy-pasting the code block
below into it, especially on devices that Google doesn't smile upon.

- [Obtainium's latest release](https://github.com/ImranR98/Obtainium/releases/latest)

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Importable app list](#importable-app-list)
- [Individually added apps](#individually-added-apps)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Importable app list

```
https://telegram.org
https://github.com/pilot51/voicenotify
https://github.com/simplex-chat/simplex-chat
https://github.com/ImranR98/Obtainium
https://github.com/Tobi823/ffupdater
https://github.com/billthefarmer/editor
https://github.com/Neamar/KISS
https://github.com/svenjacobs/leon
https://github.com/michaeltroger/greenpass-android
https://github.com/krille-chan/fluffychat
https://f-droid.org/packages/org.fdroid.fdroid
https://github.com/vector-im/element-android
https://github.com/Telegram-FOSS-Team/Telegram-FOSS
https://store.steampowered.com
https://signal.org
https://gitlab.com/AuroraOSS/AuroraStore
https://github.com/bitwarden/mobile
https://git.frostnerd.com/PublicAndroidApps/smokescreen/-/releases
https://github.com/celzero/rethink-app/releases
```

Note to self: to turn Obtainium export like this or close enough to manually
cut it:

```bash
cat obtainium-export-1693463035816.json | jq -s | \grep 'url'
```

## Individually added apps

These apps must be added individually for whatever reason rather than mass imported:

- https://appgallery.huawei.com/app/C27162
  - Huawei App Gallery
- https://github.com/vector-im/element-x-android
  - Element X Android, track-only as unsupported due to AAB
    - [Obtainium#795: support app bundles](https://github.com/ImranR98/Obtainium/issues/795)
