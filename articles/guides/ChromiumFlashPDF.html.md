<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Guide for getting Flash and PDF plugins from Google Chrome to Chromium" />
<meta name="keywords" content="Google,Chrome,Chromium,Flash,Player,PDF,Linux,Debian,Ubuntu" />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/ChromiumFlashPDF.html">
<title>Getting Google Chrome integrated flash and PDF player to Chromium</title>
</head>

# What do you need?

You need [Google Chrome] and [Chromium]. [Google Chrome] contains the plugins, which
you need and why would you want to get them into [Chromium] if you didn't have it?

[Chromium] is probably packaged in your distribution and can be found either in package "chromium" (in Debian 7 (Wheezy) and above) or "chromium-browser" (Debian 6 (Squeeze)).

# How to get the plugins into Chromium.

After you have installed Chrome and Chromium, you should have directories "/opt/google/chrome"
and "/usr/lib/chromium".

The plugins, which you want are files "libpdf.so" and "libgcflashplayer.so" in the /opt/google/chrome" directory.

The easiest way to get them into Chromium is to symlink them with the following commands:

```
ln -s /opt/google/chrome/libpdf.so /usr/lib/chromium/
ln -s /opt/google/chrome/libgcflashplayer.so /usr/lib/chromium
```

Remember to keep Google Chrome installed, because when package managment upgrades it, those plugins are also upgraded in both Chrome and Chromium (because Chromium is same as Chrome with those plugins).

Now open (or if it was already running, restart) Chromium and go to [about:plugins](about:plugins). There you should see two new plugins called "Chrome PDF Viewer" and "Flash".
Enable them if they aren't enabled and they both should work now whenever you go into page with Flash script or PDF file.

[Google Chrome]:https://www.google.com/intl/en/chrome/browser/
[Chromium]:http://www.chromium.org/Home
