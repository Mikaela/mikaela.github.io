---
layout: null
permalink: /n/helen.html
sitemap: true
month: 09 of 2022
monthly: "32,35 c/kWh"
basicdistribution: "5.51 €/month"
distributionmargin: "4.07 c/kWh"
basicstock: "3,93 €/month"
stockmargin: "0,38 c/kWh"
---

# Thinking on Helen price

*Or more like playing with Jekyll*

Helen's monthly market price for month {{ page.month }} is {{ page.monthly }}.

* Distribution price: {{ page.basicdistribution }} and {{ page.distributionmargin }}.
* Stock price: {{ page.basicstock }} and {{ page.stockmargin }}.

## Plan for Tuntihinta

* Expensive: <strong>{{ page.monthly }} + {{ page.distributionmargin }}</strong> (The monthly plan + distribution margin)
* Cheap: <strong>({{ page.monthly }} + {{ page.distributionmargin }}) / 2</strong> (The monthly plan + distribution margin / 2), ***round down***
* Margin: <strong>{{ page.distributionmargin }} + {{ page.stockmargin }}</strong> (Distribution fee + stock margin)

## Sources

* Definition of monthly plan price: https://www.helen.fi/sahko/sahkosopimus/markkinahinta and https://www.helen.fi/en/electricity/electricity-products-and-prices/marketpriceelectricity
  * They use it all month following stock market price and trying to get their own citation.
* Distribution is in *Oma Helen* and changes are announced in their newspaper.
