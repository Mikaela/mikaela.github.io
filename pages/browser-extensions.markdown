---
layout: page
title: Browser extensions I often end up installing
permalink: /browser-extensions.html
sitemap: false
excerpt: "List of links to browser extensions I often end up installing in new environments while missing access to sync."
redirect_from:
  - /firefox.html
  - /firefox-extensions.html
  - /firefox-addons.html
  - /chrome.html
  - /chromium.html
---

* [Ecosia search engine at Mycroft Project](https://mycroftproject.com/search-engines.html?name=ecosia.org)

## Firefox containers

* [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/)
* [Google Container](https://addons.mozilla.org/en-US/firefox/addon/google-container/)
* [Firefox Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)

## Firefox about:config

* `layout.css.devPixelsPerPx` to `1.25` or `2.0` on macOS Retina to increase font size.
* `privacy.resistFingerprinting` = `true` multiple effects to make your
  browser appear less unique, the ones I have found/understood:
    * warns if `intl.accept_languages` is not `en-US, en` .
    * starts the browser with common size (I love this on big displays).
    * spoofs the user-agent as the latest Firefox ESR version.
* `intl.accept_languages` to `en-US, en`
    * see above.

## Passwords

* [Firefox: Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
    * [Chrome](https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb)

## Privacy

* [Firefox: Cookie Autodelete](https://addons.mozilla.org/en-US/firefox/addon/cookie-autodelete/)
    * [Chrome](https://chrome.google.com/webstore/detail/cookie-autodelete/fhcgjolkccmbidfldomjliifgaodjagh)
* [Firefox: HTTPS Everywhere](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/)
    * [Chrome](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp)
* [Firefox: Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
    * [Chrome](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp)
* [Firefox: Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
    * [Chrome](https://chrome.google.com/webstore/detail/decentraleyes/ldpochfccmkkmhdbclfhpagapcfdljkj)
    * [Chrome HTTPS Everywhere fix page](https://decentraleyes.org/configure-https-everywhere/)
* [Firefox: Google search link fix](https://addons.mozilla.org/en-US/firefox/addon/google-search-link-fix/)
    * Copied from [PrivacyTools.io](https://privacytools.io), cleans Google
      results links.

### Tor

* [Firefox: Privacy Pass](https://addons.mozilla.org/en-US/firefox/addon/privacy-pass/)
    * [Chrome](https://chrome.google.com/webstore/detail/privacy-pass/ajhmfdgkijocedmfjonnpjfojldioehi)
    * May reduce captchas with CloudFlare.
* [Firefox: Healthy.Onion](https://addons.mozilla.org/en-US/firefox/addon/healthy-onion/)
    * **Only for Tor Browser** or other browser going through Tor all the
      time as it redirects clearnet addresses to Tor .onion hidden
      services that cannot be accessed outside of Tor. 

## Productivity

* [Firefox: Mind The Time](https://addons.mozilla.org/en-US/firefox/addon/mind-the-time/)
    * [Chrome equivalent: Webtime tracker](https://chrome.google.com/webstore/detail/webtime-tracker/ppaojnbmmaigjmlpjaldnkgnklhicppk)
* [Chrome: Nudge by Siempo](https://chrome.google.com/webstore/detail/nudge-by-siempo/hjoookglknijcfdlbcfnehfhicbknemj)
    * Firefox coming soon™

## Passwords

* [Firefox: Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)
    * [Chrome](https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb)


## Misc

* [Firefox: IPvFoo](https://addons.mozilla.org/en-US/firefox/addon/ipvfoo-pmarks/)
    * [Chrome](https://chrome.google.com/webstore/detail/ipvfoo/ecanpcehffngcegjmadlcijfolapggal)


* [Chrome: RSS](https://chrome.google.com/webstore/detail/rss-subscription-extensio/nlbjncdgjeocebhnmkbbbdekmmmcbfjd)

* [Firefox: IPFS Companion](https://addons.mozilla.org/en-US/firefox/addon/ipfs-companion/)
    * [Chrome](https://chrome.google.com/webstore/detail/ipfs-companion/nibjojkomfdiaoajekhjakgkdhaomnch)
    * At the time of writing, 2018-09-22, I consider IPFS as
      **incompatible with Tor Browser** as Tor browser would use the local
      IPFS daemon, which **is not using Tor** and thus the IPFS network
      **could see your real IP** especially if not many nodes are
      requesting the fetched content.
* [Firefox: Tree Style Tab](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
* [Firefox: Foxy Proxy](https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/)
    * [Chrome?](https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp)
    * Onions to Tor, I2P to I2P. [My rules]({{site.ipfs}}/QmQUc6SmBS8jgvceRLjFsVJNy2NrikDotcQVFxHeRwtQRz/foxyproxy.json)
* [Firefox: Tab Counter](https://addons.mozilla.org/en-US/firefox/addon/tab-counter-webext/)
* [Firefox: Lightbeam](https://addons.mozilla.org/en-US/firefox/addon/lightbeam/)
* [Firefox: Text Contrast for Dark Themes](https://addons.mozilla.org/en-US/firefox/addon/text-contrast-for-dark-themes/)
* [Firefox: Dark Mode (WebExtension)](https://addons.mozilla.org/en-US/firefox/addon/dark-mode-webextension/)
    * I especially like *nicer dark* with Memrise.

## Firefox Dictionaries

* [Esperanto](https://addons.mozilla.org/en-US/firefox/addon/esperanta-vortaro/)
* [UK English](https://addons.mozilla.org/en-US/firefox/addon/british-english-dictionary-2/)
* [Czech](https://addons.mozilla.org/en-US/firefox/addon/czech-spell-checking-dictionar/)
* [Swedish](https://addons.mozilla.org/en-US/firefox/addon/g%C3%B6rans-hemmasnickrade-ordli/)
