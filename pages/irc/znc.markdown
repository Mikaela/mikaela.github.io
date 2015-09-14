---
layout: page
permalink: /irc/znc.html
excerpt: "WIP - details on ZNC on my VPS"
sitemap: false
---

```
MD5 Fingerprint=8E:B4:28:68:4A:47:B3:09:EE:58:2D:D4:31:7A:EA:DC
SHA1 Fingerprint=21:45:DE:39:64:0A:0A:65:8C:CE:FB:CA:EB:E0:80:3F:06:30:8D:E9
SHA256 Fingerprint=B6:A7:45:F9:39:BA:64:D0:EB:DD:3C:F5:EF:0A:E8:AB:35:24:98:2A:80:BB:08:2E:74:82:05:82:5F:B8:78:30
```

Connecting with WeeChat:

1. `/server add WHATEVER vardiera.mikaela.info/1234 -ssl`
2. `/set irc.server.WHATEVER.ssl_verify on`
3. `/set irc.server.WHATEVER.ssh_fingerprint b6a745f939ba64d0ebdd3cf5ef0ae8ab3524982a80bb082e748205825fb87830`
4. `/set irc.server.WHATEVER.username username@OptionalClientID/network`
5. `/set irc.server.WHATEVER.password password`
6. `/set irc.server.WHATEVER.autoconnect on`
7. `/connect WHATEVER`
8. `/save`

*If you forget -ssl, `/set irc.server.WHATEVER.ssl on`*

Webadmin:
 * https://vardiera.mikaela.info:1234/ (invalid certificate, valid
   fingerprints are on top of this page)
 * https://znc.mikaela.info/ (CloudFlare, https only between you and
   CloudFlare (aka not recommended or use only if you have to))
