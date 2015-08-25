---
layout: page
permalink: /irc/znc
excerpt: "WIP - details on ZNC on my VPS"
sitemap: false
---

```
MD5 Fingerprint=11:34:B2:7A:55:FF:E0:0D:D8:2A:ED:80:D7:4F:F6:50
SHA1 Fingerprint=FF:54:F9:F1:C6:25:0F:A3:B9:CC:B7:A1:E4:D2:F5:44:4E:F6:F8:69
SHA256 Fingerprint=4F:F3:EA:F7:82:1F:C3:C5:D6:C6:A5:FB:15:CB:97:FA:7A:CF:C8:31:2E:48:02:86:2A:F6:ED:A9:E3:E7:8E:AC
```

Connecting with WeeChat:

1. `/server add WHATEVER verdarik.mikaela.info/1234 -ssl`
2. `/set irc.server.WHATEVER.ssl_verify on`
3. `/set irc.server.WHATEVER.ssh_fingerprint ff54f9f1c6250fa3b9ccb7a1e4d2f5444ef6f869` *FIXME to use SHA-256!*
4. `/set irc.server.WHATEVER.username username@OptionalClientID/network`
5. `/set irc.server.WHATEVER.password password`
6. `/set irc.server.WHATEVER.autoconnect on`
7. `/connect WHATEVER`
8. `/save`

*If you forget -ssl, `/set irc.server.WHATEVER.ssl on`*
