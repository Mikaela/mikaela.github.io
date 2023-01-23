---
layout: null
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

# KSOY hintalaskelmia Tuntihinta-sovellukselle

*Siirtohinnasto ei tiedossa, joten se ei ole mukana yhtälöissä.*

KSOYn Jatkuvan sähkösopimuksen hinta kuukaudelle {{ page.month }} on {{ page.monthly }}.

* KSOY Pörssisähkön hinta: {{ page.basicstock }}, marginaali {{ page.stockmargin }}.

## Yhtälöt Tuntihinnalle

*Jekyll ei salli matematiikkaa suoraan tietoturvasyistä.*

* Kallis: <strong>{{ page.monthly }}</strong> (KSOY jatkuvan sähkösopimuksen hinta)
* Halpa: <strong>{{ page.monthly }} / 2</strong> (KSOY jatkuvan sähkösopimuksen hinta / 2), ***pyöristettynä alaspäin***
* Marginaali: <strong>{{ page.stockmargin }}</strong> (pörssisähkön marginaali).

## Lähteet

* [KSOY jatkuva sähkösopimus](https://www.ksoy.fi/sahkon-myynti/sahkoa-kotiin/ksoy-jatkuva/) määrittää kalliin hinnan.
  * KSOY veloittaa sitä jatkuvilta sähköasiakkailtaan koko kuukauden ja pyrkii sillä kattamaan omat kulunsa ja varmistamaan, ettei myy sähköä liian edullisesti.
