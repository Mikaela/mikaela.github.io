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

<table>
    <tr>
        <th>Device/Software</th>
        <th>OMEMO Fingerprint</th>
    </tr>
    <!--
    <tr>
        <td>ONEPLUS A3003/Conversations</td>
        <td>FA60F9E5 5F9E99AE 5F922385 600985B5 826B7EEE 678DD1AA A50A8588 7B2A7523</td>
    </tr>
    <tr>
        <td>Jolla/Conversations Legacy</td>
        <td>15F93AD5 0EC2E3AC B69671AD 856C979D 752DB7D4 0F79F7EF 023AA929 F464125B</td>
    </tr>
    <tr>
        <td>Sedric/Gajim</td>
        <td>92B8D1C6 2BA2B932 8C2C0628 F9EE1742 D9E83134 3CE0D2B8 3309181F 9DCEA779</td>
    </tr>
    -->
    <tr>
        <td>Rbtpzn-Zaldaryn/Gajim-flatpak</td>
        <td><code>F06AE7B9 A4B1D4DC 79A5DED7 5A04D6A3 51B548D3 6A56E2CE 42493EB7 947C1E69</code></td>
    </tr>
    <tr>
        <td>Sedric/flatpak</td>
        <td><code>70DC890E D35F14AB 9102AE69 C680EDC0 F0EB3CE4 AA5BFD93 8CD13229 F81DF33B</code></td>
    </tr>
    <!--
	<tr>
        <td>Sedric-Zaldaryn/WindowsP</td>
        <td>B0633DBF D5FEA7C3 7AAD60B6 220827A6 D7321F28 9D1DC030 19D3B1E3 4674565F</td>
    </tr>
    -->
    <tr>
        <td>Nokia 1/Conversations</td>
        <td><code>BE1E4E24 ECBD7DC4 0C3C4119 AE575B45 7DFDFD7D F11F14A0 79070F76 1CA66138</code></td>
    </tr>
    <!--
    <tr>
        <td>Sedric/Dino (flatpak)</td>
        <td>3674D5A5 D7F6FEC4 E08BF0D7 B755DD66 7A67B836 8BDC89E4 B7FBDF0B E1DDC521</td>
    </tr>
    <tr>
        <td>i9305/Conversations</td>
        <td>607139AE 1B5C8F53 AC8B9A84 9F45F9AC 0B781A3B C2616A18 C34E90A4 A2FC1860</td>
    </tr>
    -->
</table>

## Matrix

`@mikaela:privacytools.io`

<table>
    <tr>
        <th>Device name</th>
        <th>ID</th>
        <th>Fingerprint</th>
    </tr>
    <tr>
        <td>20190413-Sedric</td>
        <td><code>SYUZHGKRDF</code></td>
        <td><code>00LQ edzK 6woQ JWMj CGb2 bIvW HGqS mnGE OdlX +RsQ uqo</code></td>
    </tr>
    <tr>
        <td>20190414-SGS3</td>
        <td><code>XIRWUXMDDX</code></td>
        <td><code>u7t6//qwcflIbyhOL091aUslf+iG8mVlcg6jmSNw3N8</code></td>
    </tr>
    <tr>
        <td>20190426-Nokia1</code></td>
        <td><code>FQKPLOCFLM</code></td>
        <td><code>AYTcp3flv9J/uFhVVF+3q+coOZvWd+lkesFQ6mYF61Y</code></td>
    </tr>
</table>

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
