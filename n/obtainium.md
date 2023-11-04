---
layout: null
permalink: /n/obtainium.html
sitemap: false
---

[Obtainium](https://github.com/ImranR98/Obtainium/) downloads apps directly from forge/whatever without need for app
stores and theoretically I can bootstrap it by copy-pasting the txt linked
below into it, especially on devices that Google doesn't smile upon.

- [Obtainium's latest release](https://github.com/ImranR98/Obtainium/releases/latest)

See also [2022-01-02 F-Droid Security Issues on privsec.dev](https://privsec.dev/posts/android/f-droid-security-issues/),
regardless of my list containing F-Droids. Regarding that, **prefer F-Droid
Basic over F-Droid** whenever possible (if nearby features aren't required)
as it addesses some issues such as targeting higher API version and having
automatic updates on Android 12+ (disclaimer: I am stuck on Android 11).

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Importable app list](#importable-app-list)
- [Third party F-Droid repositories](#third-party-f-droid-repositories)
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

## Third party F-Droid repositories

Aren't mass-importable sadly, but using Briar as an example:

- App Source URL: https://briarproject.org/fdroid
- Override Source: F-Droid Third-Party Repo
- App ID or Name: Briar

Upon adding it will become something like the link below.

## Individually added apps

These apps must be added individually for whatever reason rather than mass imported:

- `https://appgallery.huawei.com/app/C27162`
  - Huawei App Gallery. Huawei App Gallery seems require adding separately.
- `https://github.com/vector-im/element-x-android`
  - Element X Android, track-only as unsupported due to AAB
    - [Obtainium#795: support app bundles](https://github.com/ImranR98/Obtainium/issues/795)
- `https://whatsapp.com/android`
  - WhatsApp, I didn't even try to import it in mass.
- `https://briarproject.org/fdroid/repo?appId=org.briarproject.briar.android`
  - Briar. Third party F-Droid repo.
- `https://fdroid.frostnerd.com?appId=com.frostnerd.smokescreen`
  - Nebulo. Third party F-Droid repo.
