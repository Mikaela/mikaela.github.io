---
layout: post
comments: true
title: "Tunnelbroker.net & ASUS routers"
category: [english]
tags: [IPv6, english]
redirect_from: /english/2015/12/25/asus-tunnelbroker-net.html
---

_I am typing this, because there is a lot of misinformation on this,
especially about the dynamic DNS part._

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
_Automaattinen sisällysluettelo - Automatically generated Table of Contents_

- [The tunnel](#the-tunnel)
  - [Basic Config](#basic-config)
  - [IPv6 LAN Setting](#ipv6-lan-setting)
  - [IPv6 DNS Setting](#ipv6-dns-setting)
  - [Auto Configuration Setting](#auto-configuration-setting)
- [Dynamic DNS](#dynamic-dns)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## The tunnel

Go to the router web panel and IPv6 under advanced settings.

### Basic Config

- Connection type: Tunnel 6in4
- Server IPv4-address: _Server IPv4 Address from IPv6 tunnel endpoints in
  tunnelbroker.net tunnel details_
- Client IPv6 address: _Client IPv6 address from IPv6 tunnel endpoints in
  tunnelbroker.net tunnel details_
- IPv6 prefix length: 64
- Tunnel MTU: 0
- Tunnel TTL: 255

### IPv6 LAN Setting

- LAN IPv6 Prefix: _Routed /64 from Routed IPv6 Prefixes from
  tunnelbroker.net tunnel details_
- LAN Prefix Length: 64

### IPv6 DNS Setting

- IPv6 DNS Server 1: 2001:470:20::2 _(this is the one tunnelbroker.net
  says for me)_
- IPv6 DNS Server 2: 2001:4860:4860::8888 _Google DNS 1_
- IPv6 DNS Server 3: 2001:4860:4860::8844 _Google DNS 2_

### Auto Configuration Setting

- Enable Router Advertisement: Enable

## Dynamic DNS

Go to Advanced Settings, WAN, DDNS

- Enable the DDNS CLient: Yes
- Server: WWW.TUNNELBROKER.NET
- Host Name: _tunnel ID from tunnelbroker.net tunnel details_
- User Name or E-mail address: \*username of tunnelbroker.net
- Password or DDNS Key: _Update Key from tunnel details under the Advanced
  tab_

All guides I have seen say that username is user ID from index of
tunnelbroker.net and password is account password, but that doesn't work
for me. This is how I got it working guessing the details based on
_Example Update URL_ at the same place you got the Update Key.

Now it should either work or not.

- If it gives error saying something about trying again later, you are
  doing something wrong.
- If it gives error about endpoint IP not changed since the last update,
  it works.
- If you don't get error, it doesn't work.

Now I would suggest you to go to Administration and from there
Restore/Save/UPload Setting and clicking the "Save setting"s "Save" button
so in case something bad happens you can easily restore the working state.

And I probably shouldn't need to say this, but I will say it
anyway: **don't use admin/admin as username/password combination!**
