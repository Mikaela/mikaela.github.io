---
layout: null
permalink: /n/ksoy.html
sitemap: true
month: "11/2022"
monthly: "29.99 c/kWh"
basicdistribution: "EI TIEDOSSA €/kk"
distributionmargin: "EI TIEDOSSA c/kWh"
basicstock: "2.99 €/month"
stockmargin: "0.23 c/kWh"
draft: true
published: false
---

Tuntihinta @ [Apple App Store](https://apps.apple.com/app/tuntihinta/id824684537) [Google Play](https://play.google.com/store/apps/details?id=fi.fingrid.tuntihinta)

# KSOY hintalaskelmia Tuntihinta-sovellukselle

KSOYn Jatkuvan sähkösopimuksen hinta kuukaudelle {{ page.month }} on {{ page.monthly }}.

* Siirron perusmaksu: {{ page.basicdistribution }}, siirron marginaali {{ page.distributionmargin }}.
* KSOY Pörssisähkön hinta: {{ page.basicstock }}, marginaali {{ page.stockmargin }}.

## Yhtälöt Tuntihinnalle

*Jekyll ei salli matematiikkaa suoraan tietoturvasyistä.*

* Kallis: <strong>{{ page.monthly }} + {{ page.distributionmargin }}</strong> (KSOY markkinasähköhinta + siirtohinta kWh)
* Hakpa: <strong>({{ page.monthly }} + {{ page.distributionmargin }}) / 2</strong> (KSOY markkinasähköhinta + siirtohinta kWh / 2), ***pyöristettynä alaspäin***
* Marginaali: <strong>{{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (siirtohinta kWh + pörssisähkön marginaali).

## Lähteet

* [KSOY jatkuva sähkösopimus](https://www.ksoy.fi/sahkon-myynti/sahkoa-kotiin/ksoy-jatkuva/) määrittää kalliin hinnan.
  * KSOY veloittaa sitä markkinasähköasiakkailtaan koko kuukauden ja pyrkii sillä kattamaan omat kulunsa ja varmistamaan, ettei myy sähköä liian edullisesti.

