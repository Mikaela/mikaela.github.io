---
layout: page
title: Public keys
permalink: /keys/
excerpt: "My public keys, OTR, PGP and how to check them from DNS TXT records of my subdomains."
---

This page contains key fingerprints that might interest you if you wish
to communicate with me securely.

## Table

<table border="1">
    <tr>
        <th>Type</th>
        <th>Fingerprint</th>
    </tr>
    <tr>
        <td>OTR</td>
        <td>DA0CFDDE E05BE012 B2E726B5 0789F4E2 E7DB582D</td>
    </tr>
    <tr>
        <td>PGP</td>
        <td>2910 4A46 C561 5BF9 78A0  83F2 0C20 7F07 B2F3 2B67</td>
    </tr>
</table>

<br/>

Note that my OTR key matches just WeeChat, but I mostly use WeeChat for
all protocols ([BitlBee](http://www.bitlbee.org/)).

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
