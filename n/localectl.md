---
layout: mini
permalink: /n/localectl.html
redirect_from:
  - /locale.html
  - /locales.html
  - /english/2016/10/16/adjusting-locales.html
  - /blog/english/2016/10/16/adjusting-locales.html
sitemap: false
---

# Quick notes on `localectl` settings

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
_Automaattinen sisällysluettelo - Automatically generated Table of Contents_

- [Ready commands](#ready-commands)
  - [Internationalish](#internationalish)
  - [Finland Finnish](#finland-finnish)
- [Explanations](#explanations)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Ready commands

### Internationalish

`% sudo localectl set-locale LANG=en_GB.utf8 LC_TIME=en_DK.utf8 LC_MONETARY=fi_FI.utf8 LC_NAME=fi_FI.utf8 LC_TELEPHONE=fi_FI.utf8`

- This will speak English, but use euros and other Finnish cultural defaults, while time is shown as ISO 8601.

### Finland Finnish

`% sudo localectl set-locale LANG=fi_FI.utf8 LC_TIME=fi_FI.utf8 LC_MONETARY=fi_FI.utf8 LC_NAME=fi_FI.utf8 LC_TELEPHONE=fi_FI.utf8`

## Explanations

- LANG is the language and defaults for other variables if they are unset
  and as I said I prefer en_GB which is better in Europe for matching the
  standards better than en_US.
- LC_TIME sets the time format and en_DK gives ISO 8601 date format for
  everything respecting LC_TIME (at least `date` and M̀ATE panel clock
  don't respect it).
- LC_MONETARY sets the currency and how sums of it are managed and the
  only issue with en_GB is it using £ instead of € which affects at least
  spreadsheets.
- LC_NAME sets name format and I prefer Finnish (just the name) to British
  which has ms/mrs/mr and I hate them being gendered and I doubt it
  understands mx.
- LC_TELEPHONE sets telephone number format and I set it to fi_FI as it
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

- [Arch Wiki: Locale, LC_TIME](https://wiki.archlinux.org/index.php/locale#LC_TIME:_date_and_time_format)
- [Locale Helper: en_GB](https://lh.2xlibre.net/locale/en_GB/)
- [Locale Helper\_ fi_FI](https://lh.2xlibre.net/locale/fi_FI/)
- [Wikipedia: UTF-8](https://en.wikipedia.org/wiki/UTF-8)
  - Random misplaced advice on disabling charset fallback in your
    IRC client and being UTF-8 only so you see when someone is not
    using UTF-8 and don't submit useless bug reports to
    bots/bridges/whatever thare are UTF-8 only as supporting every
    charset is not possible as IRC has nothing to declare character
    set and there is zero reason why you wouln't be using UTF-8!
- [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
  - You should read it or at least be aware of it especially if you are
    in contact with people from other countries and even more if you
    are in international communities!

---

2019-12-27: I don't see LANGUAGE mentioned here, but it was blocking me
from changing language of GNOME and `sudo dpkg-reconfigure locales` in the
end gave me `*** update-locale: Warning: LANGUAGE (en_US:en) is not compatible with LANG (fi_FI.UTF-8). Disabling it.`.

Either I was wrong on it being list of fallback languages I wish to use, or
GNOME has different view on it, but as I think I have seen errors related
to it before, I will drop `LANGUAGE` from the variables I set.

2024-04-04: `export LANGUAGE=eo:fi:en` in a file read by my `zshrc` works fine as it gets read before my `startsway` anyway
