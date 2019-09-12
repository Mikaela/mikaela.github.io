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

<table>
    <tr>
        <th>Name</th>
        <th>Link</th>
        <th>Source</th>
        <th>Comment</th>
    </tr>
    <tr>
        <td>Facebook Container</td>
        <td><a href="https://addons.mozilla.org/en-US/firefox/addon/facebook-container/">Firefox Add-ons</a></td>
        <td>TBD</td>
        <td>nice when clicking Facebook links even while not being a Facebook user</td>
    </tr>
    <tr>
        <td>Google Container</td>
        <td><a href="https://addons.mozilla.org/en-US/firefox/addon/google-container/">Firefox Add-ons</a></td>
        <td>TBD</td>
        <td></td>
    </tr>
    <tr>
        <td>Firefox Multi Account Containers</td>
        <td><a href="https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers">Firefox Add-ons</a></td>
        <td>TBD</td>
        <td></td>
    </tr>
</table>

## Firefox language packs

* [Czech](https://addons.mozilla.org/en-US/firefox/addon/czech-cz-language-pack/)
* [English-US](https://addons.mozilla.org/en-US/firefox/addon/english-us-language-pack/)
* [Esperanto](https://addons.mozilla.org/en-US/firefox/addon/esperanto-language-pack/)
* [Finnish](https://addons.mozilla.org/en-US/firefox/addon/finnish-language-pack/)


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
        <td><a href="https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/">Firefox Add-ons</a></td>
        <td><a href="https://chrome.google.com/webstore/detail/bitwarden-free-password-m/nngceckbapebfimnlniiiahkandclblb">Chrome Web Store</a></td>
        <td>TBD</td>
    </tr>
</table>

## Privacy

* [Firefox: HTTPS Everywhere](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/)
    * [Chrome](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp)
* [Firefox: Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
    * [Chrome](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp)
* [Firefox: Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
    * [Chrome](https://chrome.google.com/webstore/detail/decentraleyes/ldpochfccmkkmhdbclfhpagapcfdljkj)
    * [Chrome HTTPS Everywhere fix page](https://decentraleyes.org/configure-https-everywhere/)
    * [µMatrix users](https://git.synz.io/Synzvato/decentraleyes/wikis/Frequently-Asked-Questions#for-umatrix-and-ublock-origin-non-easy-mode-users)
* ~~[Firefox: True Sight](https://addons.mozilla.org/en-US/firefox/addon/detect-cloudflare-plus/)~~
    * This is a CDN detector and it being a privacy extension can be debated
      but I just feel like putting it here. I will still say that not all
      CDNs are bad (IPFS). I mostly don't have it enabled
* [Firefox: µMatrix](https://addons.mozilla.org/firefox/addon/umatrix/)
    * [Chrome](https://chrome.google.com/webstore/detail/%C2%B5matrix/ogfcmafjalglgifnmanfmnieipoejdcf)
    * It can easily replace Cookie Autodelete (block cookies for global scope), Privacy Badger (by default), NoScript and possibly others.
    * Quick usage: click top half of red boxes to allow blocked content or allow everything from that domain by cliking top half of the domain box. Click the lock to remember this. For global changes, press the asterisk to have it affect everywhere by default and see the first link below.
    * Reading I recommend:
        * [How to block 1st party scripts everywhere by default](https://github.com/gorhill/uMatrix/wiki/How-to-block-1st-party-scripts-everywhere-by-default) and I suggest adapting it to block cookies too so Cookie Autodelete becomes unnecessary.
        * [Ruleset recipes](https://github.com/gorhill/uMatrix/wiki/Ruleset-recipes)
        * [A lot of other instructions in the wiki](https://github.com/gorhill/uMatrix/wiki)

### Tor

* [Firefox: Privacy Pass](https://addons.mozilla.org/en-US/firefox/addon/privacy-pass/)
    * [Chrome](https://chrome.google.com/webstore/detail/privacy-pass/ajhmfdgkijocedmfjonnpjfojldioehi)
    * May reduce captchas with CloudFlare.

## Productivity

* [Firefox: Mind The Time](https://addons.mozilla.org/en-US/firefox/addon/mind-the-time/)
    * [Chrome equivalent: Webtime tracker](https://chrome.google.com/webstore/detail/webtime-tracker/ppaojnbmmaigjmlpjaldnkgnklhicppk)

## Misc

* [Firefox: IPvFoo](https://addons.mozilla.org/en-US/firefox/addon/ipvfoo-pmarks/)
    * [Chrome](https://chrome.google.com/webstore/detail/ipvfoo/ecanpcehffngcegjmadlcijfolapggal)
* [Firefox: RSS feed preview](https://addons.mozilla.org/en-US/firefox/addon/feed-preview/)
    * [Chrome: RSS](https://chrome.google.com/webstore/detail/rss-subscription-extensio/nlbjncdgjeocebhnmkbbbdekmmmcbfjd)
* [Firefox: IPFS Companion](https://addons.mozilla.org/en-US/firefox/addon/ipfs-companion/)
    * [Firefox: beta channel of IPFS Companion](https://bafybeibjozlsoxzrxsoklis775aglnwpal2hjl42ippo57jdwiv6zoij7m.ipfs.dweb.link/)
        * doesn't sync automatically with Firefox Sync.
    * [Chrome](https://chrome.google.com/webstore/detail/ipfs-companion/nibjojkomfdiaoajekhjakgkdhaomnch)
    * At the time of writing, 2019-07-13, I consider IPFS as
      **incompatible with Tor Browser** as Tor browser would use the local
      IPFS daemon, which **is not using Tor** and thus the IPFS network
      **could see your real IP** especially if not many nodes are
      requesting the fetched content.
* [Firefox: Foxy Proxy](https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/)
    * [Chrome?](https://chrome.google.com/webstore/detail/foxyproxy-standard/gcknhkkoolaabfmlnjonogaaifnjlfnp)
    * Onions to Tor, I2P to I2P. [My rules]({{site.ipfsGateway}}/ipfs/QmQUc6SmBS8jgvceRLjFsVJNy2NrikDotcQVFxHeRwtQRz/foxyproxy.json)
* [Firefox: Tab Counter](https://addons.mozilla.org/en-US/firefox/addon/tab-counter-webext/)
* [Firefox: Lightbeam](https://addons.mozilla.org/en-US/firefox/addon/lightbeam/)
* [Firefox: Duolingo Boost](https://addons.mozilla.org/en-US/firefox/addon/duolingo-boost/)
    * [Chrome: Duolingo Boost](https://chrome.google.com/webstore/detail/duolingo-boost/mgecoicpalmpphlgfkdepgpofjcnggkn)
    * [Bitbucket](https://bitbucket.org/Richdark/duolingo-boost/)
* [Firefox: Violentmonkey](https://addons.mozilla.org/en-US/firefox/addon/violentmonkey/)

## Usability

* [Firefox: Tree Style Tab](https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab/)
* [Firefox: Grayscale](https://addons.mozilla.org/en-US/firefox/addon/grayscalefortabs/)

## Videos

*empty*

## Firefox Dictionaries

* [Esperanto](https://addons.mozilla.org/en-US/firefox/addon/esperanta-vortaro/)
* [UK English](https://addons.mozilla.org/en-US/firefox/addon/british-english-dictionary-2/)
* [Czech](https://addons.mozilla.org/en-US/firefox/addon/czech-spell-checking-dictionar/)
* [Swedish](https://addons.mozilla.org/en-US/firefox/addon/g%C3%B6rans-hemmasnickrade-ordli/)

* * * * *

## Firefox about:config

* `layout.css.devPixelsPerPx` to `1.25` or `2.0` on macOS Retina to increase font size.
    * Warning: very likely increases fingerprintability
* `privacy.firstparty.isolate` to `true` for preventing domains from
  accessing each other's data.
    * If something breaks, it's most likely related to this. ~~I am yet to
      test if this~~ Surprisingly it doesn't break~~s~~ Finnish strong electric authentication.
* `privacy.resistFingerprinting` = `true` multiple effects to make your
  browser appear less unique, the ones I have found/understood:
    * warns if `intl.accept_languages` is not `en-US, en` .
    * starts the browser with common size (I love this on big displays).
    * spoofs the user-agent as the latest Firefox ESR version.
    * [Firefox's protection against fingerprinting](https://support.mozilla.org/en-US/kb/firefox-protection-against-fingerprinting)
      has the upstream list.
        * [A better list under section 4500: RFP (RESIST FINGERPRINTING)](https://github.com/ghacksuserjs/ghacks-user.js/blob/master/user.js)
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
* `image.animation_mode` to `once` in order to have gifs play once and
  then stop everywhere (`none` to never have them play).
* `geo.wifi.uri` to `https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%` in order to send nearby WiFi networks to Mozilla instead of Google. See also [MLS Software](https://wiki.mozilla.org/CloudServices/Location/Software).
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
  `https://dns.quad9.net/dns-query` or `https://149.112.112.112/dns-query` (removes the need for `network.trr.bootstrapAddress` and allows ǹetwork.trr.mode` `3`?) or
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
