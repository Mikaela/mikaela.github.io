---
title: Obtainiun
excerpt: Obtainium and useful apps for it.
layout: mini
permalink: /n/obtainium.html
sitemap: true
lang: en
robots: noai
---

[Obtainium](https://github.com/ImranR98/Obtainium/) downloads apps directly from forge/whatever without need for app
stores and theoretically I can bootstrap it by copy-pasting the txt linked
below into it, especially on devices that Google doesn't smile upon.

- [Obtainium's latest release](https://github.com/ImranR98/Obtainium/releases/latest)

See also [2022-01-02 F-Droid Security Issues on privsec.dev](https://privsec.dev/posts/android/f-droid-security-issues/),
regardless of my list containing F-Droids. Regarding that, **prefer
[F-Droid Basic](https://f-droid.org/packages/org.fdroid.basic) over
F-Droid** whenever possible (if nearby features aren't required)
as it addesses some issues such as targeting higher API version and having
automatic updates on Android 12+.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Importable app list](#importable-app-list)
- [Third party F-Droid repositories](#third-party-f-droid-repositories)
  - [Apps within them](#apps-within-them)
- [App Stores](#app-stores)
- [Other noteworthy apps:](#other-noteworthy-apps)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Importable app list

- For apps that don't require API keys to be entered into Obtainium, see [txt/obtainium.txt](/txt/obtainium.txt).
- For apps that require GitHub or GitLab API key to be entered into Obtainium, see [txt/obtainium2.txt](/txt/obtainium2.txt)

## Third party F-Droid repositories

Aren't mass-importable sadly, but using Briar as an example:

- App Source URL: https://briarproject.org/fdroid
- Override Source: F-Droid Third-Party Repo
- App ID or Name: Briar

Upon adding it will become something like the link below.

### Apps within them

_However I would use [the F-Droid repositories directly](/n/f-droid.html)._

- `https://briarproject.org/fdroid/repo?appId=org.briarproject.briar.android`
  - Briar. Third party F-Droid repo.
- `https://fdroid.frostnerd.com?appId=com.frostnerd.smokescreen`
  - Nebulo. Third party F-Droid repo.
- `https://divestos.org/apks/official/fdroid/repo?appId=us.spotco.malwarescanner`
  - Hypatia malware scanner. Third party F-Droid repo.
- `https://divestos.org/apks/official/fdroid/repo?appId=us.spotco.fennec_dos`
  - Mull Browser (not to be confused with Mullvad). Often suggested as the closest to [LibreWolf](https://librewolf.net)
    on Android. Third party F-Droid repo.

## App Stores

_Always exercise caution when installing apps, even from Google Play Store!_

- `https://github.com/accrescent/accrescent`
  - Accrescent is a recent App Store which I have seen recommended especially in privacy circles, while it's a bit plain and doesn't have much selection yet.
- `https://apkpure.net/apkpure/com.apkpure.aegon`
  - APK Pure. Full of intrusive advertising, I wouldn't use it without adblocker and even then would keep my family away from it.
- `https://gitlab.com/AuroraOSS/AuroraStore`
  - Open source and anonymous interface for Google Play Store. Google doesn't like it, so the accounts often don't work, which is the reason this section has so many apps regardless of the common advice to install nothing outside of Play Store (that I obviously disagree with as there are dangerous and unwanted apps there too).
- `https://f-droid.org/packages/org.fdroid.fdroid`
  - FOSS-only app store with support for additional [repositories](/n/f-droid.html). I prefer the Basic version though, see below.
- `https://f-droid.org/packages/org.fdroid.basic`
  - F-Droid without local application sharing. Used to target higher API level than the main app allowing automatic updates for apps targeting recent enough app version. This is what I recommend and have installed for family for years.
- `https://github.com/Tobi823/ffupdater`
  - Installer and updater for privacy friendly browsers (and itself), including, but not limited to Firefox, Chromium and other browsers based on them (except obviously not Google Chrome). Would install for family, if they didn't have Google Play Store.
- `https://appgallery.huawei.com/app/C27162`
  - Huawei App Gallery. I don't think I recommend it, unless it comes with your phone, but it's nice to know it exists and can be installed?
- `https://github.com/ImranR98/Obtainium`
  - An app downloader that can install apps directly from the publishers, a few other app stores and F-Droid repositories (see an earlier section on this page). But you should know that already considering this page is of no interest to anyone else than Obtainium users (and mainly only me).
- `https://uptodown-android.en.uptodown.com/android`
  - Uptodown app store, pleasant interface and not so intrusive advertising
    as opposed to APK Pure. I would consider installing it for a family member, should they reach ??? apps outside of Play Store that it offers (such as AdGuard (which Google again dislikes), Telegram.org/Android...)
- `https://lite-uptodown-app-store.en.uptodown.com/android`
  - Lighter version for less powerful phones, thinking of you Android Go Edition, or certain other 8 GB memory phones. Additionally Google is stripped out of it.

## Other noteworthy apps:

- Tor Browser. Available through FFUpdater or F-Droid.
