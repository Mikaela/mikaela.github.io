---
layout: page
title: Public keys
navigation: true
permalink: /keys/
redirect_from:
  - /matrix.html
  - /omemo.html
  - /otr.html
  - /pgp.html
  - /wire.html
excerpt: "My public key fingerprints (that I think can be put here, if I am missing something, tell me) for secure communication with me."
---

This page contains key fingerprints that might interest you if you wish
to communicate with me securely. In case I have multiple accounts
with some protocols, I only list those which I mainly care about.

* *If you wish to verify these fingerprints [at GitHub directly.](https://github.com/Mikaela/mikaela.github.io/blob/master/pages/keys.markdown)*
    * *[gitea.blesmrt.net mirror](https://gitea.blesmrt.net/mikaela/mikaela-info/src/branch/master/pages/keys.markdown)*

## OMEMO/XMPP

### blesmrt.net

* `xmpp COLON mikaela AT blesmrt DOT net`
* Also experimentally available as a QR code at [`/keybase/public/mikaela/OMEMO-qr`](https://keybase.pub/mikaela/OMEMO-qr/).
* Goal: Private/small groups and friends separately for when big groups feel too overwhelming with activity.

<table>
    <tr>
        <th>Device/Software</th>
        <th>Device ID</th>
        <th>OMEMO Fingerprint</th>
    </tr>
    <tr>
        <td>Nokia 1 / Conversations</td>
        <td><code></code></td>
        <td><code>a991b61f 361d4a9a 3c5a7387 8ccc6e89 b4111e79 8406e62f 3cc65d0f 2c8d3656</code></td>
    </tr>
    <tr>
        <td>Galaxy S III / Conversations</td>
        <td><code></code></td>
        <td><code>9193b9d0 1576e1f4 7cd23d22 c044c3c1 6bc6cd16 d3de9299 e43b2483 d8104b17</code></td>
    </tr>
    <tr>
        <td>Sedric / Dino</td>
        <td><code></code></td>
        <td><code>9846018741a8da62ea42a7428a82af5851b635875ac915b7c067127715cedd50</code></td>
    </tr>
    <tr>
        <td>Sedric / Gajim</td>
        <td><code>1645280364</code></td>
        <td><code>67EFE1B3 D6F9A526 B9604EAC 307AD1B6
263B3E9F 2A16F60A 509516B9 2D93C24F</code></td>
    </tr>
</table>

### disroot.org

* `xmpp COLON mikaela AT blesmrt DOT net`
* Also experimentally available as a QR code at [`/keybase/public/mikaela/OMEMO-qr`](https://keybase.pub/mikaela/OMEMO-qr/).
* Public/big groups to be separate from blesmrt.net, so I have a killswitch when I am overwhelmed by amount of groups

<table>
    <tr>
        <th>Device/Software</th>
        <th>Device ID</th>
        <th>OMEMO Fingerprint</th>
    </tr>
    <tr>
        <td>Nokia 1 / Conversations</td>
        <td><code></code></td>
        <td><code>3e003b4a 28a379f3 cd39396d de6a6659 15a80652 80cd3184 755614f2 e129aa01</code></td>
    </tr>
    <tr>
        <td>Galaxy S III / Conversations</td>
        <td><code></code></td>
        <td><code>5bbcc81a 8f0965e2 f5c57cbb 04a6160b d04f5b3c 36b95bd5 4df44938 4bc03011</code></td>
    </tr>
    <tr>
        <td>Sedric / Dino</td>
        <td><code></code></td>
        <td><code>5a28be1683e13f1ea443a6bcd82087474c50329105607bdc9631fb8e3338fb25</code></td>
    </tr>
    <tr>
        <td>Sedric / Gajim</td>
        <td><code>1924141481</code></td>
        <td><code>4BDA6162 80E54D8B 7FF5D7D5 9C4F9520
26A3D4E8 4963D001 AC707E5D 7938D667</code></td>
    </tr>
</table>

## Matrix

I have [multiple privacy concerns related to Matrix/Riot](https://github.com/privacytoolsIO/privacytools.io/issues/1049)
such as [it storing messages forever](https://github.com/matrix-org/matrix-doc/issues/447)
and as it may be possible to break the encryption in the future allowing the
server owner or attacker gaining access to the server database to read the
messages in the future, I recommend against communicating private matters
there.

Another reason why I don't list my key fingerprints here is that
[Riot randomly erases the keys by itself](https://github.com/vector-im/riot-web/issues/9169)
so I don't have energy to keep updating the list. Matrix is also missing
functioning established cross-platform clients with all the features.

* Riot key erasing issue above.
* Integration manager cannot be changed, resulting the need of using
  multiple Riot Web instances while web browsers at times remove data.
* Riot uses Electron.
* Riot Android is very resource intensive and performs badly on Nokia 1
  (TA-1047).
* RiotX is too early in development to be usable due to various issues.

When these issues are fixed and the fingerprints are as easy to publish on
this page as XMPP and Wire ones, please contact me. Alternatively if Matrix
succeeds at cross-signing making this page useless, I will be happy to hear
that.

Meanwhile, if you insist using Matrix, please at least coordinate emoji
verification with me on XMPP, Wire, Keybase or Signal. I won't bother with
fingerprint comparsion in case of Matrix.

## Wire

<table>
    <tr>
        <th>Name</th>
        <th>Wire device</th>
        <th>ID</th>
        <th>Fingerprint</th>
    </tr>
    <tr>
        <td>Sedric</td>
        <td>Wire Linux</td>
        <td><code>51 12 38 05 39 92 F9 59</code></td>
        <td><code>41 97 e0 b9 0c b5 3d d8 3a 46 59 e8 2e ba cb 64 61 36 4a 0e e8 c3 a0 08 f6 79 92 06 95 08 f6 2e</code></td>
    </tr>
    <tr>
        <td>Nokia 1</td>
        <td>HMD Global Nokia 1</td>
        <td><code>46 82 D6 7F 7C 10 E8 AE</code></td>
        <td><code>e2 d5 8b 67 f6 a8 15 9c c0 7a 9b 57 aa 55 55 8c 9b 14 55 a1 c1 ad b4 8b 42 fb 95 84 5c 42 d4 e5</code></td>
    </tr>
    <tr>
        <td>SGS III</td>
        <td>samsung GT-I9305</td>
        <td><code>92 D7 96 E0 8C 1E 29 17</code></td>
        <td><code>0a 23 ae aa 5f 78 f8 6d 3b 74 18 df c9 9c 74 cc 50 61 25 01 8d 51 e4 f1 8a 98 16 2e c9 ab 9f 0a</code></td>
    </tr>
    <tr>
        <td>Zaldaryn</td>
        <td>Wire Linux</td>
        <td><code>7B 67 B5 01 77 EE 62 2A</code></td>
        <td><code>af 1b 11 b7 17 6e d7 39 46 27 31 d1 ed 1a 33 b1 9b 63 09 f1 ad 27 32 6f 47 d9 95 03 a9 ca 01 7d</code></td>
    </tr>
</table>

## OTR

OTR is impossible with multiple clients fighting for the messages, so I only
support it with IRC (which currently has no other *good* choice *and* where
I have only single client (WeeChat) which my phone also connects to) and
even if some of the XMPP clients talk it, I would appreciate you using
OMEMO instead.

<table>
    <tr>
        <th>Account</th>
        <th>OTR Fingerprint</th>
    </tr>
    <tr>
        <td>IRC</td>
        <td>DA0CFDDE E05BE012 B2E726B5 0789F4E2 E7DB582D</td>
    </tr>
</table>

## PGP

<table>
    <tr>
        <th>PGP Fingerprint</th>
    </tr>
    <tr>
        <td><a href="/PGP/0xB2F32B67.txt">2910 4A46 C561 5BF9 78A0  83F2 0C20 7F07 B2F3 2B67</a></td>
    </tr>
</table>
