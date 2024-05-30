---
layout: page
title: Browser extensions I often end up installing
permalink: /browser-extensions.html
sitemap: true
excerpt: "Browser advanced configuration that tends to not sync"
redirect_from:
  - /firefox.html
  - /firefox-extensions.html
  - /firefox-addons.html
  - /chrome.html
  - /chromium.html
lang: en
---

Browser extensions are living in my browser policies.

- [Firefox](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/firefox/policies)
- [Chromium](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/opt/chromium/policies/managed)

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Chromium flags](#chromium-flags)
  - [Vendor-prefixed](#vendor-prefixed)
- [Firefox about:config](#firefox-aboutconfig)
  - [Advertising](#advertising)
  - [Cookie banner blocking](#cookie-banner-blocking)
  - [DNS over HTTPS](#dns-over-https)
  - [SSDs](#ssds)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

<!--

https://addons.mozilla.org/firefox/addon/text-link/ - doubleclick plaintext link to use

* [Ecosia search engine at Mycroft Project](https://mycroftproject.com/search-engines.html?name=ecosia.org)

## Firefox containers

<table>
    <tr>
        <th>Name</th>
        <th>Link</th>
        <th>Source</th>
        <th>Comment</th>
    </tr>
    <tr>
        <td>Firefox Multi Account Containers</td>
        <td><a href="https://addons.mozilla.org/firefox/addon/multi-account-containers">Firefox Add-ons</a></td>
        <td>TBD</td>
        <td></td>
    </tr>
</table>

## Firefox language packs

* [Czech](https://addons.mozilla.org/firefox/addon/czech-cz-language-pack/)
* [English-US](https://addons.mozilla.org/firefox/addon/english-us-language-pack/)
* [Esperanto](https://addons.mozilla.org/firefox/addon/esperanto-language-pack/)
* Estonian?
* [Finnish](https://addons.mozilla.org/firefox/addon/finnish-language-pack/)
* Spanish?
* Swedish?

## Instant Messaging

* [Radical](https://github.com/stoically/radical) - Element, Matrix.org client as webextensions
  * [Firefox](https://addons.mozilla.org/firefox/addon/radical-web)

## Passwords

<table>
    <tr>
        <th>Name</th>
        <th>Firefox</th>
        <th>Chromium</th>
        <th>Source</th>
    </tr>
    <tr>
        <td>Bitwarden</td>
        <td><a href="https://addons.mozilla.org/firefox/addon/bitwarden-password-manager/">Firefox Add-ons</a></td>
        <td><a href="https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb">Chrome Web Store</a></td>
        <td>TBD</td>
    </tr>
</table>

## Privacy

* [Behave!](https://github.com/mindedsecurity/behave) - reveals portscanning performed by websites (detects IPFS).
  * [Firefox](https://addons.mozilla.org/en-US/firefox/addon/behave/)
  * [Chrome](https://chrome.google.com/webstore/detail/mppjbkhgconmemoeagfbgilblohhcica/)
* [HTTPS Everywhere], [source code]
    * <s>[Firefox](https://addons.mozilla.org/firefox/addon/https-everywhere/)</s> `dom.security.https_only_mode` `true`
    * [Chrome](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp)
* NoScript (which I use more for anti-annoyance than privacy)
  * [Chrome](https://chrome.google.com/webstore/detail/noscript/doojmbjmlfjjnbmnoijecmcbfeoakpjm/)
  * [Firefox](https://addons.mozilla.org/firefox/addon/noscript/)
  * [Source/GitHub](https://github.com/hackademix/noscript/)
* Snowflake to help censored users (won't increase user privacy), requires WebRTC
    * https://addons.mozilla.org/firefox/addon/torproject-snowflake/
    * https://chrome.google.com/webstore/detail/snowflake/mafpmfcccpbjnhfhjnllmmalhifmlcie

## Productivity

* [Firefox: Mind The Time](https://addons.mozilla.org/firefox/addon/mind-the-time/)
    * [Chrome equivalent: Webtime tracker](https://chrome.google.com/webstore/detail/webtime-tracker/ppaojnbmmaigjmlpjaldnkgnklhicppk)

## Misc

* [Firefox: IPvFoo](https://addons.mozilla.org/firefox/addon/ipvfoo-pmarks/)
    * [Chrome](https://chrome.google.com/webstore/detail/ipvfoo/ecanpcehffngcegjmadlcijfolapggal)
* [Firefox: RSS feed preview](https://addons.mozilla.org/firefox/addon/feed-preview/)
    * [Chrome: RSS](https://chrome.google.com/webstore/detail/rss-subscription-extensio/nlbjncdgjeocebhnmkbbbdekmmmcbfjd)
* [Firefox: IPFS Companion](https://addons.mozilla.org/firefox/addon/ipfs-companion/)
    * [Firefox: beta channel of IPFS Companion](https://bafybeibjozlsoxzrxsoklis775aglnwpal2hjl42ippo57jdwiv6zoij7m.ipfs.dweb.link/)
        * doesn't sync automatically with Firefox Sync.
    * [Chrome](https://chrome.google.com/webstore/detail/ipfs-companion/nibjojkomfdiaoajekhjakgkdhaomnch)
    * At the time of writing, 2019-07-13, I consider IPFS as
      **incompatible with Tor Browser** as Tor browser would use the local
      IPFS daemon, which **is not using Tor** and thus the IPFS network
      **could see your real IP** especially if not many nodes are
      requesting the fetched content.
* [Firefox: Foxy Proxy](https://addons.mozilla.org/firefox/addon/foxyproxy-standard/)
    * [Chrome?](https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp)
    * Onions to Tor, I2P to I2P. [My rules](https://bafybeia7yeie5a6arstytabl6bfhacmidcy4yhht3e6dfrrq4gi2gry4pu.{{site.ipfsSubdomainGateway}}/foxyproxy.json)
* [Firefox: Foxy Tab](https://addons.mozilla.org/firefox/addon/foxytab/)
* Verify-Me for rel=me verifications (Indieweb)
    * https://addons.mozilla.org/firefox/addon/verify-me/
    * https://chrome.google.com/webstore/detail/verify-me/nnefkajddpfponfnmaflddipljfdlcjb

## Usability

* [Firefox: Tree Style Tab](https://addons.mozilla.org/firefox/addon/tree-style-tab/)
*  Tab Suspender
    * https://addons.mozilla.org/firefox/addon/ff-tab-suspender/
* [Dark Background and light text (GitHub)](https://github.com/m-khvoinitsky/dark-background-light-text-extension)
  * [Firefox](https://addons.mozilla.org/firefox/addon/dark-background-light-text/)

## Videos

* Invdition - YouTube to Invidious and Twitter to Nitter
    * https://addons.mozilla.org/firefox/addon/invidition/

## Firefox Dictionaries

TODO: Sort this list.

* Estonian?
* Spanish?
* Swedish?
* [Esperanto](https://addons.mozilla.org/firefox/addon/esperanta-vortaro/)
* [UK English](https://addons.mozilla.org/firefox/addon/british-english-dictionary-2/)
* [Czech](https://addons.mozilla.org/firefox/addon/czech-spell-checking-dictionar/)
* [Swedish](https://addons.mozilla.org/firefox/addon/g%C3%B6rans-hemmasnickrade-ordli/)

* * * * *

-->

# Chromium flags

These can generally be found from `about:flags` on Chromium based browsers, for Vivaldi explicit `vivaldi://flags` is required and it also has `chrome://settings` for the usual Chromium settings.

- `#enable-quic` - enabled
- `#enable-force-dark` - enabled with increased text constract
- `#force-color-profile` - sRGB
- `#trust-tokens` - enabled

## Vendor-prefixed

These likely also exist, but just without the `vendor-` part when searhcing.

- `#edge-automatic-https` - enabled
- `#edge-autoplay-user-setting-block-option`
- `#edge-tab-groups` - enabled
- `#edge-tab-groups-auto-create` - enabled
- `#edge-tab-groups-collapse-freezing` - enabled

# Firefox about:config

_On LibreAwoo or autoconfig, refer to my [conf/librewolf.overrides.cfg in my shell-things repo](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/conf/librewolf.overrides.cfg) which has kind of replaced this section?._

- `security.certerrors.mitm.auto_enable_enterprise_roots` to `false` in order to not trust system CA store in case of enterprise MITM
- `security.OCSP.require` to `true` in order to not allow [OCSP](https://en.wikipedia.org/wiki/OCSP_stapling) soft fail. This may be a bit paranoid, but _only the paranoid survive._
- `privacy.resistFingerprinting.letterboxing` = `true` so letterboxing is
  used to hide real browser size. [Tor Browser support](https://support.torproject.org/tbb/maximized-torbrowser-window/)
  - [Bug 70315: text in menus and boxes unreadable if using dark GTK theme](https://bugzilla.mozilla.org/show_bug.cgi?id=70315))
- `image.animation_mode` to `once` in order to have gifs play once and
  then stop everywhere (`none` to never have them play).
- `geo.provider.network.url` to `https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%` in order to send nearby WiFi networks to Mozilla instead of Google. See also [MLS Software](https://wiki.mozilla.org/CloudServices/Location/Software).
- `network.IDN_show_punycode` to `true` in order to see punycode instead of UTF-8 in case of spoofing attempt. However makes reading non-ASCII domains painful. E.g. Cyrillic alphabet
- `reader.parse-on-load.force-enabled` to `true` in order to allow reader use to be used on ~all websites and devices (regardless of low RAM?)

Future note: [`network.dns.blockDotOnion;false`](https://bugzilla.mozilla.org/show_bug.cgi?id=1497263) ?

## Advertising

Firefox seems to contain a lot of advertising or sponsoring nowadays, whether to other Mozilla products or whoever pays them. See also [Bug 1773860: Provide global long-term "disable all promos" flag](https://bugzilla.mozilla.org/show_bug.cgi?id=1773860).

- `browser.newtabpage.activity-stream.showSponsored` & `browser.newtabpage.activity-stream.showSponsored` to `false` to stop sponsored links.
- `browser.vpn_promo.enabled` to `false` to hopefully stop Mozilla VPN advertisements
- `browser.promo.focus.enabled` to `false` to stop Firefox Focus advertisements?
- `browser.preferences.moreFromMozilla` to `false` to not hear from other Mozilla products?

## [Cookie banner blocking](https://www.ghacks.net/2022/12/24/configure-firefox-to-reject-cookie-banners-automatically/)

TODO: clean write this.

```js
defaultPref("cookiebanners.service.mode", 2);
defaultPref("cookiebanners.service.mode.privateBrowsing", 2);
defaultPref("cookiebanners.bannerClicking.enabled", true);
```

## DNS over HTTPS

- `network.trr.mode` depends, `3` to enforce DoH (required for ECH) or `5` to explicitly disable. `2` to prefer DoH, but fallback to system also exists.
  - [DoH is required by Firefox ESNI/ECH support](https://bugzilla.mozilla.org/show_bug.cgi?id=1500289) which encrypts SNI/ClientHello which would still leak which
    sites you visit. [Another bug about ESNI/ECH + Android DoT](https://bugzilla.mozilla.org/show_bug.cgi?id=1542754#c3)
  - Are you using a VPN? Do they provide a DoH server? If yes, maybe the answer is 3 for ESNI/ECH?
- `network.trr.early-AAAA` `true` to hopefully prefer IPv6
- `network.trr.uri` for the actual resolver address, e.g.
  `https://doh.mullvad.net/dns-query`
  - and if they provide as SOCKS proxy as a killswitch, `network.proxy.socks_remote_dns` must be `false`
- `network.trr.disable-ECS` to `false` if preferring speed over privacy or using NextDNS private ECS.
  - [Wikipedia: EDNS Client Subnet](https://en.wikipedia.org/wiki/EDNS_Client_Subnet)

Some notes:

- There is also `network.trr.exclude-etc-hosts` for those using `/etc/hosts` for blocking.
- You can confirm TRR working by visiting `about:networking#dns` where
  you should be seeing DNS cache of Firefox and a lot of `TRR: true`.
- ECH requires `network.dns.echconfig.enabled` and `network.dns.use_https_rr_as_altsvc` to be `true`,
  but they seem to default to true at least in Firefox Nightly so maybe no action is needed.
- [While investingating how Android 9 Private DNS works, I also wrote a DNS provider comparsion here on 2019-07-11]({% post_url blog/2019-07-11-android-private-dns-in-practice %})

## SSDs

This information is from [Arch Wiki on Firefox tweaks](https://wiki.archlinux.org/index.php/Firefox/Tweaks)

<!-- - `browser.cache.disk.enable` to `false` to only cache to RAM.
- (`browser.cache.memory.enable` to `true` which should be default) -->

- `browser.sessionstore.interval` to `600000` in order to only store open session every ten minutes (instead of 15 seconds) in case of crashes.
  - alternatively `browser.sessionstore.resume_from_crash` to `false` to not store the session data for crash recovery at all. I think this may be the more healthy option with all the information flood and dozens of tabs.

Why?

> Every object loaded (html page, jpeg image, css stylesheet, gif banner) is saved in the Firefox cache for future use without the need to download it again. It is estimated that only a fraction of these objects will be reused, usually about 30%. This because of very short object expiration time, updates or simply user behavior (loading new pages instead of returning to the ones already visited). The Firefox cache is divided into memory and disk cache and the latter results in frequent disk writes: newly loaded objects are written to memory and older objects are removed.

> Firefox stores the current session status (opened urls, cookies, history and form data) to the disk on a regular basis. It is used to recover a previous session in case of crash. The default setting is to save the session every 15 seconds, resulting in frequent disk access.

and this is the reason why Firefox is at times accused of killing SSDs.

---

Changelog: [GitHub.com commits](https://github.com/Mikaela/mikaela.github.io/commits/master/pages/browser-extensions.markdown) | [gitea.blesmrt.net commits](https://gitea.blesmrt.net/mikaela/mikaela-info/commits/branch/master/pages/browser-extensions.markdown)
