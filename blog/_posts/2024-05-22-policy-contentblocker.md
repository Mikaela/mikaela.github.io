---
layout: post
title: "Browser policies Ⅱ: Deploying PrivacyBadger and uBlock Origin"
category: [english]
tags: [firefox, chromium, browsers, browser, policy]
redirect_from:
  - /privacybadger.html
  - /ublockorigin.html
  - /https2.html
---

_I previously wrote about enforcing HTTPS for all users/profiles through browser policy receiving some positive feedback and I felt like continuing on the subject by instructing with extension installation. This barely scratches the surface of what browser policy can do for you either though._

I recommend reading the [browser policy part Ⅰ on enforcing HTTPS only mode]({% post_url blog/2024-05-17-https-everywhere %}) as especially the Firefox part will continue building on it and I will try to not repeat myself, although that is unavoidable.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Chromium](#chromium)
  - [`/etc/opt/chromium/policies/managed/aminda-extensions.json`](#etcoptchromiumpoliciesmanagedaminda-extensionsjson)
- [Firefox](#firefox)
- [Answers to potential questions](#answers-to-potential-questions)
- [Where can I see what policies extensions can take?](#where-can-i-see-what-policies-extensions-can-take)
  - [Why both PrivacyBadger and uBlock Origin?](#why-both-privacybadger-and-ublock-origin)
  - [Why EFF DNT allowlist?](#why-eff-dnt-allowlist)
  - [How do I enable more default lists in uBlock Origin?](#how-do-i-enable-more-default-lists-in-ublock-origin)
- [What do you think about this blog post?](#what-do-you-think-about-this-blog-post)
- [Will there be browser policies part Ⅲ?](#will-there-be-browser-policies-part-%E2%85%B2)
  - [Where is all the futher reading?](#where-is-all-the-futher-reading)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Chromium

[I previously instructed with the directory creation and permissions in the part Ⅰ]({% post_url blog/2024-05-17-https-everywhere %}#chromium) and there I also mentioned loving how I can create separate files
there as opposed to messing everything together. I tend to use the filename
`aminda-extensions.json` for all extension related as Chromium isn't perfect
either and only lets the options appear once.

So the file may look a bit scary, but it's actually quite simple (and the difficulty comes from getting json formatted correctly, which I am leaving for `pretty-format-json` pre-commit hook), so I am going to explain everything before the actual json:

The `3rdparty` and `extensions` let us configure extensions in advance.

`cjpalhdlnbpafiamejdnhcphjbkeiagm` is the ID of uBlock Origin from Chrome Web store which can be seen from its URL: `https://chromewebstore.google.com/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm` and everything specified here will become a part of it's configuration.`trustedSiteDirective` means the sites it will be disabld on, the extension pages are recommended in the documentation and I don't mind Ecosia displaying ads since they go to planting trees. Note that the user can add their own sites or remove these from the extension settings.

`toOverwrite` says clearly it will overwrite user settings, so the lists everyone on your system wishes to use should be specified here. In this case, this contains the default lists, the Finnish adblocking list and the quick fixes list, which updates more rapidly in cases such as the cat-and-mouse with YouTube and adblockers.

There is also the EFF DNT allowlist which was introduced to me by [AdNauseam]. You have most likely heard of how ads let content to be free and supports content creators and all that, I don't want to take away their revenue, but I don't want to risk targeted malvertising or manipulation either, so this is my compromise. Respect my privacy, and I will see your ads, or be blocked.

Onwards to [PrivacyBadger], the ID again comes from Chrome Web Store URL `https://chromewebstore.google.com/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp` and the settings are clear on what they do. If they are removed, it's up to the default value or user configuration what will happen.

This [PrivacyBadger] configuration will simply always set these options on browser start:

- `"checkForDNTPolicy": true` check if the domain has a [`.well-known/dnt-policy.txt`](https://www.eff.org/dnt-policy) and if so, won't block it.
- `"disabledSites": []` configures the domains that are allowed to perform tracking/disrespect DNT. While here it's the same as with uBlock Origin, in my actual policies I allowlist domains more freely in uBlock Origin than [PrivacyBadger].
- `"learnInIncognito": true` [**_WARNING! May make you more trackable_**](https://www.eff.org/deeplinks/2020/10/privacy-badger-changing-protect-you-better) Same as below, but in incognito mode.
- `"learnLocally": true` [**_WARNING! May make you more trackable_**](https://www.eff.org/deeplinks/2020/10/privacy-badger-changing-protect-you-better) [PrivacyBadger] has rare ability to learn who tracks you without having to ask anywhere else, so with this enabled, it may block something before it gets added to either the premade list or something uBlock Origin has.
- `"sendDNTSignal": true` Whether or not to configure the web browser to send Do Not Track and Global Privacy Control signals.
- `"showCounter": true` Whether to display the number of blocked trackers in the [PrivacyBadger] icon.
- `"showIntroPage": false` Whether or not to display the welcome to PrivacyBadger screen on start. In general having less displayed automatically on browser start is a good thing, and if you set this to `true`, [PrivacyBadger] would greet you every browser start and I bet you would get annoyed quickly.
- `"socialWidgetReplacementEnabled": true` Whether to display social media embeds directly or replace them with a notice on how [PrivacyBadger] has blocked them from tracking you with the menu options on what to do.

Now the only thing to do remains actually installing the extension.

**_BONUS!_** [`"ExtensionManifestV2Availability": 2`](https://chromeenterprise.google/policies/#ExtensionManifestV2Availability) will extend the time how long until ManifestV3 gets forced (and Google kills content filters).

Anyway there is the same extension ID as before and four new options:

- `installation_mode` has options `normal_installed`, `force_installed` and `blocked`. The first means it's installed by default, but the user can choose to unload it, the second used here will prevent unloading the extension and the third prevents installing and loading it entirely.
- Typing this I am not sure if `override_update_url` is actually required.
- `force_pinned` will pin the extension to Chromium toolbar by default and not allow unpinning and moving it to the extension menu. I strongly recommend it with content blockers, especially when there is site breakage as it makes it so much easier to see at a glance when something is blocked. The other option would be `default_unpinned`.
- `update_url` is required for automatically installed extensions and while here it's the Chrome Web Store, it could as well be `https://edge.microsoft.com/extensionwebstorebase/v1/crx` and although the IDs are different there, they are again visible in the URL bar.

### `/etc/opt/chromium/policies/managed/aminda-extensions.json`

I hope I didn't scare you too badly by saying this isn't scary, but it's all explained above.

```json
{
  "3rdparty": {
    "extensions": {
      "cjpalhdlnbpafiamejdnhcphjbkeiagm": {
        "toAdd": {
          "trustedSiteDirectives": [
            "chrome-extension-scheme",
            "ecosia.org",
            "moz-extension-scheme"
          ]
        },
        "toOverwrite": {
          "filterLists": [
            "user-filters",
            "ublock-filters",
            "ublock-badware",
            "ublock-privacy",
            "ublock-abuse",
            "ublock-unbreak",
            "easylist",
            "easyprivacy",
            "urlhaus-1",
            "plowe-0",
            "https://www.eff.org/files/effdntlist.txt",
            "FIN-0",
            "ublock-quick-fixes"
          ]
        }
      },
      "pkehgijcmpdhfbdbbnkijodmdjhbjlgp": {
        "checkForDNTPolicy": true,
        "disabledSites": [
          "chrome-extension-scheme",
          "ecosia.org",
          "moz-extension-scheme"
        ],
        "learnInIncognito": true,
        "learnLocally": true,
        "sendDNTSignal": true,
        "showCounter": true,
        "showIntroPage": false,
        "socialWidgetReplacementEnabled": true
      }
    }
  },
  "ExtensionManifestV2Availability": 2,
  "cjpalhdlnbpafiamejdnhcphjbkeiagm": {
    "installation_mode": "force_installed",
    "override_update_url": true,
    "toolbar_pin": "force_pinned",
    "update_url": "https://clients2.google.com/service/update2/crx"
  },
  "pkehgijcmpdhfbdbbnkijodmdjhbjlgp": {
    "installation_mode": "force_installed",
    "override_update_url": true,
    "toolbar_pin": "force_pinned",
    "update_url": "https://clients2.google.com/service/update2/crx"
  }
}
```

## Firefox

If you haven't read the previous blog post yet, please do that now as Firefox forces everything to be in `/etc/firefox/policies.json` and thus this file will begin by expanding the end result from there. And to not repeat myself, please also read the Chromium section above as due to everything being webextensions, the new part within extension configuration is the same.

Let's begin by what differs from Chromium:

- The extension ID is most easily readable from `about:support` instead of addon URL.
- We can sideload the extension, although that won't affect Firefox sync.
- It's a lot easier to figure out what extension a block belongs to as the names appear here.
- While there is no `ExtensionManifestV2Availability`, there are domains protected by default (`extensions.webextensions.restrictedDomains`) that we could unset.

_Oh meow, no more json!_ I am sorry.

```json
{
  "policies": {
    "3rdparty": {
      "Extensions": {
        "jid1-MnnxcxisBPnSXQ@jetpack": {
          "checkForDNTPolicy": true,
          "disabledSites": [
            "challenges.cloudflare.com",
            "chrome-extension-scheme",
            "ecosia.org",
            "moz-extension-scheme"
          ],
          "learnInIncognito": true,
          "learnLocally": true,
          "sendDNTSignal": true,
          "showCounter": true,
          "showIntroPage": false,
          "socialWidgetReplacementEnabled": true
        },
        "uBlock0@raymondhill.net": {
          "toAdd": {
            "trustedSiteDirectives": [
              "chrome-extension-scheme",
              "ecosia.org",
              "firefox.com",
              "mozilla.net",
              "mozilla.org",
              "moz-extension-scheme"
            ]
          },
          "toOverwrite": {
            "filterLists": [
              "user-filters",
              "ublock-filters",
              "ublock-badware",
              "ublock-privacy",
              "ublock-abuse",
              "ublock-unbreak",
              "easylist",
              "easyprivacy",
              "urlhaus-1",
              "plowe-0",
              "https://www.eff.org/files/effdntlist.txt",
              "FIN-0",
              "ublock-quick-fixes"
            ]
          }
        }
      }
    },
    "DNSOverHTTPS": {
      "Enabled": true,
      "Fallback": false,
      "Locked": true,
      "ProviderURL": "https://dns.quad9.net/dns-query"
    },
    "DisableEncryptedClientHello": false,
    "ExtensionSettings": {
      "jid1-MnnxcxisBPnSXQ@jetpack": {
        "install_url": "https://addons.mozilla.org/firefox/downloads/latest/privacy-badger17/latest.xpi",
        "installation_mode": "force_installed"
      },
      "uBlock0@raymondhill.net": {
        "install_url": "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi",
        "installation_mode": "force_installed"
      }
    },
    "Preferences": {
      "dom.block_download_insecure": {
        "Status": "locked",
        "Type": "boolean",
        "Value": true
      },
      "dom.security.https_only_mode": {
        "Status": "locked",
        "Type": "boolean",
        "Value": true
      },
      "extensions.webextensions.restrictedDomains": {
        "Status": "user",
        "Type": "string",
        "Value": ""
      }
    }
  }
}
```

Doesn't that look familiar? Yes, it's practically the same file [from part Ⅰ]({% post_url blog/2024-05-17-https-everywhere %}#dns-over-https-1) and the extensions took the exact same values as Chromium, only the IDs and download locations changed and some Chromium extras disappeared.

Well, in uBlock Origin I did add the Mozilla/Firefox domains to avoid breakage and in the end I removed the extra protection those sites would have from extensions which would permit tracking by Mozilla. However, [PrivacyBadger] would still protect from that while being less likely to break.

_Would you like to restore the protection for Mozilla pages? Replace the `user` in `status` of `extensions.webextensions.restrictedDomains {}` with `clear` so it will be restored to default value while `user` persists even if the lines are removed as they appear as if the user had changed them in `about:config`._

## Answers to potential questions

As I sometimes tend to be a bit controversial when balancing security,
privacy, digital carbon footprint and all, there are going to be questions
and I keep answering them otherwise too.

## Where can I see what policies extensions can take?

In Chromium `about:policies` has a checkbox "show unset policies" which will bring a long list including the extensions. It also has a lovely search box.

### Why both PrivacyBadger and uBlock Origin?

I admit they have some overlap, but uBlock Origin relies on human made lists instead of an algorhitm to block trackers (note that [PrivacyBadger] doesn't even try to block ads, it happens by accident).

Additionally uBlock Origin does nothing about Instagram, Disqus, etc. widgets. I could block JavaScript (which I do), but sometimes I will allow it to a website anyway and then the widget learns I am there even if I had no interest in seeing comments in that case. And if I wanted to allow them somewhere, I could click "always allow this widget on this site".

I also love its ability to self-learn trackers, even if that may make me more trackable. I think there are easier methods to track me (like my HTTP user-agent saying I am on Windows, while my `navigator.useragent or `navigator.platform` say something different) and Firefox Nightly is newer than most people use and there are a countless of small things in browser fingerprinting, which could be it's own blog post.

### Why EFF DNT allowlist?

I think I already answered this in the Chromium section, but I don't hate ads. They may be important source of money to creators and I wouldn't mind some financial support as well (if that wasn't practically illegal in Finland).

What I mind is targeted advertising, tracking, the potential for targeted malvertising without it affecting anyone else and how they are used for manipulation especially politically and with elections on discouraging some people from voting.

### How do I enable more default lists in uBlock Origin?

As you saw, external blocklists are just matter of entering the URL into the policy, but integrated ones are a bit more challenging. See the eye icon in uBlock Origin dashboard? I have been pointing it and looking at the URL which ends e.g. `/asset-viewer.html?url=fanboy-social` where `fanboy-social` would be the list name.

More technical solution would be looking into the [`assets/assets.json` file in uBlock Origin's GitHub repository](https://github.com/gorhill/uBlock/blob/master/assets/assets.json) where the same names appear.

Remember that [more filter lists make you more identifiable](https://browserleaks.com/proxy) and _do as I say, not as I do_.

## What do you think about this blog post?

I feel a bit disappointed with it, I felt the previous one was more meaningful and did everything better, but I hope this will be some benefit to someone regardless or be something I can link to when I inevitably get asked these questions again.

## Will there be browser policies part Ⅲ?

Honestly, I don't know. I was surprised part Ⅱ happened, although this is also just scratching the tip of the iceberg and there is really a lot you can do with browser policies.

### Where is all the futher reading?

If you have read both blog posts carefully, this one didn't actually say anything new, it's all linked [from part Ⅰ]({% post_url blog/2024-05-17-https-everywhere %}#documentation-and-other-policies).

_[Obligatory changelog link](https://github.com/Mikaela/mikaela.github.io/commits/master/blog/_posts/2024-05-22-policy-contentblocker.md)_

[PrivacyBadger]: https://privacybadger.org
[AdNauseam]: https://adnauseam.io
