---
title: Obtainiun
excerpt:
  Obtainium downloads apps directly from forge/whatever without need for app
  stores and theoretically I can bootstrap it by copy-pasting the txt linked
  below into it, especially on devices that Google doesn't smile upon.
layout: mini
permalink: /n/obtainium.html
sitemap: true
lang: en
robots: noai
---

_{{ page.excerpt }}_

[Obtainium](https://github.com/ImranR98/Obtainium/) downloads apps directly from
forge/whatever without need for app stores and theoretically I can bootstrap it
by copy-pasting the txt linked below into it, especially on devices that Google
doesn't smile upon.

- [Obtainium's latest release](https://github.com/ImranR98/Obtainium/releases/latest)

See also
[2022-01-02 F-Droid Security Issues on privsec.dev](https://privsec.dev/posts/android/f-droid-security-issues/),
regardless of my list containing F-Droids. Regarding that, **prefer
[F-Droid Basic](https://f-droid.org/packages/org.fdroid.basic) over F-Droid**
whenever possible (if nearby features aren't required) as it addesses some
issues such as targeting higher API version and having automatic updates on
Android 12+.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Importable app list](#importable-app-list)
- [F-Droid repositories](#f-droid-repositories)
  - [Apps within 3rd party F-Droid repos](#apps-within-3rd-party-f-droid-repos)
- [App Stores](#app-stores)
- [Other noteworthy apps:](#other-noteworthy-apps)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Importable app list

- For apps that don't require API keys to be entered into Obtainium, see
  [txt/obtainium.txt](/txt/obtainium.txt).
- For apps that require GitHub or GitLab API key to be entered into Obtainium,
  see [txt/obtainium2.txt](/txt/obtainium2.txt)

## F-Droid repositories

Aren't mass-importable sadly.

- SherpaTTS
  - https://f-droid.org/packages/org.woheller69.ttsengine/
- Briar
  - App Source URL: https://briarproject.org/fdroid
  - Override Source: F-Droid Third-Party Repo
  - App ID or Name: Briar

Upon adding it will become something like the link below.

### Apps within 3rd party F-Droid repos

_However I would use [the F-Droid repositories directly](/n/f-droid.html)._

- `https://briarproject.org/fdroid/repo?appId=org.briarproject.briar.android`
  - Briar.

## App Stores

_Always exercise caution when installing apps, even from Google Play Store!_

- `https://gitlab.com/AuroraOSS/AuroraStore`
  - Open source and anonymous interface for Google Play Store. Google doesn't
    like it, so the accounts often don't work, which is the reason this section
    has so many apps regardless of the common advice to install nothing outside
    of Play Store (that I obviously disagree with as there are dangerous and
    unwanted apps there too).
- `https://f-droid.org/packages/org.fdroid.fdroid`
  - FOSS-only app store with support for additional
    [repositories](/n/f-droid.html). I prefer the Basic version though, see
    below.
- `https://f-droid.org/packages/org.fdroid.basic`
  - F-Droid without local application sharing. Used to target higher API level
    than the main app allowing automatic updates for apps targeting recent
    enough app version. This is what I recommend and have installed for family
    for years.
- `https://github.com/Tobi823/ffupdater`
  - Installer and updater for privacy friendly browsers (and itself), including,
    but not limited to Firefox, Chromium and other browsers based on them
    (except obviously not Google Chrome). Would install for family, if they
    didn't have Google Play Store.
- `https://github.com/ImranR98/Obtainium`
  - An app downloader that can install apps directly from the publishers, a few
    other app stores and F-Droid repositories (see an earlier section on this
    page). But you should know that already considering this page is of no
    interest to anyone else than Obtainium users (and mainly only me).

## Other noteworthy apps:

- Tor Browser. Available through FFUpdater or F-Droid.
