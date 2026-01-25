---
title: Notes on Android TV
excerpt:
  Huonokuuloisten tekstityksen käyttöönotto Android TVllä. Enabling hearing
  impaired subtitles on Android TV.
layout: mini
permalink: /n/androidtv.html
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

- [Tekstitykset huonokuuloisille](#tekstitykset-huonokuuloisille)
- [Play Kauppa](#play-kauppa)
- [Closed captions for hearing impaired](#closed-captions-for-hearing-impaired)
- [Play Store](#play-store)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

<div lang="fi">

## Tekstitykset huonokuuloisille

1. Avaa televisiokanava.
1. Paina kaukosäätimen `Menu`-painiketta ja valitse `Lisäasetukset`.
1. Valitse `Tekstitys`. Aseta _Tekstityksen tyypiksi_ `Kuulovammainen`.

## Play Kauppa

Mahdollisesti kätketty Asetukset -> Sovellukset alle, jossa voi näkyä Play
Kauppa ja avaa. TODO: Minulla ei itselläni ole Android TV:tä, joten tämä odottaa
sellaisen kohtaamista jälleen kerran.

Mikäli se on laitteelle asennettuna, se löytyy aivan varmasti ajamalla
tietokoneella:

```bash
# TODO: Kokeile Android TV:llä pelkän Android puhelimen sijaan
adb shell am start -n com.android.vending/com.google.android.finsky.activities.MainActivity
# Play Protect. TODO: yllä
adb shell am start -n com.android.vending/com.google.android.finsky.protect.impl.PlayProtectHomeDeepLinkActivity
```

Internetin mukaan tosin voi olla parempi asentaa
[F-Droid](https://f-droid.org/packages/org.fdroid.fdroid) (hyvä ajatus) ja
[UpToDown](https://uptodown-android.en.uptodown.com/android) (en tiedä). Miten
olisi [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore/-/releases)?

---

_Katso myös
[yksityinen DNS Android TV:lle](/n/yksityinendns.html#android-debug-bridge)._

---

</div>

<div lang="en">

## Closed captions for hearing impaired

1. Open a TV channel.
1. Press the `Menu` button on the remote control and select `Advanced settings`.
1. Select `Subtitles` (or was it `Captions`?). Enter _Subtitle type_ and select
   `Hearing impaired`.

## Play Store

Possibly hidden under Settings -> Apps, where Play Store and open might appear.
TODO: I don't have an Android TV myself, so this is waiting for encountering one
yet again.

If it's installed on the device, it can surely be found by:

```bash
# TODO: Try this on Android TV and not just phone
adb shell am start -n com.android.vending/com.google.android.finsky.activities.MainActivity
# Play Protect. TODO: above
adb shell am start -n com.android.vending/com.google.android.finsky.protect.impl.PlayProtectHomeDeepLinkActivity
```

However according to the internet, it might be a better idea to install
[F-Droid](https://f-droid.org/packages/org.fdroid.fdroid) (good idea) and
[UpToDown](https://uptodown-android.en.uptodown.com/android) (I don't know). How
about [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore/-/releases)?

---

_See also
[private DNS for Android TV (in Finnish, but mostly just adb commands)](/n/yksityinendns.html#android-debug-bridge)._

</div>
