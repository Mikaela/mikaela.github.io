---
layout: mini
comments: true
title: "Android battery use or CPU leak detection the proper way"
permalink: /n/androidbattery.html
sitemap: true
excerpt:
  If your Android device is constantly out of battery, you will probably check
  the settings or some app. No, both of those lie, Android is a Linux so just
  use top.
---

# Checking for Android battery drainer

```bash
top -b -n 1 -o %CPU,%MEM,CMDLINE -s1 -m 20
```

That is all there is to do upon having access to `adb shell` whatever way you
prefer. Look for high CPU and MEM use an observe the app ID for the truth.

For some reason the system and the battery monitor in settings won't bring that
to your attention.

Bonus points for you if the cause is some app performing CPU locking and heating
up your phone due to being unable to access a tracking domain that wishes to spy
upon you.
