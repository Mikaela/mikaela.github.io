---
layout: post
comments: true
title: "dnscrypt-proxy v2 on Debian/Ubuntu quickly, dirtily"
category: [english]
tags: [english, dnscrypt, dns, dnscrypt-proxy]
redirect_from:
  - /dnscrypt.html
  - /dnscrypt-proxy.html
  - /english/2018/10/21/dnscrypt-proxy-quick-dirty-debian.html
---

*DNSCrypt-proxy encrypts DNS queries that would otherwise go in plaintext
 ensuring that they won't be seen or modified by anyone in the middle. It
 works as a localhost DNS server sending queries to configured DNS
 resolvers.*

I guess I should also say why you would want dnscrypt v1 vs v2. V1 which
is in most of repos currently uses broken resolver by default and only
supports one resolver at a time, while v2 can use multiple of them while
comparing them for the best ones.

This post is on getting v2 to Debian Stable and Ubuntu pre 18.10 which
contain v1 and I (sadly) don't know a better way to do this.

In order to check which version your distro has available, check the
dnscrypt-proxy search page for your distribution:

* [Debian](https://packages.debian.org/dnscrypt-proxy)
    * 2018-11-03: the version in *stretch (stable)* is `1.9.4-1` which has
      the issues why I wrote this post.
* [Ubuntu](https://packages.ubuntu.com/dnscrypt-proxy)
    * 2018-11-03: I cannot find dnscrypt-proxy from Ubuntu at all, while I
      am sure it previously had the Debian version 1.

* * * * *

1. Update your local apt cache `sudo apt update` and install curl that will
be used for downloading the package from Debian `sudo apt-get install curl`

Check the version number at [Debian's dnscrypt-proxy package download page](https://packages.debian.org/sid/amd64/dnscrypt-proxy/download) and fix it
below:

2: download the package`curl -LO https://deb.debian.org/debian/pool/main/d/dnscrypt-proxy/dnscrypt-proxy_2.0.16-2_amd64.deb`

**WARNING: This part is not supported by either Debian or Ubuntu, you are
  taking a package from another distribution and attempting to install it
  on another.**

**WARNING: Usually when you use apt, it will verify package signatures and
  ensure that the package hasn't been tampered with. I have no idea how to
  do that with direct downloads (if it's even possible) so you will be
  trusting the Debian repository mirror or CDN blindly.**

3. install the package you downloaded: `sudo dpkg -i dnscrypt-proxy<TAB>`
   (TAB (above capslock) automatically completes rest of the filename for
   you).
   1. In case there was a problem, attmept `sudo apt-get install -f` to fix
      broken package depedencies. **Remember to check that what it suggests
      looks reasonable!** If it asks to remove dnscrypt-proxy, you are out
      of luck and should do that instead of attempting to replace important
      system components from another distribution (creating
      "Frankendebian").

Hopefully dnscrypt-proxy is now running, check
`journalctl -u dnscrypt-proxy`, there should be a line saying
`[NOTICE] Wiring systemd TCP socket #0, dnscrypt-proxy.socket, 127.0.2.1:53`

Edit `/etc/NetworkManager/NetworkManager.conf` to avoid overlapping
resolvers breaking each other, it should say say `dns=none`
e.g.:

```
[main]
plugins=ifupdown,keyfile
dns=none
```

if it doesn't say dns=none, fix it and restart it with:
`systemctl restart NetworkManager`

Edit your /etc/resolv.conf, for example:

```
sudo su -
rm /etc/resolv.conf
nano /etc/resolv.conf && chattr +i /etc/resolv.conf
```

chattr +i will prevent modifying the file unless chattr -i is done first.

Example resolv.conf:

```
nameserver 127.0.2.1
options edns0 single-request-reopen
#search mikaela.info
```

Nameserver is the host where dnscrypt-proxy said to be listening on in
journalctl, options are from dnscrypt-proxy documentation and search means
domains that are automatically searched for if you don't use fully
qualified domain names, e.g. `ssh machine` in my (uncommented) config
would turn into `ssh machine.mikaela.info`. Update: I find this a privacy
leakage (whenever NXDOMAIN happens), which is why I nowadays have it commented.

You should also tell dhclient to not touch resolv.conf or you may get many
files into `/etc` beginning with names `resolv.conf.dhclient-new.`
according to
[Debian wiki](https://wiki.debian.org/resolv.conf#Stop_dhclient_from_modifying_.2Fetc.2Fresolv.conf) which gives the following two commands and
[Debian bug 860928](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=860928):

```bash
echo 'make_resolv_conf() { :; }' > /etc/dhcp/dhclient-enter-hooks.d/leave_my_resolv_conf_alone
chmod 755 /etc/dhcp/dhclient-enter-hooks.d/leave_my_resolv_conf_alone
```

* * * * *

**WARNING from 2018-10-21!** It appears that the cache and log directories
of dnscrypt-proxy don't sometimes get created automatically (at least on
Debian GNU/Linux 9.6 (stretch).

If this happens to you or you would like to be sure to get them:

```
sudo mkdir -p /var/cache/dnscrypt-proxy/ /var/log/dnscrypt-proxy/
sudo chown -R _dnscrypt-proxy:nogroup /var/cache/dnscrypt-proxy /var/log/dnscrypt-proxy
```

* * * * *

For the curious my dnscrypt-proxy config [is in my shell-things repository](https://github.com/Mikaela/shell-things/tree/master/etc/dnscrypt-proxy) [mirror](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/etc/dnscrypt-proxy).

* * * * *

## 2019-07-22 update

I have also started performing local DNSSEC validation by running Unbound
in front of DNSCrypt-proxy, so my queries go resolv.conf -> Unbound ->
dnscrypt-proxy -> configured resolvers. This has the advantage that if the
resolver didn't perform DNSSEC validation or lied about performing it, the
protection by DNSSEC would still be received.

The steps are simple:

1. `sudo apt install unbound`
    * You should see a file `/etc/unbound/unbound.conf.d/root-auto-trust-anchor-file.conf`
      which simply says `server:` and on another line after intending
      `auto-trust-anchor-file: "/var/lib/unbound/root.key"` (the path varies
      by distribution) which means it's performing DNSSEC validation with
      those trust anchors.
2. `sudo nano /etc/unbound/unbound.conf.d/dnscrypt-proxy.conf`

```
do-not-query-localhost: no
forward-zone:
    name: "."
    forward-addr: 127.0.2.1@53
```

3. `sudo systemctl restart unbound`
4. Ensure `/etc/resolv.conf` points to `127.0.0.1` and optionally `::1`
instead of `127.0.2.1` where dnscrypt-proxy runs by default. For more
details, CTRL + F for resolv.conf or chattr.
