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
- [Yötila](#y%C3%B6tila)
- [Play Kauppa](#play-kauppa)
- [Closed captions for hearing impaired](#closed-captions-for-hearing-impaired)
- [Night light](#night-light)
- [Play Store](#play-store)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

<div lang="fi">

## Tekstitykset huonokuuloisille

1. Avaa televisiokanava.
1. Paina kaukosäätimen `Menu`-painiketta ja valitse `Lisäasetukset`.
1. Valitse `Tekstitys`. Aseta _Tekstityksen tyypiksi_ `Kuulovammainen`.

## Yötila

[Twilight](https://play.google.com/store/apps/details?id=com.urbandroid.lux)
toimii varmemmin.

```bash
adb shell settings put secure night_display_activated 1
# Auringonlaskusta -nousuun
adb shell settings put secure night_display_auto_mode 2
# Enimmäisvoimakkuus, oletus 50
adb shell settings put secure night_display_strength 100
```

## Play Kauppa

Ilmeisesti sitä ei ole tarkoitus käyttää suoraan vaan muilla Android-laitteilla
tai osoitteessa `play.google.com`. Sovellus itse saattaa tosin olla kätketty
Asetukset -> Sovellukset alle, lisää sovelluksia. Vaihtoehtoisesti löytyy
järjestelmäsovellukset näyttämällä, jossa taas on Avaa.

Voi olla helpompaa sivuladata
[F-Droid](https://f-droid.org/packages/org.fdroid.basic) ja avata se komennolla

```bash
adb shell am start -n org.fdroid.basic/org.fdroid.MainActivity
```

Sivuladattu [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore/-/releases)
taas ilmestyy alkunäyttöön, kuin myös
[UpToDown](https://uptodown-android.en.uptodown.com/android). Henkilökohtaisesti
asentaisin molemmat, mutta käyttäisin UpToDownia vain Auroran anonyymitunnusten
ollessa alhaalla, sillä Aurora Store on Play Kaupan käyttöliittymä ja omat
tunnukset voivat riskeerata Googlen liikahuomion.

Muita Android TV -yhteensopivia sovelluksia ovat
[Steam Link](https://play.google.com/store/apps/details?id=com.valvesoftware.steamlink&),
[Twitch](https://play.google.com/store/apps/details?id=tv.twitch.android.app),
[NewPipe](https://f-droid.org/packages/org.schabi.newpipe/) (ja siihen perustuva
[Tunular](https://f-droid.org/packages/org.polymorphicshade.tubular/)).

En ole vielä keskinyt suoraan yhteensopivaa verkkoselainta, mutta sentaisin
[DuckDuckGon](https://github.com/duckduckgo/Android/releases) yksinkertaisuuden
vuoksi, jotta jollakin voi avata linkkejä.

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

## Night light

[Twilight](https://play.google.com/store/apps/details?id=com.urbandroid.lux)
works more certainly.

```bash
adb shell settings put secure night_display_activated 1
# Sunset to sunrise
adb shell settings put secure night_display_auto_mode 2
# Max strength, default 50
adb shell settings put secure night_display_strength 100
```

## Play Store

Apparently you aren't supposed to use it directly, but through another Android
device or on `play.google.com` in web browser. Regardless, the app may be hdden
under Settings -> Applications, more apps. Alternatively it's under system
applications where there is an open button

It may be easier to sideload
[F-Droid](https://f-droid.org/packages/org.fdroid.basic) and open it by running

```bash
adb shell am start -n org.fdroid.basic/org.fdroid.MainActivity
```

Meanwhile sideloaded
[Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore/-/releases) appears on
homescreen just like
[UpToDown](https://uptodown-android.en.uptodown.com/android). Personally I would
install both, but only use UpToDown when Aurora anonymous account token
dispenser is down, because Aurora Store is a Play Store frontend and using
personal accounts with it may risk Google Scrutinity.

Other Android TV compatible apps include
[Steam Link](https://play.google.com/store/apps/details?id=com.valvesoftware.steamlink&),
[Twitch](https://play.google.com/store/apps/details?id=tv.twitch.android.app),
[NewPipe](https://f-droid.org/packages/org.schabi.newpipe/) (ja siihen perustuva
[Tunular](https://f-droid.org/packages/org.polymorphicshade.tubular/)).

I am yet to think of a compatible web browser, but I would install
[DuckDuckGo](https://github.com/duckduckgo/Android/releases) for simplicity and
having at least one application capable of opening links.

---

_See also
[private DNS for Android TV (in Finnish, but mostly just adb commands)](/n/yksityinendns.html#android-debug-bridge)._

</div>
