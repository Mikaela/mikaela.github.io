<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Guide for installing and using Limnoria which is actively developed fork of Supybot." />
<meta name="keywords" content="Supybot,Limnoria,IRC,bot," />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/Limnoria.html">
<title>Installing & running Limnoria.</title>
<link rel="stylesheet" type="text/css" href="tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

# Installing

There are three ways to install Limnoria depending on your operating system. If you are on Debian-based Linux distribution e.g. Debian, *Ubuntu you can install the Debian package. Or then you can install from source which should work on all other OSes too (at least Mac OS X, I don't have successful experience with Windows) and you can also install for current user only.

## With the Debian package

<strong>This method requires root access.</strong>

First become root by running

> sudo su

Then download the Debian package. Here you have to choice do you install the stable version or testing version.

Replace "VERSIONHERE" with "master" to get stable version or "testing" to get unstable version.

```
wget http://compiler.progval.net/limnoria-VERSIONHERE-HEAD.deb
dpkg -i limnoria-VERSIONHERE-HEAD.deb
apt-get install -f
```

The "apt-get install -f" tries to fix broken packages by downloading and installing missing depedencies if there are them.

### Upgrading

To upgrade just run the steps above. Remember that the Debian packages are daily builds, so they are changed every day. You can see the latest change on [compiler.progval.net]. The "-HEAD" packages are always the most recent version.

<!-- vim : set ft=html -->
