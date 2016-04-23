---
layout: page
title: Public keys
permalink: /keys/
excerpt: "My public keys, OTR, PGP and how to check them from DNS TXT records of my subdomains."
---

This page contains key fingerprints that might interest you if you wish
to communicate with me securely.

## Tables

*PGP*

<table>
    <tr>
        <th>PGP Fingerprint</th>
    </tr>
    <tr>
        <td>2910 4A46 C561 5BF9 78A0  83F2 0C20 7F07 B2F3 2B67</td>
    </tr>
</table>
<br/>
*OTR*

This table can be somewhat outdated as it doesn't include anything else
than WeeChat (IRC) and BitlBee keys while I have other devices/software
I use for connecting to XMPP too using also other types of encryption
(mainly OMEMO, I guess).

**The primary accounts I use from below are IRC, Joindiaspora.com and
  Kapsi.fi. The others will be disappearing if I have to do reconfiguring
  on software that currently has them as there are too many to manage.**

<table>
    <tr>
        <th>Account</th>
        <th>OTR Fingerprint</th>
    </tr>
    <tr>
        <td>dukgo</td>
        <td>73C54D94 8DE7222F 478EC02C D8FD95DA 0BD3A25D</td>
    </tr>
    <tr>
        <td>facebook</td>
        <td>A6131A37 FE646D22 3D2C374E F7653716 D700BB29</td>
    </tr>
    <tr>
        <td>gmail</td>
        <td>BBC9BD86 7E7E7D3F F0C16CB6 581A2EDC 984E95CD</td>
    </tr>
    <tr>
        <td>gmail (<em>OLD</em>)</td>
        <td>F13B431F C71FBA55 6B46D1E3 11273B58 C49D7118</td>
    </tr>
    <tr>
        <td><strong>IRC</strong></td>
        <td><strong>DA0CFDDE E05BE012 B2E726B5 0789F4E2 E7DB582D</strong></td>
    </tr>
    <tr>
        <td>jappix</td>
        <td>AEBFF7FD 845CECE5 0D3B1DEC DC63281F 612B71EC</td>
    </tr>
    <tr>
        <td><strong>joindiaspora</strong></td>
        <td><strong>5B1221E3 EFC72769 4140A9C0 A0886939 35B99F86</strong></td>
    </tr>
    <tr>
        <td><strong>kapsi</strong></td>
        <td><strong>F0FFE3D6 ED8FCC66 A2AC0FAA 67FD41B4 EFBDEC97</strong></td>
    </tr>
</table>

<br/>

*OMEMO*

<table>
    <tr>
        <th>Account</th>
        <th>Device/Software</th>
        <th>OMEMO Fingerprint</th>
    </tr>
    <tr>
        <td>Joindiaspora</td>
        <td>GT-I9305/Conversations</td>
        <td>46c8aa40f931e8bd5773f7d10e64a6e5845f79fe48f2d7543df19b9211057a46</td>
    </tr>
    <tr>
        <td>Joindiaspora</td>
        <td>Jolla/Conversations</td>
        <td>bdc51478af93d61c8890c5e638cb658b3736cdb706309862ff5b48e4e74ab93b</td>
    </tr>
    <tr>
        <td>Kapsi</td>
        <td>GT-I9305/Conversations</td>
        <td>36e6c716f099d4172bd06b4bf2cf6bd9e59bdbcfa55b2912a521b39d81c50e53</td>
    </tr>
    <tr>
        <td>Kapsi</td>
        <td>Jolla/Conversations</td>
        <td>d42beab6bd86c40f4fd66c71de9f7dcc7532970e4a8cbf9d4938c4f99eb46864</td>
    </tr>
</table>


## DNS TXT records

These keys can also be confirmed by checking DNS TXT records like below:

```bash
dig +short otr.mikaela.info TXT
dig +short omemo.mikaela.info TXT
dig +short pgp.mikaela.info TXT
```

*For this to be secure you should run [dnssec-trigger](https://www.nlnetlabs.nl/projects/dnssec-trigger/)
 or DNSSEC-validating resolver on your local device.*
