---
layout: post
comments: true
title: "Tunnelbroker.net & ASUS routers"
category: [english]
tags: [IPv6, english]
---

*I am typing this, because there is a lot of misinformation on this,
 especially about the dynamic DNS part.*

## The tunnel

Go to the router web panel and IPv6 under advanced settings.

### Basic Config

* Connection type: Tunnel 6in4
* Server IPv4-address: *Server IPv4 Address from IPv6 tunnel endpoints in
  tunnelbroker.net tunnel details*
* Client IPv6 address: *Client IPv6 address from IPv6 tunnel endpoints in
  tunnelbroker.net tunnel details*
* IPv6 prefix length: 64
* Tunnel MTU: 0
* Tunnel TTL: 255

### IPv6 LAN Setting

* LAN IPv6 Prefix: *Routed /64 from Routed IPv6 Prefixes from
  tunnelbroker.net tunnel details*
* LAN Prefix Length: 64

### IPv6 DNS Setting

* IPv6 DNS Server 1: 2001:470:20::2 *(this is the one tunnelbroker.net
  says for me)*
* IPv6 DNS Server 2: 2001:4860:4860::8888 *Google DNS 1*
* IPv6 DNS Server 3: 2001:4860:4860::8844 *Google DNS 2*

### Auto Configuration Setting

* Enable Router Advertisement: Enable

## Dynamic DNS

Go to Advanced Settings, WAN, DDNS

* Enable the DDNS CLient: Yes
* Server: WWW.TUNNELBROKER.NET
* Host Name: *tunnel ID from tunnelbroker.net tunnel details*
* User Name or E-mail address: *username of tunnelbroker.net
* Password or DDNS Key: *Update Key from tunnel details under the Advanced
  tab*

All guides I have seen say that username is user ID from index of
tunnelbroker.net and password is account password, but that doesn't work
for me. This is how I got it working guessing the details based on
*Example Update URL* at the same place you got the Update Key.

Now it should either work or not.

* If it gives error saying something about trying again later, you are
  doing something wrong.
* If it gives error about endpoint IP not changed since the last update, 
  it works.
* If you don't get error, it doesn't work.

Now I would suggest you to go to Administration and from there
Restore/Save/UPload Setting and clicking the "Save setting"s "Save" button
so in case something bad happens you can easily restore the working state.

And I probably shouldn't need to say this, but I will say it
anyway: **don't use admin/admin as username/password combination!**
