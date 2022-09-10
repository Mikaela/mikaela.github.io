---
layout: null
permalink: /n/helen.html
sitemap: true
month: 10
monthly: "32,35 c/kWh"
basictransfer: "5.51 €/month"
transfermargin: "4.07 c/kWh"
basicstock: "3,93 €"
stockmargin: "0,38 c/kWh"
cheapelectricity: "??.?? c/kWh"
---

# Thinking on Helen price

*Or more like playing with Jekyll*

Helen's monthly market price for {{ page.month }}. month is {{ page.monthly }}.

* Transfer price: {{ page.basictransfer }} and {{ page.transfermargin }}.
* Stock price: {{ page.basicstock }} and {{ page.stockmargin }}.

## Plan for Tuntihinta

* Expensive: <strong>{{ page.monthly }} + {{ page.transfermargin }}</strong> (The monthly plan + transfer margin)
* Margin: <strong>{{ page.transfermargin }} + {{ page.stockmargin }}</strong> (Transfer fee (c/kWh + stock margin)

## Sources

* Definition of monthly plan price: https://www.helen.fi/sahko/sahkosopimus/markkinahinta and https://www.helen.fi/en/electricity/electricity-products-and-prices/marketpriceelectricity
  * They use it all month following stock market price and trying to get their own citation.
* Transfer is in *Oma Helen* and changes are announced in their newspaper.
