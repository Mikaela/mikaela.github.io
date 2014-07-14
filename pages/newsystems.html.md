<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="How I configure my new systems. Uncompilated Firewall, SSH, apt etc. This is probably heavily Debian/Ubuntu based." />
<meta name="keywords" content="ufw,ssh,sshguard,network-manager,interfaces,apt,colours,progress,bar,sources.list,dnsmasq,resolvconf,miredo,teredo,gai.conf,molly-guard,oidentd" />
<meta name="author" content="Mikaela Suomalainen" />
<link rel="canonical" href="http://mikaela.info/pages/newsystems.html">
<title>How I configure my new systems</title>
<link rel="stylesheet" type="text/css" href="../css.css" />
</head>
<body>

On this page I try to explain how I usually configure new systems. This 
might be very Ubuntu/Debian based. I hope that someone finds this helpful 
and if there are (security) issues, people let me know.

When I have configuration files, I will link to them instead of putting 
them on this page to avoid duplicating them and having outdated clones.

It should also be said that when I give commands, they are usually ran as 
root..

## ufw

```
ufw allow 113
ufw allow 631
ufw allow 100XX
ufw limit 22
ufw enable
```

* Allow all traffic to the following ports:
    * 113 - identd/authd (for IRC)
    * 631 - CUPS
        * I don't know how else to allow LAN connections to pass it, I 
        should learn direct iptables.
            * In [CUPS settings](::1:631) ensure that you don't have 
            `Allow printing from the internet` checked.
    * 100XX
        * My unstandard SSH port for routers which don't allow WAN port 
        to be forwarded to different LAN port. Based on computer number.
* Limit traffoc to the following ports:
    * 22 - SSH
        * I only keep this open to not break compatibility with my 
        `~/.ssh/config` files and having ufw protecting it in addition 
        to sshguard shouldn't hurt. (Sshguard is more sensitive though).

## sshd

`/etc/ssh/sshd_config`

* Under the `Port 22` line I add another port `Port 100XX` where the last 
two numbers depend on the computer number.
* I uncomment the both listenaddresses `::0` and `0.0.0.0`.
* I uncomment `Protocol 2`
* I change `LogLevel` to `LogLevel VERBOSE`
* I uncomment and change the line `PasswordAuthentication no` to this.
    * So logging in without SSH keys is not allowed.
* I uncomment the line `Banner /etc/issue.net`
    * So `/etc/issue.net` with content that you put there is shown to 
    users who SSH before logging in.

## sshguard

* `apt-get update;apt-get install sshguard`

Sshguard should work out-of-the-box. This section should be below apt 
(because apt was never configured), but I will let it be here for now.

## network-manager

If you are going to use `interfaces` file, you must change the line 
`managed=false` to `managed=true` in 
`/etc/NetworkManager/NetworkManager.conf`. Otherwise you cannot connect 
to anywhere.

The line `dns=dnsmasq` should also be commented there for dnsmasq.

## interfaces

**I only do this for devices which are connected by cable and I cannot 
get this to work with WLAN!**

This configuration is unlikely to change, so I am going to paste it here.

`/etc/network/interfaces`:

```
# interfaces(5) file used by ifup(8) and ifdown(8)

auto lo
iface lo inet loopback

auto eth0
allow-hotplug eth0
iface eth0 inet static
address 10.0.0.2
netmask 255.0.0.0
gateway 10.0.0.1
dns-nameservers ::1 8.8.8.8 8.8.4.4
iface eth0 inet6 auto
```

This works for ethernet for me. This does the following to `eth0`:

* Sets IPv4 
    * address to 10.0.0.2
    * netmask to 255.0.0.0
    * gateway to 10.0.0.1
* nameservers to ::1, 8.8.8.8 and 8.8.4.4
    * I don't have native IPv6 so I am using other IPv4 DNS servers.
        * `::1`?
            * Local DNS cache (dnsmasq)

## hosts

`/etc/hosts`

This is mostly default hosts file. The only thing I have done is to map 
`::1` to `localhost` and `HOSTNAMEHERE`, because by default, localhost 
points only to IPv4 address `127.0.0.1`.

As you can probably guess, `HOSTNAMEHERE` should be replaced with your 
`hostname`.

```
::1 localhost
::1 HOSTNAMEHERE

127.0.0.1   localhost
127.0.1.1   HOSTNAMEHERE

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```

## apt

### colours

This is simply copy-pasting to root shell until sources.list.

```
echo 'APT::Color "1";' > /etc/apt/apt.conf.d/99color
```

### progress bar

```
echo 'Dpkg::Progress-Fancy "1";' > /etc/apt/apt.conf.d/99progressbar
```

### sources.list

I always replace the entries of default mirrors with `http.debian.net` or 
Ubuntu's `mirrors.txt`.

[Link to my sources.list files.](https://github.com/Mkaysi/shell-things/tree/gh-pages/sources.list)

**Debian: replace `stable` or `testing` with the code name or you will 
encounter surprises when `testing` becomes `stable` and `unstable` becomes 
`testing`!** `unstable` becoming `testing` shouldn't affect so much, but 
I warned you.

## dnsmasq

`apt-get install dnsmasq` and it should start working. It's not used 
before you tell `resolv.conf` to use it and this is where `resolvconf` 
comes.

## resolvconf

`apt-get install resolvconf` and resolvconf should start keeping your 
`/etc/resolv.conf` in order. I usually modify the file `/etc/resolvconf/resolv/resolv.conf.d/head` and add my nameservers there so they will always 
be on top of nameserver list.

[My /etc/resolvconf/resolv.conf.d/head.](https://raw.githubusercontent.com/Mkaysi/shell-things/gh-pages/etc/resolvconf/resolv.conf.d/head)

At time of writing this section `2014-07-14` I am still missing native 
IPv6, so I have IPv6 Google DNS commented and I don't recommend OpenDNS.

## miredo

Miredo should start working when installed, `apt-get install miredo`.

Teredo for Linux. Native IPv4 or other tunnel than Teredo gets preferred 
even if you configure gai.conf below.

### gai.conf

Uncomment (remove the `#` from the following lines except the last):

```
label ::1/128       0
label ::/0          1
label 2002::/16     2
label ::/96         3
label ::ffff:0:0/96 4
label fec0::/10     5
#label fc00::/7      6
```

This makes Teredo a little more prioritized, but Google Chrome still 
avoids it and with other browsers you don't get more than 7 points from 
IPv6 test. With actual tunnel you would get full points.

## molly-guard

`apt-get install molly-guard` and the commands to poweroff, reboot etc. 
start asking you for hostname if you are connected with SSH.

I always uncomment line `ALWAYS_QUERY_HOSTNAME=true` in 
`/etc/molly-guard/rc`, because I am always poewring off wrong hosts 
even if I am on them locally.

## oidentd

`apt-get install oidentd` and oidentd works. It doesn't necressarily 
need additional configuration unless you are public shell host or 
something.

<hr/>

<script>
var idcomments_acct = '2405e74b7c1c8062b1b2ea830f1a8bd0';
var idcomments_post_id;
var idcomments_post_url;
</script>
<span id="IDCommentsPostTitle" style="display:none"></span>
<script type='text/javascript' src='http://www.intensedebate.com/js/genericCommentWrapperV2.js'></script>

</body>
</html>
<!-- vim : set ft=markdown-->
