<!DOCTYPE html>
<html>
<head>
<meta name="description" content="My opinion about Impression I10 tablt." />
<meta name="keywords" content="Impression,I10,bugs,problems,issues," />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/articles/complaining/ImpressionI10">
<title>Impression I10</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
<text align=left><a href="../../index.html"><-- Index</a></text align>
<text align=center>Impression I10</text align>
<text align=right><a href="../../sitemap/sitemap.html">Sitemap --></a></text align>
<hr/>

# Many issues

I don't like this tablet. 

## Market problem

### No Anroid Market / Google Play

It doesn't have Android Market nor Google Play officially. Of course it can unofficially be installed, but that doesn't fix the compatibility of applicaltions.

### Amazon Market

[Leader Interational INC], the author of this tablet, suggests installing Amazon Market in one of the papers which come with this device. This has a problem that you must give credit card details <strong>even with free applicaltions</strong>. I don't have credit card!

### [F-Droid]

F-Droid is the solution for this problem. It describes itself as "<em>an easily-installable catalogue of FOSS (Free and Open Source Software) applications for the Android platform.</em>".

#### Applicaltion compatibility

I am experiencing many issues with different applicaltions on this tablet. Luckily [F-Droid] clearly tells where the issue trackers and homepages are.

I will list them in them in table below

<table border=1>
	<tr>
		<td>Issue</td>
		<td>Fixed?</td>
		<td>Fix in [F-Droid]?</td>
		<td>Upstream issue</td>
		<td>More details</td>
	</tr>
	<tr>
		<td>[WiFi Fixer] crashes when it's started</td>
		<td>Yes</td>
		<td>No</td>
		<td>[#11 - Zanshinmu/Wifi-Fixer - GitHub]</td>
		<td><center>-</center></td>
	</tr>
	<tr>
		<td>[Firefox for Android] crashes when started</td>
		<td>No</td>
		<td>No</td>
		<td>[#795572 - Bugzilla@Mozilla]</td>
		<td><center>-</center></td>
	</tr>
	<tr>
		<td>[GitHub for Android] crashes when started</td>
		<td>Invalid</td>
		<td><center>Won't be fixed?</center></td>
		<td>[#238 - github/android]</td>
		<td><center>"<em>This is a device bug</em>" I am not surprised...</center></td>
	</tr>
		<tr>
		<td>[Barcode Scanner] crashes when started</td>
		<td>No</td>
		<td>No</td>
		<td>[#1377 - zxing - Google Project Hosting]</td>
		<td><center>-</center></td>
	</tr>
</table>

Why "Fix in [F-Droid]"? It's the only market, which I have found correctly working on this device.

## [ADB] logcat doesn't work.

1. I have plugged the USB cable.
2. USB debugging reports to be on.
3. Device detects the cable.
4. I have tested [ADB] with another device and it worked.

It's good that at least [alogcat] works. I haven't tested other features of adb yet.

What happens when I run it? Nothing as you can see below.

```
% adb logcat
* daemon not running. starting it now on port 5037 *
* daemon started successfully *
- waiting for device -
```

[Leader International INC]:http://www.leaderinternationalinc.com/
[F-Droid]:https://f-droid.org/
[#11 - Zanshinmu/Wifi-Fixer - GitHub]:https://github.com/Zanshinmu/Wifi-Fixer/issues/11
[#795572 - Bugzilla@Mozilla]:https://bugzilla.mozilla.org/show_bug.cgi?id=795572
[ADB]:https://developer.android.com/tools/help/adb.html
[alogcat]:https://code.google.com/p/alogcat/
[#238 - github/android]:https://github.com/github/android/issues/238
[#1377 - zxing - Google Project Hosting]:https://code.google.com/p/zxing/issues/detail?id=1377
[WiFi Fixer]:https://wififixer.wordpress.com/
[Firefox for Android]:https://wiki.mozilla.org/Mobile/Platforms/Android
[GitHub for Android]:https://github.com/github/android
[Barcode Scanner]:https://code.google.com/p/zxing/
