---
layout: mini
permalink: /n/ksoy.html
sitemap: false
month: "11/2022"
monthly: "29.99 c/kWh"
basicdistribution: "EI TIEDOSSA €/kk"
distributionmargin: "EI TIEDOSSA c/kWh"
basicstock: "2.99 €/kuukausi"
stockmargin: "0.23 c/kWh"
---

Tuntihinta @ [Apple App Store](https://apps.apple.com/app/tuntihinta/id824684537) [Google Play](https://play.google.com/store/apps/details?id=fi.fingrid.tuntihinta)

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
_Automaattinen sisällysluettelo - Automatically generated Table of Contents_

- [KSOY hintalaskelmia Tuntihinta-sovellukselle](#ksoy-hintalaskelmia-tuntihinta-sovellukselle)
  - [Yhtälöt Tuntihinnalle](#yht%C3%A4l%C3%B6t-tuntihinnalle)
  - [Lähteet](#l%C3%A4hteet)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

# KSOY hintalaskelmia Tuntihinta-sovellukselle

_Siirtohinnasto ei tiedossa, joten se ei ole mukana yhtälöissä._

KSOYn Jatkuvan sähkösopimuksen hinta kuukaudelle {{ page.month }} on {{ page.monthly }}.

- KSOY Pörssisähkön hinta: {{ page.basicstock }}, marginaali {{ page.stockmargin }}.

## Yhtälöt Tuntihinnalle

_Jekyll ei salli matematiikkaa suoraan tietoturvasyistä._

- Kallis: <strong>{{ page.monthly }}</strong> (KSOY jatkuvan sähkösopimuksen hinta)
- Halpa: <strong>{{ page.monthly }} / 2</strong> (KSOY jatkuvan sähkösopimuksen hinta / 2), **_pyöristettynä alaspäin_**
- Marginaali: <strong>{{ page.stockmargin }}</strong> (pörssisähkön marginaali).

## Lähteet

- [KSOY jatkuva sähkösopimus](https://www.ksoy.fi/sahkon-myynti/sahkoa-kotiin/ksoy-jatkuva/) määrittää kalliin hinnan.
  - KSOY veloittaa sitä jatkuvilta sähköasiakkailtaan koko kuukauden ja pyrkii sillä kattamaan omat kulunsa ja varmistamaan, ettei myy sähköä liian edullisesti.
