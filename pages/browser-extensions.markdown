---
layout: page
title: Browser extensions I often end up installing
permalink: /browser-extensions.html
sitemap: true
excerpt: "List of links to browser extensions I often end up installing in new environments while missing access to sync."
redirect_from:
  - /firefox.html
  - /firefox-extensions.html
  - /firefox-addons.html
  - /chrome.html
  - /chromium.html
---

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
* [Firefox: µMatrix](https://addons.mozilla.org/firefox/addon/umatrix/)
    * [Chrome](https://chrome.google.com/webstore/detail/%C2%B5matrix/ogfcmafjalglgifnmanfmnieipoejdcf)
    * It can easily replace Cookie Autodelete (block cookies for global scope), Privacy Badger (by default), NoScript and possibly others.
    * Quick usage: click top half of red boxes to allow blocked content or allow everything from that domain by cliking top half of the domain box. Click the lock to remember this. For global changes, press the asterisk to have it affect everywhere by default and see the first link below.
    * Reading I recommend:
        * [How to block 1st party scripts everywhere by default](https://github.com/gorhill/uMatrix/wiki/How-to-block-1st-party-scripts-everywhere-by-default) and I suggest adapting it to block cookies too so Cookie Autodelete becomes unnecessary.
        * [Ruleset recipes](https://github.com/gorhill/uMatrix/wiki/Ruleset-recipes)
        * [A lot of other instructions in the wiki](https://github.com/gorhill/uMatrix/wiki)
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

## Firefox about:config

* `privacy.firstparty.isolate` to `true` for preventing domains from
  accessing each other's data.
* `dom.security.https_only_mode` to `true` to force HTTPS and not need HTTPS Everywhere
  * [Breaks IPFS companion subdomain gateway redirect](https://github.com/ipfs-shipyard/ipfs-companion/issues/855), see also [Firefox bug 1220810 Consider hardcoding localhost names to the loopback address](https://bugzilla.mozilla.org/show_bug.cgi?id=1220810#c23)
* `security.certerrors.mitm.auto_enable_enterprise_roots` to `false` in order to not trust system CA store in case of enterprise MITM
* `security.OCSP.require` to `true` in order to not allow [OCSP](https://en.wikipedia.org/wiki/OCSP_stapling) soft fail. *I am not sure if this is a good idea.*
* `privacy.resistFingerprinting.letterboxing` = `true` so letterboxing is
  used to hide real browser size. [Tor Browser support](https://support.torproject.org/tbb/maximized-torbrowser-window/)
* `extensions.pocket.enabled` to `false` so the Pocket integration goes away
* On Linux `widget.content.gtk-theme-override` (a string that has to be created by
  user) to `Adwaita:light` so text boxes in dark themes become readable,
  thank you [Dovydas Venckus](https://www.dovydasvenckus.com/linux/2018/08/20/fix-firefox-dark-input-fields-on-gnome/)
    * [Bug 70315: text in menus and boxes unreadable if using dark GTK theme](https://bugzilla.mozilla.org/show_bug.cgi?id=70315)
* `image.animation_mode` to `once` in order to have gifs play once and
  then stop everywhere (`none` to never have them play).
* <s>`media.peerconnection.enabled` to `false` in order to disable WebRTC (potential IP leaker, will break VoIP/calls, but those are better outside of Firefox anyway)</s> *Not needed anymore in 2020, WebRTC has improved to not do that.*
  * `media.navigator.enabled` to `false` in order to also hide cameras and microphones from websites. *I am not sure if this is still necessary either, but maybe it will remind me that I have focused my VoIP to Chromium?*
* `network.IDN_show_punycode` to `true` in order to see punycode instead of UTF-8 in case of spoofing attempt. However makes reading non-ASCII domains painful.
* `reader.parse-on-load.force-enabled` to `true` in order to allow reader use to be used on ~all websites and devices (regardless of low RAM?)
*  `toolkit.telemetry.server` to empty in order to not send telemetry (which may be blocked by filtering DNS providers such as AdGuard or NextDNS resulting high amount of failing queries)
* `network.security.esni.enabled` to `true` in order to enable encrypted SNI.
    * Requires DoH, see the next section!

Future note: [`network.dns.blockDotOnion;false`](https://bugzilla.mozilla.org/show_bug.cgi?id=1497263) ?

#### DNS over HTTPS

* `network.trr.bootstrapAddress` DNS server to use for resolving the DoH
  name, e.g. `149.112.112.112` (Resolver 2 of [Quad9](https://quad9.net))
* `network.trr.mode` depends, 2 to prefer DoH, but fallback to system resolver (or 3 to enforce DoH without fallback). ***If there is system encrypted DNS, just take 5 to at least benefit from the system DNS cache.***
    * [DoH is required by Firefox ESNI support](https://bugzilla.mozilla.org/show_bug.cgi?id=1500289) which encrypts SNI which would still leak which
      sites you visit. [Another bug about ESNI + Android DoT](https://bugzilla.mozilla.org/show_bug.cgi?id=1542754#c3)
    * I have ended up to recommending 2 as otherwise the DoH server going
      down stops DNS from working on your Firefox entirely, which may be
      more of a problem than unencrypted SNI as not everyone supports it.
        * since then I have decided that 5 is the best option, because otherwise it goes past ***my*** Unbound setup. I hope Mozilla/Firefox will fix the two bugs linked above, so I don't have to choose between DNS under my control vs encrypted SNI.
* `network.trr.early-AAAA` `true` to hopefully prefer IPv6
* `network.trr.uri` for the actual resolver address, e.g.
  `https://dns.quad9.net/dns-query` or `https://149.112.112.112/dns-query` (removes the need for `network.trr.bootstrapAddress` and allows `network.trr.mode` `3`?) or
  [check privacytools.io DNS section](https://www.privacytools.io/providers/dns/)

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
* [While investingating how Android 9 Private DNS works, I also wrote a DNS provider comparsion here]({% post_url blog/2019-07-11-android-private-dns-in-practice %})

#### SSDs

This information is from [Arch Wiki on Firefox tweaks](https://wiki.archlinux.org/index.php/Firefox/Tweaks)

* `browser.cache.disk.enable` to `false` to only cache to RAM.
* (`browser.cache.memory.enable` to `true` which should be default)
* `browser.sessionstore.interval` to `600000` in order to only store open session every ten minutes (instead of 15 seconds) in case of crashes.
    * alternatively `browser.sessionstore.resume_from_crash` to `false` to not store the session data for crash recovery at all. I think this may be the more healthy option with all the information flood and dozens of tabs.

Why?

> Every object loaded (html page, jpeg image, css stylesheet, gif banner) is saved in the Firefox cache for future use without the need to download it again. It is estimated that only a fraction of these objects will be reused, usually about 30%. This because of very short object expiration time, updates or simply user behavior (loading new pages instead of returning to the ones already visited). The Firefox cache is divided into memory and disk cache and the latter results in frequent disk writes: newly loaded objects are written to memory and older objects are removed.

> Firefox stores the current session status (opened urls, cookies, history and form data) to the disk on a regular basis. It is used to recover a previous session in case of crash. The default setting is to save the session every 15 seconds, resulting in frequent disk access.

and this is the reason why Firefox is at times accused of killing SSDs.

* * * * *

Changelog: [GitHub.com commits](https://github.com/Mikaela/mikaela.github.io/commits/master/pages/browser-extensions.markdown) | [gitea.blesmrt.net commits](https://gitea.blesmrt.net/mikaela/mikaela-info/commits/branch/master/pages/browser-extensions.markdown)
