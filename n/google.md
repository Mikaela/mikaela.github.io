---
title: Google-tunnukseen liittyviä vinkkejä
excerpt:
  Google-jakojen vastaanottaminen vaihtoehtoisilla sähköposteilla. GMail
  roskapostisuodattimen käytöstäpoistaminen.
layout: mini
permalink: /n/google.html
redirect_from:
  - /r/gmail.html
sitemap: true
lang: fi
robots: noai
---

_{{ page.excerpt }}_

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Google-jakojen vastaanottaminen muilla sähköposteilla](#google-jakojen-vastaanottaminen-muilla-s%C3%A4hk%C3%B6posteilla)
- [GMail roskapostisuodattimen poistaminen käytöstä](#gmail-roskapostisuodattimen-poistaminen-k%C3%A4yt%C3%B6st%C3%A4)
  - [Nopeampi tapa](#nopeampi-tapa)
  - [Vaihtoehtoinen tapa](#vaihtoehtoinen-tapa)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

<div lang="fi">

## Google-jakojen vastaanottaminen muilla sähköposteilla

Olen varmasti kirjannut tämän jonnekin, mutten löydä sitä. Kätevää erityisesti
yhdistystoiminnassa mikäli kaikki jakavat Google Drive materiaaleja yhdistyksen
sähköpostiin ja Google Drive ei oikealla tunnuksella päästä sisälle.

- Oikotie: [`myaccount.google.com/email`](https://myaccount.google.com/email)
  (tietoturvallisesti älä klikkaa tästä vaan kirjoita se osoiteriville tai
  kopioi ja liitä tekstiedittorin kautta sinne). Valitse vaihtoehtoiset
  sähköpostiosoitteet.
- Oikea tapa: Mene osoitteeseen `https://myaccount.google.com`, valitse
  henkilökohtaiset tiedot sivupalkista, selaa alaspäin kohtaan
  `sähköpostiosoite` ja valitse `vaihtoehtoiset sähköpostiosoitteet`.

Tästä eteenpäin prosessi on selkeä ja yksinkertainen, eikä vaadi enempää ohjeita
minulta.

## GMail roskapostisuodattimen poistaminen käytöstä

En ole varma onko tämä mahdollista puhelimella, joten mene tietokoneella
`mail.google.com` tai `gmail.com`. Jostakin syystä osa sähköposteista päätyy yhä
roskapostiin, joten sitä kansiota on tästä huolimatta hybä seurata kuitenkin.

Olen toiminut näin vuosia, kunnes roskapostia alkoi tulla liikaa, jonka jälkeen
poistin tämän käytöstä. Kuitenkin kesän 2025 jälkeen tapahtui jotakin ja nyt
minulla menee enemmän asiallista postia roskapostiin, kuin toisin päin.

### Nopeampi tapa

1. Valitse sivupalkista `Roskaposti`.
1. GMailin hakupalkissa lukee nyt `in:spam` ja sen vieressä on rasti ja
   jonkinlainen vipupaneeli. Paina vipupaneelia.
1. Mitään ei tarvitse muokata, paina `Luo suodatin`
1. Saat pyynnön vahvistaa suodattimen luonti. Valitse `OK`
1. Aseta rasti ruutuun `Älä koskaan siirrä roskapostiin` ja valitse uudelleen
   `Luo suodatin`.

### Vaihtoehtoinen tapa

1. Gmailin etusivulla paina mutterin kuvaketta oikeassa yläkulmassa (Asetukset)
1. Valitse avautuvan valikon yläosasta `Näytä kaikki asetukset`
1. Valitse välilehti `Suodattimet ja estetyt osoitteet`
1. Klikkaa `Luo suodatin`
1. Kohtaan `Sisältää sanat` kirjoita `label:spam` ja painna `Luo suodatin`
1. Saat pyynnön vahvistaa suodattimen luonti. Valitse `OK`
1. Aseta rasti ruutuun `Älä koskaan siirrä roskapostiin` ja valitse uudelleen
   `Luo suodatin`.

Mikäli vertaat näitä kahta tapaa, huomaat nopeamman tavan `in:spam` muuttuneen
automaattisesti muotoon `label:spam`.

_Tämä sivu löytyy myös linkillä [aminda.eu/n/gmail](https://aminda.eu/n/gmail)_
