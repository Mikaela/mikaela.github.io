---
layout: post
title: "HTTPS Everywhere through browser policy"
category: [english]
tags: [firefox, chromium, browsers, browser, policy]
---

_I used to be sad since the EFF discontinued HTTPS Everywhere extension since
the setting often didn't sync and it only applied to me as opposed to everyone
using a shared computer. However since I have dived into browser policies,
this is no longer an issue for me._

I will be referring to my [shell-things](https://gitea.blesmrt.net/mikaela/shell-things/) repository a lot, particularly
`etc/`, in case the link rots in the future, chances are my git forges still
have that available. I also have [a script etc/init-browser-profiles.bash](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/init-browser-policies.bash) that creates the directories, symlinks for Chromium-based browsers and sets the permissions properly (if something won't work for you, check the permissions!),
so I only need to manage Chromium to also manage Brave, Google Chrome,
Microsoft Edge, Vivaldi etc.

Please note that I don't have a Windows or macOS at paw and my only advice
for those is the official documentation (bottom of the page).

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Chromium](#chromium)
  - [DNS-over-HTTPS](#dns-over-https)
- [Firefox](#firefox)
- [Documentation and other policies](#documentation-and-other-policies)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Chromium

I love Chromium policies as I can just throw them in the directories
`/etc/opt/chromium/policies/{managed,recommended}/` in different `.json` files
and then just copy what I need instead of... Now I am going ahead of myself
with Firefox. Managed means that the setting will be locked for the user
and that is what I am using here, recommended will change the default and
show an indicator for the user about it being recommended while still allowing
it to be changed by the way.

The case of HTTPS Everywhere is simple. I will copy a bit of my script:

```bash
sudo mkdir -vp /etc/opt/chromium/policies/{managed,recommended}
sudo chmod -v a+rx /etc/opt/chromium/policies/
sudo mkdir -vp /etc/opt/chromium/policies/recommended
sudo chmod -v a+rx /etc/opt/chromium/policies/{managed,recommended}/
```

---

If you don't speak \*nix, `mkdir -vp` creates the directories verbosely
including their parent directories if those don't exist already and
`chmod -v a+rx` verbosely allows everyone to read and execute, which is
required for listing directory contents.

```bash
# An example, without the -p there would be error about the parent directory
# not existing
% mkdir -vp /tmp/meow/meow
mkdir: created directory '/tmp/meow'
mkdir: created directory '/tmp/meow/meow'
% chmod -v a+rx /tmp/meow
mode of '/tmp/meow' retained as 0755 (rwxr-xr-x)
```

---

Anyway, HTTPS Everywhere for Chromium. Once the directory exists, it's just
a matter of creating a json file there, e.g.
`/etc/opt/chromium/policies/managed/https-everywhere.json`:

```json
{
  "HttpsOnlyMode": "force_enabled",
  "HttpsUpgradesEnabled": true
}
```

Now visit `about:policy` and see the policy appear (or if Chromium was already
running, click `Update policies`) and you are done. Try visiting
[http.badssl.com](https://http.badssl.com) to see it in action.

Of course the user can still navigate there, but HTTPS Everywhere the
extension had that behaviour too and there is likely a separate policy for
that.

### DNS-over-HTTPS

You might have noticed that Chromium no longer allows you to use DNS over
HTTPS since the browser is now "managed by an organization". This will require
another policy that either unlocks it or forces everyone to use it.

`/etc/opt/chromium/policies/managed/doh-unlocked-unset.json`:

```json
{
  "DnsOverHttpsMode": "automatic"
}
```

and the user is once again free to use their preferred DoH provider.

`/etc/opt/chromium/policies/managed/doh-quad9.json`:

```json
{
  "DnsOverHttpsMode": "automatic",
  "DnsOverHttpsTemplates": "https://dns.quad9.net/dns-query https://dns.quad9.net:5053/dns-query"
}
```

And the user is using DNS-over-HTTPS from Quad9 with fallback to system
resolver allowed (which for me is encrypted anyway). The `automatic` could be
replaced with `secure` to not allow downgrade, but I had issues with Chromium
losing connectivity entirely.

You may notice that multiple DoH providers are allowed, however I don't know
what logic is used for choosing between them. Oh and the weird https port
5053? It comes from
[docs.quad9.net/services](https://docs.quad9.net/services/#alternate-ports).

## Firefox

Firefox is a bit more complicated in the sense that everything belongs to one
`policies.json` file, so there is no separating different policies to
different files _and_ there is no direct policy for HTTPS-only mode.

_**WARNING for [LibreAwoo](https://librewolf.net/) users**_! [This will mask LibreWolf's policy](https://codeberg.org/librewolf/issues/issues/1767)
(`/usr/share/librewolf/distribution/policies.json`,
[codeberg](https://codeberg.org/librewolf/settings/src/branch/master/distribution/policies.json)),
so make sure to copy the parts you wish to use before applying this (although
I think it might have this out of the box).

Hoping you read the Chromium section above, you may know the drill with the
commands and flags:

```bash
sudo mkdir -vp /etc/firefox/policies
sudo chmod -v a+rx /etc/firefox/
sudo chmod -v a+rx /etc/firefox/policies/
# A new command! Updates modification/creation dates to now or if it doesn't
# exist, creates the file
sudo touch /etc/firefox/policies/policies.json
sudo chmod -v a+r /etc/firefox/policies/policies.json
# Firefox ESR reads a different directory that I don't want to manage
# separately. -n prevents creating /etc/firefox/firefox if the symlink
# already exists.
sudo ln -nsv /etc/firefox /etc/firefox-esr
```

Now edit the `/etc/firefox/policies/policies.json` with your favourite text
editor and have contents similar to:

```json
{
  "policies": {
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
      }
    }
  }
}
```

After saving and restarting Firefox, `about:policies` should display the
change, `about:config` should display the two preferences as grayed out and
within settings HTTPS-Only mode is used in all windows and grayed out.

An easy test is again [http.badssl.com](http://http.badssl.com).

## Documentation and other policies

In case you have talked with me recently, chances are you have heard me
complaining about all the nice settings being hidden in browser policy.

- You have probably already found my policies already, but anyway here they are,
  all paths referring to the `shell-things` repo:
  - [etc/init-browser-policies.bash](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/init-browser-policies.bash)
  - [etc/opt/chromium/policies](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/opt/chromium/policies)
  - [etc/firefox/policies](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/firefox/policies)
  - _PS. If you read them too deeply, do as I say, not as I do, because I do
    have a bit too many extensions and all..._
- The official documentation:
  - [mozilla.github.io/policy-templates](https://mozilla.github.io/policy-templates/)
  - [chromeenterprise.google/policies/](https://chromeenterprise.google/policies/)
- Other documentation that may be interesting:
  - [Ecosia as default search engine through Group Policy](https://ecosia.helpscoutdocs.com/article/487-windows-group-policy-guides)
  - [Privacy Badger enterprise deployment and configuration](https://github.com/EFForg/privacybadger/blob/master/doc/admin-deployment.md)
    - [I maybe got involved there too a bit](https://github.com/EFForg/privacybadger/discussions/2947)
  - [Deploying uBlock Origin](https://github.com/gorhill/uBlock/wiki/Deploying-uBlock-Origin) and [deploying uBlock Origin configuration](https://github.com/gorhill/uBlock/wiki/Deploying-uBlock-Origin:-configuration)
    - These also apply to [AdNauseam](https://adnauseam.io/), just change the
      extension ID in your policy.