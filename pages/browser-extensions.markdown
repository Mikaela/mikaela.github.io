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
* [Temporary containers](https://addons.mozilla.org/en-US/firefox/addon/temporary-containers/)
    * Especially in Automatic mode it renders Cookie Autodelete unnecessary
      in my opinion and is likely more secure.
    * **READ THE FINE MANUAL ON THAT PAGE!**

## Firefox language packs

* [Czech](https://addons.mozilla.org/en-US/firefox/addon/czech-cz-language-pack/)
* [English-US](https://addons.mozilla.org/en-US/firefox/addon/english-us-language-pack/)
* [Esperanto](https://addons.mozilla.org/en-US/firefox/addon/esperanto-language-pack/)
* [Finnish](https://addons.mozilla.org/en-US/firefox/addon/finnish-language-pack/)

## Firefox about:config

* `layout.css.devPixelsPerPx` to `1.25` or `2.0` on macOS Retina to increase font size.
* `privacy.resistFingerprinting` = `true` multiple effects to make your
  browser appear less unique, the ones I have found/understood:
    * warns if `intl.accept_languages` is not `en-US, en` .
    * starts the browser with common size (I love this on big displays).
    * spoofs the user-agent as the latest Firefox ESR version.
* `privacy.trackingprotection.cryptomining.enabled` = `true` so cryptomining
  on some websites gets blocked and won't waste resources.
* `privacy.trackingprotection.fingerprinting.enabled` = `true` I am not
  entirely sure what this does, but as I already recommend
  `privacy.resistFingerprinting`, why not?
* `intl.accept_languages` to `en-US, en`
    * see above.
* `extensions.pocket.enabled` to `false` so the Pocket integration goes away
* On Linux `widget.content.gtk-theme-override` (a string that has to be created by
  user) to `Adwaita:light` so text boxes in dark themes become readable,
  thank you [Dovydas Venckus](https://www.dovydasvenckus.com/linux/2018/08/20/fix-firefox-dark-input-fields-on-gnome/)
    * [Bug 70315: text in menus and boxes unreadable if using dark GTK theme](https://bugzilla.mozilla.org/show_bug.cgi?id=70315)

* `network.security.esni.enabled` to `true` in order to enable encrypted SNI.
    * Requires DoH, see the next section!

#### DNS over HTTPS

* `network.trr.bootstrapAddress` DNS server to use for resolving the DoH
  name, e.g. `84.200.70.40` (Resolver 2 of [DNS.watch](https://dns.watch/)
  in Germany) or `149.112.112.112` (Resolver 2 of [Quad9](https://quad9.net))
* `network.trr.mode` 2 to prefer DoH, but fallback to system resolver (or 3 to enforce DoH without fallback)
    * [DoH is required by Firefox ESNI support](https://bugzilla.mozilla.org/show_bug.cgi?id=1500289) which encrypts SNI which would still leak which
      sites you visit. [Another bug about ESNI + Android DoT](https://bugzilla.mozilla.org/show_bug.cgi?id=1542754#c3)
    * I have ended up to recommending 2 as otherwise the DoH server going
      down stops DNS from working on your Firefox entirely, which may be
      more of a problem than unencrypted SNI as not everyone supports it.
* `network.trr.early-AAAA` `true` to hopefully prefer IPv6
* `network.trr.uri` for the actual resolver address, e.g.
  `https://mozilla.cloudflare-dns.com/dns-query` or `https://dns.quad9.net/dns-query` or
  [check curl wiki](https://github.com/curl/curl/wiki/DNS-over-HTTPS#publicly-available-servers)

Some notes:
* You can confirm TRR working by visiting `about:networking#dns` where
you should be seeing DNS cache of Firefox and a lot of `TRR: true`.
* Quad9 became my preferred resolver through anxiety about other options
  being small (and possibly more likely to go down) or commercial while
  Quad9 is non-profit organization and 2019-03-20 apparently the default
  fallback resolver of dnscrypt-proxy (at least in Debian).
* Quad9 while having filtering of malicious domains should be easy to figure
  out as the problem if something doesn't work on my computers as due to the
  previously mentioned bug I am mainly using it on Firefox.

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
* [Firefox: True Sight](https://addons.mozilla.org/en-US/firefox/addon/detect-cloudflare-plus/)
    * This is a CDN detector and it being a privacy extension can be debated
      but I just feel like putting it here. I will still say that not all
      CDNs are bad (IPFS).

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
* [Firefox: Nudge by Siempo](https://addons.mozilla.org/en-US/firefox/addon/nudge-by-siempo/)
    * [Chrome: Nudge by Siempo](https://chrome.google.com/webstore/detail/nudge-by-siempo/hjoookglknijcfdlbcfnehfhicbknemj)

## Misc

* [Firefox: IPvFoo](https://addons.mozilla.org/en-US/firefox/addon/ipvfoo-pmarks/)
    * [Chrome](https://chrome.google.com/webstore/detail/ipvfoo/ecanpcehffngcegjmadlcijfolapggal)
* [Chrome: RSS](https://chrome.google.com/webstore/detail/rss-subscription-extensio/nlbjncdgjeocebhnmkbbbdekmmmcbfjd)
* [Firefox: IPFS Companion](https://addons.mozilla.org/en-US/firefox/addon/ipfs-companion/)
    * [Firefox: beta channel of IPFS Companion](https://bafybeibjozlsoxzrxsoklis775aglnwpal2hjl42ippo57jdwiv6zoij7m.ipfs.dweb.link/)
        * doesn't sync automatically with Firefox Sync.
    * [Chrome](https://chrome.google.com/webstore/detail/ipfs-companion/nibjojkomfdiaoajekhjakgkdhaomnch)
    * At the time of writing, 2018-09-22, I consider IPFS as
      **incompatible with Tor Browser** as Tor browser would use the local
      IPFS daemon, which **is not using Tor** and thus the IPFS network
      **could see your real IP** especially if not many nodes are
      requesting the fetched content.
* [Firefox: Foxy Proxy](https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/)
    * [Chrome?](https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp)
    * Onions to Tor, I2P to I2P. [My rules]({{site.ipfsGateway}}/ipfs/QmQUc6SmBS8jgvceRLjFsVJNy2NrikDotcQVFxHeRwtQRz/foxyproxy.json)
* [Firefox: Tab Counter](https://addons.mozilla.org/en-US/firefox/addon/tab-counter-webext/)
* [Firefox: Lightbeam](https://addons.mozilla.org/en-US/firefox/addon/lightbeam/)
    * I especially like *nicer dark* with Memrise.
* [Firefox: RSS feed preview](https://addons.mozilla.org/en-US/firefox/addon/feed-preview/)
* [Firefox: Duolingo Boost](https://addons.mozilla.org/en-US/firefox/addon/duolingo-boost/)
    * [Chrome: Duolingo Boost](https://chrome.google.com/webstore/detail/duolingo-boost/mgecoicpalmpphlgfkdepgpofjcnggkn)
    * [Bitbucket](https://bitbucket.org/Richdark/duolingo-boost/)

## Usability

* [Firefox: Tree Style Tab](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
* ~~[Firefox: Text Contrast for Dark Themes](https://addons.mozilla.org/en-US/firefox/addon/text-contrast-for-dark-themes/)~~ see *about:config section*
* [Firefox: Dark Mode (WebExtension)](https://addons.mozilla.org/en-US/firefox/addon/dark-mode-webextension/)
* [Firefox: Zenfox (Solarized themes)](https://addons.mozilla.org/en-us/firefox/addon/zen-fox/)

## Videos

* [Firefox: PeerTubeify](https://addons.mozilla.org/en-US/firefox/addon/feed-preview/)
    * [Chrome: PeerTubeify](https://chrome.google.com/webstore/detail/peertubeify/gegmikcnabpilimgelhabaledkcikdab)
* [Firefox: Alternate Tube Redirector](https://addons.mozilla.org/en-US/firefox/addon/alternate-tube-redirector/)
    * to redirect YouTube videos to https://invidio.us/
    * [GitLab](https://gitlab.com/2vek/alternate-tube-redirector/)

## Firefox Dictionaries

* [Esperanto](https://addons.mozilla.org/en-US/firefox/addon/esperanta-vortaro/)
* [UK English](https://addons.mozilla.org/en-US/firefox/addon/british-english-dictionary-2/)
* [Czech](https://addons.mozilla.org/en-US/firefox/addon/czech-spell-checking-dictionar/)
* [Swedish](https://addons.mozilla.org/en-US/firefox/addon/g%C3%B6rans-hemmasnickrade-ordli/)
