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

_Moved to [txt/obtainium.txt](/txt/obtainium.txt)!_

<!--

Note to self: to turn Obtainium export like this or close enough to manually
cut it:

```bash
cat obtainium-export-1693463035816.json | jq -s | \grep 'url'
```

-->

## Individually added apps

These apps must be added individually for whatever reason rather than mass imported:

- `https://appgallery.huawei.com/app/C27162`
  - Huawei App Gallery
- `https://github.com/vector-im/element-x-android`
  - Element X Android, track-only as unsupported due to AAB
    - [Obtainium#795: support app bundles](https://github.com/ImranR98/Obtainium/issues/795)
- `https://whatsapp.com/android`
  - WhatsApp, I didn't even try to import it in mass.
