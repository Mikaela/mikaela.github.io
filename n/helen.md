---
layout: null
permalink: /n/helen.html
sitemap: true
month: 11 of 2022
monthly: "35,10 c/kWh"
basicdistribution: "5.51 €/month"
distributionmargin: "4.07 c/kWh"
basicstock: "3,93 €/month"
stockmargin: "0,38 c/kWh"
omahelenhighprice: "20 c/kWh"
omahelenlowprice: "5 c/kWh"
---

Tuntihinta @ [Apple App Store](https://apps.apple.com/app/tuntihinta/id824684537) [Google Play](https://play.google.com/store/apps/details?id=fi.fingrid.tuntihinta)

# Helen hintalaskelmia Tuntihinta-sovellukselle

Helen markkinahintasähkö kuukaudelle {{ page.month }} on {{ page.monthly }}.

* Helen sähköverkot Oy:n siirron perusmaksu: {{ page.basicdistribution }}, siirron marginaali {{ page.distributionmargin }}.
* Helenin pörssisähkön kuukausihinta: {{ page.basicstock }}, marginaali {{ page.stockmargin }}.

## Yhtälöt Tuntihinnalle

*Jekyll ei salli matematiikkaa suoraan tietoturvasyistä.*

* Kallis: <strong>{{ page.monthly }} + {{ page.distributionmargin }}</strong> (Helenin markkinasähköhinta + siirtohinta kWh)
* Halpa: <strong>({{ page.monthly }} + {{ page.distributionmargin }}) / 2</strong> (Helenin markkinasähköhinta + siirtohinta kWh / 2), ***pyöristettynä alaspäin***
* Marginaali: <strong>{{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (Helen Sähköverkot Oy siirtohinta kWh + pörssisähkön marginaali).
* OmaHelen kohtelee alle {{ page.omahelenlowprice }} halpana ja yli {{ page.omahelenhighprice }} kalliina, joten vaihtoehtoiset kaavat ovat:
  * Kallis: <strong>{{ page.omahelenhighprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelenin korkea hinta + Marginaali)
  * Halpa: <strong>{{ page.omahelenlowprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelenin matala hinta + Marginaali)

## Lähteet

* [Helen.fi: Markkinasähkö; ja sähkön markkinahinta](https://www.helen.fi/sahko/sahkosopimus/markkinahinta) määrittää kalliin hinnan.
  * Helen veloittaa sitä markkinasähköasiakkailtaan koko kuukauden ja pyrkii sillä kattamaan omat kulunsa ja varmistamaan, ettei myy sähköä liian edullisesti.
* Siirtohinta näkyy *Oma Helen*-sovelluksessa ja muutokset ilmoitetaan Helenin asiakaslehdessä.

# Helen price calculations for Tuntihinta

Helen's monthly market price for month {{ page.month }} is {{ page.monthly }}.

* Distribution price: {{ page.basicdistribution }} and {{ page.distributionmargin }}.
* Stock price: {{ page.basicstock }} and {{ page.stockmargin }}.

## Equations for Tuntihinta

*Jekyll doesn't allow maths directly for infosec reasons.*

* Expensive: <strong>{{ page.monthly }} + {{ page.distributionmargin }}</strong> (Helen's Market Price Electricity + distribution margin)
* Cheap: <strong>({{ page.monthly }} + {{ page.distributionmargin }}) / 2</strong> (Helen's Market Price Electricity + distribution margin / 2), ***round down***
* Margin: <strong>{{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (Distribution fee + stock margin)
* OmaHelen app treats {{ page.omahelenlowprice }} as cheap and over {{ page.omahelenhighprice }} as expensive, so alternative equations are:
  * Expensive: <strong>{{ page.omahelenhighprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelen's high price + Marginal)
  * Cheap: <strong>{{ page.omahelenlowprice }} + {{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (OmaHelen's low price + Marginal)

## Sources

* Definition of monthly plan price: [Helen: Market Price Electricity](https://www.helen.fi/en/electricity/electricity-products-and-prices/marketpriceelectricity)
  * They use it all month following stock market price and trying to get their own citation.
* Distribution is in *Oma Helen* and changes are announced in their newspaper.
