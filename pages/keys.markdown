---
layout: page
title: Public keys
permalink: /keys/
---

This page contains key fingerprints that might interest you if you wish
to communicate with me securely.

## Table

| Type | Fingerprint |
|------|-------------|
| OTR | DA0CFDDE E05BE012 B2E726B5 0789F4E2 E7DB582D |
| PGP | 2910 4A46 C561 5BF9 78A0  83F2 0C20 7F07 B2F3 2B67 |

<br/>

Note that my OTR key matches just WeeChat and is affected by [this issue].
If you notice that my OTR key is different, please mention it to me and I will
copy the correct key. If that doesn't help, don't think that you are talking to me.

[this issue]:https://github.com/mmb/weechat-otr/issues/70

## DNS TXT records

I should probably sign that table using PGP (but it wouldn't increase
trust as I still have met no one whom with to sign keys), but with your
own responsibility\* you can verify the following DNS records:

```bash
dig +short otr.mikaela.info TXT
dig +short pgp.mikaela.info TXT
```

\* This site doesn't have DNSSEC (but you would be trusting ICANN) and
cache of your DNS server can be poisoned to give wrong results and long
list of different risks that can be there…
