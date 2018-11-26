---
layout: post
comments: true
title: "Note to self: adjusting locales & why"
category: [english]
tags: [english, linux, locale]
redirect_from:
  - /locale.html
  - /locales.html
  - /english/2016/10/16/adjusting-locales.html
---

*I have started using my devices in en_GB, but on PCs that can have issues
 with different types of different locales unless some things are borrowed
 from other locales.*

`% sudo localectl set-locale LANG=en_GB.utf8 LC_TIME=en_DK.utf8 LC_MONETARY=fi_FI.utf8 LC_NAME=fi_FI.utf8 LC_TELEPHONE=fi_FI.utf8`

* LANG is the language and defaults for other variables if they are unset
  and as I said I prefer en_GB which is better in Europe for matching the
  standards better than en_US.
* LC_TIME sets the time format and en_DK gives ISO 8601 date format for
   everything respecting LC_TIME (at least `date` and M̀ATE panel clock
   don't respect it).
* LC_MONETARY sets the currency and how sums of it are managed and the
  only issue with en_GB is it using £ instead of € which affects at least
  spreadsheets.
* LC_NAME sets name format and I prefer Finnish (just the name) to British
  which has ms/mrs/mr and I hate them being gendered and I doubt it
  understands mx.
* LC_TELEPHONE sets telephone number format and I set it to fi_FI as it
  defaults international numbers to +358 and I am more likely to be typing
  Finnish numbers than British. I imagine it can affect office tools, and
  it's here more just in case.

And naturally to use these locales, they must be compiled.

So `/etc/locale.gen` must include the lines

```
en_DK.UTF-8 UTF-8
en_GB.UTF-8 UTF-8
# If you don't have en_US, things will break!
en_US.UTF-8 UTF-8
fi_FI.UTF-8 UTF-8
```

and as always, after editing that file, you must run `sudo locale-gen`.

(Debian & deriative users, you have `dpkg-reconfigure locales` that merges
the editing and locale-gen and that is probably what you are supposed to
use.)

It seems like I didn't even say anything about that UTF-8 part, but
it's 2016 and everything is UTF-8 (or your things are horribly broken
and the rest of the world hates you).

Sources/thanks:

* [Arch Wiki: Locale, LC_TIME](https://wiki.archlinux.org/index.php/locale#LC_TIME:_date_and_time_format)
* [Locale Helper: en_GB](http://lh.2xlibre.net/locale/en_GB/)
* [Locale Helper_ fi_FI](http://lh.2xlibre.net/locale/fi_FI/)
* [Wikipedia: UTF-8](https://en.wikipedia.org/wiki/UTF-8)
    * Random misplaced advice on disabling charset fallback in your
      IRC client and being UTF-8 only so you see when someone is not
      using UTF-8 and don't submit useless bug reports to
      bots/bridges/whatever thare are UTF-8 only as supporting every
      charset is not possible as IRC has nothing to declare character
      set and there is zero reason why you wouln't be using UTF-8!
* [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
    * You should read it or at least be aware of it especially if you are
      in contact with people from other countries and even more if you
      are in international communities!
