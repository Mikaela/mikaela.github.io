---
layout: mini
permalink: /n/helen.html
sitemap: false
month: 02 of 2023
monthly: "31.58 c/kWh"
basicdistribution: "5.51 €/month"
distributionmargin: "4.07 c/kWh"
basicstock: "3,93 €/month"
stockmargin: "0,38 c/kWh"
omahelenhighprice: "20 c/kWh"
omahelenlowprice: "5 c/kWh"
hattiwatthighprice: "30 c/kWh"
hattiwattlowprice: "10 c/kWh"
lang: fi
---

Tuntihinta @ [Apple App Store](https://apps.apple.com/app/tuntihinta/id824684537) [Google Play](https://play.google.com/store/apps/details?id=fi.fingrid.tuntihinta)

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Helen hintalaskelmia Tuntihinta-sovellukselle](#helen-hintalaskelmia-tuntihinta-sovellukselle)
  - [Yhtälöt Tuntihinnalle](#yht%C3%A4l%C3%B6t-tuntihinnalle)
  - [Lähteet](#l%C3%A4hteet)
- [Helen price calculations for Tuntihinta](#helen-price-calculations-for-tuntihinta)
  - [Equations for Tuntihinta](#equations-for-tuntihinta)
  - [Sources](#sources)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

# Helen hintalaskelmia Tuntihinta-sovellukselle

Helen markkinahintasähkö kuukaudelle {{ page.month }} on {{ page.monthly }}.

- Helen sähköverkot Oy:n siirron perusmaksu: {{ page.basicdistribution }}, siirron marginaali {{ page.distributionmargin }}.
- Helenin pörssisähkön kuukausihinta: {{ page.basicstock }}, marginaali {{ page.stockmargin }}.

## Yhtälöt Tuntihinnalle

_Jekyll ei salli matematiikkaa suoraan tietoturvasyistä._

- Kallis: <strong>{{ page.monthly }} + {{ page.distributionmargin }}</strong> (Helenin markkinasähköhinta + siirtohinta kWh)
- Halpa: <strong>({{ page.monthly }} + {{ page.distributionmargin }}) / 2</strong> (Helenin markkinasähköhinta + siirtohinta kWh / 2), **_pyöristettynä alaspäin_**
- Marginaali: <strong>{{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (Helen Sähköverkot Oy siirtohinta kWh + pörssisähkön marginaali).
- OmaHelen kohtelee alle {{ page.omahelenlowprice }} halpana ja yli {{ page.omahelenhighprice }} kalliina, joten vaihtoehtoiset kaavat ovat:
  - Kallis: <strong>{{ page.omahelenhighprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelenin korkea hinta + Marginaali)
  - Halpa: <strong>{{ page.omahelenlowprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelenin matala hinta + Marginaali)
- [HattiWatt](https://hattiwatt.com/) vuorostaan sanoo korkean olevan yli {{ page.hattiwatthighprice }} ja halvan olevan alle {{ page.hattiwattlowprice }}. Se tosin näyttää hinnan myös liikennevaloin.
  - Halpa: <strong>{{ page.hattiwattlowprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (HattiWattin matala hinta + Marginaali)
  - Kallis: <strong>{{ page.hattiwatthighprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (HattiWattin korkea hinta + Marginaali)

## Lähteet

- [Helen.fi: Markkinasähkö; ja sähkön markkinahinta](https://www.helen.fi/sahko/sahkosopimus/markkinahinta) määrittää kalliin hinnan.
  - Helen veloittaa sitä markkinasähköasiakkailtaan koko kuukauden ja pyrkii sillä kattamaan omat kulunsa ja varmistamaan, ettei myy sähköä liian edullisesti.
- Siirtohinta näkyy _Oma Helen_-sovelluksessa ja muutokset ilmoitetaan Helenin asiakaslehdessä.

<div lang="en">

# Helen price calculations for Tuntihinta

Helen's monthly market price for month {{ page.month }} is {{ page.monthly }}.

- Distribution price: {{ page.basicdistribution }} and {{ page.distributionmargin }}.
- Stock price: {{ page.basicstock }} and {{ page.stockmargin }}.

## Equations for Tuntihinta

_Jekyll doesn't allow maths directly for infosec reasons._

- Expensive: <strong>{{ page.monthly }} + {{ page.distributionmargin }}</strong> (Helen's Market Price Electricity + distribution margin)
- Cheap: <strong>({{ page.monthly }} + {{ page.distributionmargin }}) / 2</strong> (Helen's Market Price Electricity + distribution margin / 2), **_round down_**
- Margin: <strong>{{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (Distribution fee + stock margin)
- OmaHelen app treats {{ page.omahelenlowprice }} as cheap and over {{ page.omahelenhighprice }} as expensive, so alternative equations are:
  - Expensive: <strong>{{ page.omahelenhighprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelen's high price + Margin)
  - Cheap: <strong>{{ page.omahelenlowprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelen's low price + Margin)
- [HattiWatt](https://hattiwatt.com/) again treats over {{ page.hattiwatthighprice }} as high price with low price being {{ page.hattiwattlowprice }}. It however shows price in traffic lights.
  - Cheap: <strong>{{ page.hattiwattlowprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (HattiWatt's low price + Margin))
  - Expensive: <strong>{{ page.hattiwatthighprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (HattiWatt's high price + Margin)

## Sources

- Definition of monthly plan price: [Helen: Market Price Electricity](https://www.helen.fi/en/electricity/electricity-products-and-prices/marketpriceelectricity)
  - They use it all month following stock market price and trying to get their own citation.
- Distribution is in _Oma Helen_ and changes are announced in their newspaper.

</div>
