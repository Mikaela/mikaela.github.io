---
title: Notes on Android TV
excerpt:
  Huonokuuloisten tekstityksen käyttöönotto ja muita piilotettuja jekkuja
  Android TVllä. Enabling hearing impaired subtitles and other tricks on Android
  TV.
layout: mini
permalink: /n/androidtv.html
redirect_from: /n/googletv.html
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

- [DigiTV Tekstitykset huonokuuloisille](#digitv-tekstitykset-huonokuuloisille)
- [Tiliasetukset - Videon automaattinen toisto, Vain sovellukset-tila](#tiliasetukset---videon-automaattinen-toisto-vain-sovellukset-tila)
- [Yötila](#y%C3%B6tila)
- [Sovelluksia](#sovelluksia)
  - [Oleellisia sovelluksia](#oleellisia-sovelluksia)
  - [Sivuladattavia sovelluksia](#sivuladattavia-sovelluksia)
- [DigiTV Closed captions for hearing impaired](#digitv-closed-captions-for-hearing-impaired)
- [Account settings - Autoplay video, Apps-only mode](#account-settings---autoplay-video-apps-only-mode)
- [Night light](#night-light)
- [Applications](#applications)
  - [Relevant applications](#relevant-applications)
  - [Applications to sideload](#applications-to-sideload)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

<div lang="fi">

## DigiTV Tekstitykset huonokuuloisille

1. Avaa televisiokanava.
1. Paina kaukosäätimen `Menu`-painiketta ja valitse `Lisäasetukset`.
1. Valitse `Tekstitys`. Aseta _Tekstityksen tyypiksi_ `Kuulovammainen`.

## Tiliasetukset - Videon automaattinen toisto, Vain sovellukset-tila

Oletuksena Google TV Stramer häiritsevästi <del>mainostaa</del> suosittelee
kaikenlaista useista eri lähteistä ja tekee asennetuista sovelluksista
hankalampia nähdä. Kaikeksi onneksi tämä on helposti korjattavissa.

_Tämän näkymän voi saada helpommin näkyviin painamalla pitkään kaukosäätimen
Koti-painiketta._

Pika-asetukset -> Kaikki asetukset -> Tilit ja profiilit -> tilisi:

- _Profiililukolla_ saa TVn pyytämään Google-tunnuksen salasanaa mikäli ei halua
  muita käyttäjiä omalle profiililleen.
- _Videon automaattinen toisto_ pois päältä lisää saavutettavuutta etenkin
  mainosten kohdalla.
- _Ääniapuri_ mahdollistaa _ääniohjauksen_ käytöstäpoistamisen mahdollisesti
  lisäten (illuusiota) yksityisyydestä kun mikrofonia ei vahingossa voi laittaa
  kaukosäätimen painikkeestakaan päälle.
- _Vain sovellukset -tila_ helpottaa laitteen käyttöä huomattavasti. Ylhäällä
  yhä rullaavista <del>mainoksista</del> suosituksista sinulle huolimatta,
  kaikki asennetut sovellukset ovat helpommin käden ulottuvilla ja korostetumpia
  oletusnäkymään verrattuna.

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

## Sovelluksia

Play Kauppa löytyy Asetukset -> Sovellukset -> Näytä kaikki sovellukset -> Näytä
järjestelmäsovellukset -> Google Play Kauppa -> Avaa. Sitä ei ilmeisesti ole
tarkoitus käyttää suoraan vaan muulta laitteelta tai `play.google.com` kautta.

Suosittelen asentamaan
[`Kodi`](https://play.google.com/store/apps/details?id=org.xbmc.kodi)
-sovelluksen, jossa `Lisäosat` pohjalta löytyy `Android-sovellukset`, jossa on
mahdollista painaa Play Kauppaa pitkään ja valita `Lisää suokikeihin`.
`Android-sovellukset` nimensä mukaisesti listaa kaikki asennetut sovellukset,
eikä vain TV-yhteensopivat.

Kodin asetukset -> Käyttöliittymä -> Käynnistys -> Aloitusruutu -> Suosikit
tekee siitä vielä helpompaa. Kodin laajennuksista löytyy muutakin kivaa, kuten
`FOSDEM Videos`, `Internet Archive`, `media.ccc.de` ja `Open-Meteo`.

### Oleellisia sovelluksia

- [Kodi](https://play.google.com/store/apps/details?id=org.xbmc.kodi)
  - [Kodi kaukosäädin puhelimelle](https://play.google.com/store/apps/details?id=org.xbmc.kore)
- [YLE Areena](https://play.google.com/store/apps/details?id=com.yle.webtv)
- [MTV Katsomo](https://play.google.com/store/apps/details?id=fi.mtvkatsomo)
- [Ruutu](https://play.google.com/store/apps/details?id=com.thirdpresence.ruutu)
- [Twilight](https://play.google.com/store/apps/details?id=com.urbandroid.lux)
- [Twitch](https://play.google.com/store/apps/details?id=tv.twitch.android.app)
- [VLC](https://play.google.com/store/apps/details?id=org.videolan.vlc)
- [Steam Link](https://play.google.com/store/apps/details?id=com.valvesoftware.steamlink)

### Sivuladattavia sovelluksia

- [F-Droid](https://f-droid.org/packages/org.fdroid.basic) (ei ilmesty
  käynnistimeen)
  - `adb shell am start -n org.fdroid.basic/org.fdroid.MainActivity`
- [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore/-/releases)
  - Play Kauppaa helpompi löytää. Käytä aina anonyymiä tunnusta, jotta Google ei
    häiriinny.
- [DuckDuckGo](https://github.com/duckduckgo/Android/releases) (ei ilmesty
  käynnistimeen)
- [Tubular](https://f-droid.org/packages/org.polymorphicshade.tubular/)
- [UpToDown](https://uptodown-android.en.uptodown.com/android)
  - Käytä vain kun Aurora Store ei toimi.

---

_Katso myös
[yksityinen DNS Android TV:lle](/n/yksityinendns.html#android-debug-bridge)._

---

</div>

<div lang="en">

## DigiTV Closed captions for hearing impaired

1. Open a TV channel.
1. Press the `Menu` button on the remote control and select `Advanced settings`.
1. Select `Subtitles` (or was it `Captions`?). Enter _Subtitle type_ and select
   `Hearing impaired`.

## Account settings - Autoplay video, Apps-only mode

By default Google TV streamer disturbingly <del>advertises</del> recommends a
bit of this and that from many different sources and makes installed apps more
difficult to see. Luckily this is easy to fix.

_This screen may be easier to reach by holding the remote's home button for
three seconds._

Quick Settings -> All settings -> Accounts and profiles -> YOUR ACCOUNT:

- _Profile lock_ makes the TV ask for Google account password in case it's
  desirable for other users to not access your profile.
- _Autoplay video_ disabled increases accessibility especially with
  advertisements.
- _Voice assistant_, _Voice control_ disables using microphone by accident
  possibly increasing privacy (or giving an illusion of it)
- _Apps-only mode_ makes using the device significantly easier. While
  <del>advertisements</del> recommendations keep scrolling on top, all installed
  TV compatible applications will be easier to reach and emphatised as opposed
  to the default view.

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

## Applications

Play Store can be found from Settings -> Applications -> Display all
applications -> Display system applications -> Google Play Store -> Open.
Apparently one isn't supposed to use it directly, but through another device or
`play.google.com`.

I recommend installing
[`Kodi`](https://play.google.com/store/apps/details?id=org.xbmc.kodi) where
within `Add-ons` menu there are `Android-applications`, where it's possible to
long press `Play Store` and select `Add to favourites`. `Android-applications`
displays all the Android apps and not only TV compatible ones like the name
says.

It's possible to set favourites to start when Kodi is opened through Kodi
Settings -> Interface -> Startup -> Beginning screen -> Favourites.

Kodi addons repository also has other nice things, such as `FOSDEM Videos`,
`Internet Archive`, `media.ccc.de` and `Open-Meteo`.

### Relevant applications

- [Kodi](https://play.google.com/store/apps/details?id=org.xbmc.kodi)
  - [Kodi remote control for phone](https://play.google.com/store/apps/details?id=org.xbmc.kore)
- Finnish users will want streaming services that are known from TV channels
  - [YLE Areena](https://play.google.com/store/apps/details?id=com.yle.webtv)
  - [MTV Katsomo](https://play.google.com/store/apps/details?id=fi.mtvkatsomo)
  - [Ruutu](https://play.google.com/store/apps/details?id=com.thirdpresence.ruutu)
- [Twilight](https://play.google.com/store/apps/details?id=com.urbandroid.lux)
- [Twitch](https://play.google.com/store/apps/details?id=tv.twitch.android.app)
- [VLC](https://play.google.com/store/apps/details?id=org.videolan.vlc)
- [Steam Link](https://play.google.com/store/apps/details?id=com.valvesoftware.steamlink)

### Applications to sideload

- [F-Droid](https://f-droid.org/packages/org.fdroid.basic) (won't appear in
  Android TV launcher)
  - `adb shell am start -n org.fdroid.basic/org.fdroid.MainActivity`
- [Aurora Store](https://gitlab.com/AuroraOSS/AuroraStore/-/releases)
  - Easier to find than Play Store. Always use anonymous accounts.
- [DuckDuckGo](https://github.com/duckduckgo/Android/releases) (won't appear in
  Android TV launcher)
- [Tubular](https://f-droid.org/packages/org.polymorphicshade.tubular/)
- [UpToDown](https://uptodown-android.en.uptodown.com/android)
  - Use only when Aurora Store doesn't work.

---

_See also
[private DNS for Android TV (in Finnish, but mostly just adb commands)](/n/yksityinendns.html#android-debug-bridge)._

</div>
