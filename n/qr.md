---
layout: mini
comments: true
title: "QR CODE MAKING: BIGGER IS SMALLER"
permalink: /n/qr.html
sitemap: true
excerpt:
  WHEN YOU MAKE QR CODES, CAPITAL LETTERS MEAN SMALLER QR CODE AND OTHER NOTES
  ON MAKING THEM.
---

# QR CODE MAKING: BIGGER IS SMALLER

_{{ page.excerpt }}_

That is a neat trick
[from Terence Eden's blog where the cause is also explained](https://shkspr.mobi/blog/2025/02/why-are-qr-codes-with-capital-letters-smaller-than-qr-codes-with-lower-case-letters/).

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [qrencode](#qrencode)
- [WiFi QR codes](#wifi-qr-codes)
  - [iwd Device Provisioning Protocol](#iwd-device-provisioning-protocol)
- [Other methods of generating QR codes](#other-methods-of-generating-qr-codes)
- [QR code readers](#qr-code-readers)
  - [See also](#see-also)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## qrencode

`qrencode` is my favourite method of creating QR codes, with the above fact a
small QR pointing to my website would be:

- `qrencode -t utf8 -i https://aminda.eu`
  - `-t utf8` outputs to terminal as unicode and `-i` ignores case turning input
    UPPERCASE.

However my former goto was:

- `qrencode -l H -t utf8 https://aminda.eu` which would feature higher error
  correction allowing more damage (including art) while still working.

Storage:

- `qrencode -i -s 6 -l H -o aminda.eu https://aminda.eu`
  - This `-s 6` doubles the pixel size, `-l H` uses highest error correction and
    `-o aminda.eu` outputs the image to `aminda.eu.png`. This could be converted
    through `magick aminda.eu.png aminda.eu.jpg`

However usually I end up to
[qr.bash](https://gitea.blesmrt.net/mikaela/scripts/src/branch/master/bash/qr.bash).

## WiFi QR codes

For details on the specification, please refer to
[Barcode Contents on zxing wiki instead](https://github.com/zxing/zxing/wiki/Barcode-Contents#wi-fi-network-config-android-ios-11).

- Open network with SSID `openwireless.org_nomap`:
  `qrencode -t utf8 "WIFI:T:nopass;S:openwireless.org_nomap;;"`
  ([wifiqr-open.bash](https://gitea.blesmrt.net/mikaela/scripts/src/branch/master/bash/wifiqr-open.bash))
- WPAX protected network with SSID `Hollow` and key `Bastion`:
  `qrencode -t utf8 "WIFI:T:WPA;S:Hollow;P:Bastion;H:false;"`
  ([wifiqr.bash](https://gitea.blesmrt.net/mikaela/scripts/src/branch/master/bash/wifiqr.bash))
- Hidden networks? Change the `H:false` to `H:true`.

### iwd Device Provisioning Protocol

If you are using iwd for WiFi management, forget the above and to add a new dpp
capable device onto your network, instead `iwctl dpp wlan0 start-configurator`
which requires `qrencode`.

To stop provisioning new devices `iwctl dpp wlan0 stop`.

Obviously don't include the dots and replace `wlan0` with your actual interface.

## Other methods of generating QR codes

- [DuckDuckGo search beginning with qrcode](https://start.duckduckgo.com/?q=qrcode+HELLO+WORLD)
- [Firefox add-on: Offline QR Code Generator](https://addons.mozilla.org/firefox/addon/offline-qr-code-generator/)
  - This has spared me headache countless times on school computers for getting
    URL stored to my browser from school computers or virtual machines without
    complicated setups.
- [Chrome Web Store: QR Code](https://chromewebstore.google.com/detail/qr-code/cbimgpnbgalffiohilfglgkkhpegpjlo)
- BinaryEye & SecUSo for Android below

## QR code readers

- The stock Camera app.
  - At least on iOS and SailfishOS.
- [BinaryEye](https://github.com/markusfisch/BinaryEye) is my go-to app for QR
  codes and will tell you more than you might want to know about them.
  [Google Play](https://play.google.com/store/apps/details?id=de.markusfisch.android.binaryeye),
  [F-Droid](https://f-droid.org/en/packages/de.markusfisch.android.binaryeye/)
- [SecUSo: Privacy Friendly QR Code Scanner for Android ](https://github.com/SecUSo/privacy-friendly-qr-scanner),
  [Google Play](https://play.google.com/store/apps/details?id=com.secuso.privacyFriendlyCodeScanner),
  [F-Droid](https://f-droid.org/repository/browse/?fdid=com.secuso.privacyFriendlyCodeScanner)

### See also

- [Mikaela/gist directory vcard](https://gitea.blesmrt.net/mikaela/gist/src/branch/master/vcard)
