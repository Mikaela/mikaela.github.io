---
layout: page
title: The ZNC instance which I am running
permalink: /irc/znc.html
excerpt: "WIP - details on ZNC on my VPS"
sitemap: true
redirect_from: /znc.html
published: false
---

## ZNC

Vardiera is hosting stable ZNC (latest git tag) where people I trust can
get accounts.

### Simple rules

* Follow the network policies.
* Follow the channel rules.
* You use this ZNC by your own responsibility.
    * accounts can be removed at any time.
    * it can crash any time without me being there to fix it.
    * it can be restarted any time to install upgrades.
* No logging unless you load the log module by yourself (log access
  requires shell access which I don't give!)
* If you use the [SASL](http://wiki.znc.in/sasl) or
  [NickServ](http://wiki.znc.in/nickserv) module, your password is stored
  in plain text.
    * I won't ever read it there, but I think it should be mentioned. Don't
      use server password unless you have to as that password is thrown
      to my eyes in ZNC startup messages.
* In case more networks are needed, contact me.

### Tips & tricks

1. Read the [ZNC wiki], at least [FAQ].
2. **Load savebuff** so your buffers aren't lost on restart/crash/etc.
    * **Don't specify a password or I am going to be angry and you are
        going to lose your account!**
3. If your network has NickServ, [load SASL and read it's wiki page for automatic identification.](http://wiki.znc.in/sasl)

[ZNC wiki]:http://wiki.znc.in/
[FAQ]:http://wiki.znc.in/FAQ

#### Accessing webadmin

 * https://vardiera.mikaela.info:1234/ (invalid certificate, valid
   fingerprints are listed below)
 * https://znc.mikaela.info/ (CloudFlare, https only between you and
   CloudFlare (aka not recommended or use only if you have to))

### Certificate fingerprints

```
MD5 Fingerprint=BB:BE:9C:6D:03:30:DC:CC:C0:87:D2:15:4F:AB:09:41
SHA1 Fingerprint=3F:AB:12:85:72:E9:0A:21:DD:D7:64:94:43:D8:BC:08:64:FD:64:6C
SHA256 Fingerprint=C7:89:7A:02:C3:4A:DF:01:A9:36:1D:2E:EA:D1:A8:9A:41:37:CA:43:EB:F4:60:4D:85:EB:3E:48:35:E3:FC:4B
SHA512 Fingerprint=FF:B3:D6:8B:EB:2E:2B:96:10:C0:7C:F0:7A:17:28:8F:77:14:73:FC:69:52:EF:89:F1:F7:15:E2:F9:9F:2F:0A:38:9D:6B:09:A3:55:0D:95:6E:E7:7F:AA:1B:22:51:46:14:55:93:D6:37:DE:41:BC:26:3B:D6:E7:A6:0D:F5:DF
```

### Connecting with WeeChat

1. `/server add WHATEVER vardiera.mikaela.info/1234 -ssl`
2. `/set irc.server.WHATEVER.ssl_verify on`
3. `/set irc.server.WHATEVER.ssl_fingerprint ffb3d68beb2e2b9610c07cf07a17288f771473fc6952ef89f1f715e2f99f2f0a389d6b09a3550d956ee77faa1b225146145593d637de41bc263bd6e7a60df5df`
4. `/set irc.server.WHATEVER.username username@OptionalClientID/network`
5. `/set irc.server.WHATEVER.password password`
6. `/set irc.server.WHATEVER.autoconnect on`
7. `/connect WHATEVER`
8. `/save`

*If you forget -ssl, `/set irc.server.WHATEVER.ssl on`*

Read also [WeeChat page on ZNC wiki](http://wiki.znc.in/WeeChat). You want
to read at least the *Enabling server-time & other IRCv3 capabilities* to
make your experience smoother.

### Webchat

1. Check "I have a password" and type `username/network:password`.
2. Click "Start...". Ignore the nick as it gets ignored by ZNC.

<iframe src="https://kiwiirc.com/client/vardiera.mikaela.info:+1234/?nick=whatever?" style="border:0; width:100%; height:450px;"></iframe>
