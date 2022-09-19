---
layout: null
permalink: /n/helen.html
sitemap: true
month: 10 of 2022
monthly: "38,65 c/kWh"
basicdistribution: "5.51 €/month"
distributionmargin: "4.07 c/kWh"
basicstock: "3,93 €/month"
stockmargin: "0,38 c/kWh"
---

# Helen price calculations for Tuntihinta

Helen's monthly market price for month {{ page.month }} is {{ page.monthly }}.

* Distribution price: {{ page.basicdistribution }} and {{ page.distributionmargin }}.
* Stock price: {{ page.basicstock }} and {{ page.stockmargin }}.

## Equations for Tuntihinta

* Expensive: <strong>{{ page.monthly }} + {{ page.distributionmargin }}</strong> (The monthly plan + distribution margin)
* Cheap: <strong>({{ page.monthly }} + {{ page.distributionmargin }}) / 2</strong> (The monthly plan + distribution margin / 2), ***round down***
* Margin: <strong>{{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (Distribution fee + stock margin)

## Sources

* Definition of monthly plan price: [Helen.fi: Markkinasähkö; ja sähkön markkinahinta](https://www.helen.fi/sahko/sahkosopimus/markkinahinta) and in English [Helen: Market Price Electricity](https://www.helen.fi/en/electricity/electricity-products-and-prices/marketpriceelectricity)
  * They use it all month following stock market price and trying to get their own citation.
* Distribution is in *Oma Helen* and changes are announced in their newspaper.
