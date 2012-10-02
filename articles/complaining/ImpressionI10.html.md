<!DOCTYPE html>
<html>
<head>
<meta name="description" content="My experience with Impression I10 tablet." />
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

<table style="width:194px;"><tr><td align="center" style="height:194px;background:url(https://picasaweb.google.com/s/c/transparent_album_background.gif) no-repeat left"><a href="https://picasaweb.google.com/113787158024729598288/ImpressionI10?authuser=0&feat=embedwebsite"><img src="https://lh5.googleusercontent.com/-hObrpRJKAbk/UGq9u9iYYzE/AAAAAAAABNI/tl9JR-zlGxI/s160-c/ImpressionI10.jpg" width="160" height="160" style="margin:1px 0 0 4px;"></a></td></tr><tr><td style="text-align:center;font-family:arial,sans-serif;font-size:11px"><a href="https://picasaweb.google.com/113787158024729598288/ImpressionI10?authuser=0&feat=embedwebsite" style="color:#4D4D4D;font-weight:bold;text-decoration:none;">Impression I10</a></td></tr></table>

# Many issues

I don't like this tablet. 

## Market problem

### No Android Market / Google Play

It doesn't have Android Market nor Google Play officially. Of course it can unofficially be installed, but that doesn't fix the compatibility of applicaltions.

### Amazon Market

[Leader Interational INC], the author of this tablet, suggests installing Amazon Market in one of the papers which come with this device. This has a problem that you must give credit card details <strong>even with free applicaltions</strong>. I don't have credit card!

### [F-Droid]

F-Droid is the solution for this problem. It describes itself as "<em>an easily-installable catalogue of FOSS (Free and Open Source Software) applications for the Android platform.</em>".

#### Application compatibility

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
		<td>[#238 - github/android]</td>
		<td>No</td>
		<td>No</td>
		<td><center>-</center></td>
	</tr>
		<tr>
		<td>[Barcode Scanner] crashes when started</td>
        <td>Invalid</td>
		<td><center>Won't be fixed?</center></td>
		<td>[#1377 - zxing - Google Project Hosting]</td>
		<td><center>"<em>This is a device bug</em>" I am not surprised...</center></td>
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

# Something works :)

## Games

I tried installing some [games from F-Droid] and for some reason they all work. Below there is another table of games which I installed and what I thought about them.

<table>
	<tr>
		<td>Game</td>
		<td>Status</td>
	</tr>
	<tr>
		<td>[Andor's Trail]</td>
		<td>I am lost. I should go to "storage cave" or someones basement and I cannot find either. There are too many caves.</td>
	</tr>
	<tr>
		<td>[Chess Walk]</td>
		<td>I keep losing...</td>
	</tr>
	<tr>
		<td>[Dots'n'Boxes]</td>
		<td>I didn't read the description and thought that this was just X and O game, but was surprised by it being in German and I didn't understand anything.</td>
	</tr>
		<tr>
		<td>[GL Tron]</td>
		<td>I keep losing in this too...</td>
	</tr>
	</tr>
		<tr>
		<td>[Taps Of Fire]</td>
		<td>Maybe I am a little better on this than [Frets on Fire], but I am bad in this.</td>
	</tr>
		</tr>
		<tr>
		<td>[Vector Pinball]</td>
		<td>My new favourite Android game :D</td>
	</tr>
</table>


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
[games from F-Droid]:http://f-droid.org/repository/browse/?page_id=0&fdpage=1&fdcategory=Games
[Andor's Trail]:http://f-droid.org/repository/browse/?fdcategory=Games&fdid=com.gpl.rpg.AndorsTrail&fdpage=1
[Chess Walk]:http://f-droid.org/repository/browse/?fdcategory=Games&fdid=cz.hejl.chesswalk&fdpage=1
[Dots'n'Boxes]:http://f-droid.org/repository/browse/?fdcategory=Games&fdid=de.stefan_oltmann.kaesekaestchen&fdpage=1
[GL Tron]:http://f-droid.org/repository/browse/?fdcategory=Games&fdid=com.glTron&fdpage=1
[Taps Of Fire]:http://f-droid.org/repository/browse/?fdcategory=Games&fdid=org.tof&fdpage=2
[Frets On Fire]:http://fretsonfire.sourceforge.net/
[Vector Pinball]:http://f-droid.org/repository/browse/?fdcategory=Games&fdid=com.dozingcatsoftware.bouncy&fdpage=2
