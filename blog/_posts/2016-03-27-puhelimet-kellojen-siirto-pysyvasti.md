---
layout: post
comments: true
title: "Mitä puhelimet tekisivät jos kelloja siirrettäisiin pysyvästi"
category: [finnish]
tags:
  [
    finnish,
    kellot,
    puhelimet,
    kellojen siirto,
    kesäaika,
    talviaika,
    normaaliaika,
  ]
redirect_from: /finnish/2016/03/27/puhelimet-kellojen-siirto-pysyvasti.html
---

_En tiedä ajatteleeko tai pelkääkö kukaan tätä seurausta kellojen siirrosta
pysyvästi, mutta kirjoittelen siitä nyt kuitenkin._

Kaikki luultavasti tietävät, että puhelimet siirtelevät kelloja
aikavyöhyketietokannan mukaan, kuten myös tietokoneet.

Jos kelloja siirrettäisiin pysyvästi, aikavyöhyketietokanta pitäisi
päivittää puhelimista tai ne jatkaisivat kellojen siirtelyä samoina
päivinä, kuin nytkin.

Ideaalitapauksessa kaikki laitevalmistajat päivittäisivät
aikavyöhyketietokannat, mutta tämä ei tapahdu suurimmalla osasta
puhelimista.

Tämä ongelma on kuitenkin helppoa ratkaista, koska mikäli siirtyisimme
pysyvästi Keski-Euroopan aikaan, kelloja ei enää siirrettäisi ja se olisi
niinkin helppoa kuin poistaa asetuksista automaattinen kellojen siirto
käytöstä ja asettaa aika itse.

Android-laitteiden, jotka ovat suurin ongelma päivitysten suhteen, on myös
kaksi muutakin vaihtoehtoa: aikavyöhyketietokannan päivittäminen itse
(_TimeZone Fixer (ROOT)_) tai ulkoisen aikavyöhyketietokannan lataaminen.

TimeZone Fixer (ROOT)in tapauksessa puhelimeene täytyy olla
pääkäyttäjäoikeudet, ja sen on sanottu joissakin tapauksessa sekoittavan
puhelimen käyttöjärjestelmän niin että se on täytynyt asentaa uudelleen.
Tällä tavalla puhelin kuitenkin jatkaa normaalisti toimintaa ulkomailla
mukaanlukien maat, jotka ovat vaihtaneet aikavyöhykettä pysyvästi
puhelimen aikavyöhyketietokannan tietämättä.

Ulkoisella aikavyöhyketietokannalla taas tarkoitan esimerkiksi
_ClockSync_-sovellusta, joka päivittää laitteen ajan käyttäen internetin
NTP-palvelimia) jolle on saatavilla oma aikavyöhyketietokantansa,
jota käytettäessä laitteen omasta aikavyöhyketietokannasta ei
välitetä. Haittapuolena tosin aikavyöhyke täytyy asettaa ClockSyncin
asetuksista käsin ja vaihtaa aina esimerkiksi ulkomaille mennessä.

Linkkejä:

- [Wikipedia: Aikavyöhyketietokanta](https://fi.wikipedia.org/wiki/Aikavy%C3%B6hyketietokanta)
- [Google Play: TimeZone Fixer (ROOT)](https://play.google.com/store/apps/details?id=com.force.timezonefixer)
- [Wikipedia: NTP (tietotekniikka)](<https://fi.wikipedia.org/wiki/NTP_(tietotekniikka)>)
- [Google Play: ClockSync](https://play.google.com/store/apps/details?id=ru.org.amip.ClockSync)
- [TimeZoneDB for ClockSync](https://play.google.com/store/apps/details?id=ru.org.amip.timezoneservice)
- [Kansalaisaloite: Yhteiskunnan rasitteet kesä-talviaika pois: Voimaa, terveyttä työpäivään ja elämään Keski-Eurooppalaisella aikavyöhykkeellä](https://www.kansalaisaloite.fi/fi/aloite/1596)
