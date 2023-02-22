---
layout: post
comments: true
title: "Installing ZNC on Ubuntu from PPA"
category: [english]
tags: [irc, english]
redirect_from: /english/2015/05/10/znc-ubuntu.html
---

_Many people seem to be installing ZNC using some weird instructions and
don't ever upgrade after that. This is yet another unofficial install
guide, but with this you should be able to upgrade too._

**This is not the official install guide, if you are looking for that,
[click here.](https://wiki.znc.in/Installation)** _You will find these
same instructions there too though._

Step 0: If you had already installed ZNC from source, go to the source
directory and run `make uninstall` or `sudo make uninstall` if needed.

[Thomas Ward](https://launchpad.net/~teward) has PPA which usually includes
the latest version of ZNC for [supported Ubuntu releases](https://wiki.ubuntu.com/Releases)
and this guide uses it.

1. Install required package for adding PPAs: `sudo apt-get install python-software-properties`
2. Add the PPA `sudo add-apt-repository ppa:teward/znc`
3. Refresh list of packages in the repos `sudo apt-get update`
4. If you had installed ZNC from Ubuntu repositories, now you could run
   `sudo apt-get upgrade`, otherwise finally install ZNC with
   `sudo apt-get install znc`.

ZNC is now installed. If you had it running before installing from PPA,
you should restart it especially if it was different version than what the
PPA has.

Now you can either (new ZNC user) run `znc --makeconf` to create config
file and then (existing ZNC user) run `znc` and your ZNC starts listening
on where you told it to listen.

You might also want to read:

- [FAQ](https://wiki.znc.in/FAQ)
  - [Automatic restart in case of X (crontab)](https://wiki.znc.in/FAQ#How_can_I_restart_ZNC_automatically_.28in_case_of_a_machine_reboot.2C_crash.2C_etc..29.3F)
