<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Why to not use other charsets than UTF-8 in IRC and how to do it." />
<meta name="keywords" content="IRC,UTF-8,charset,Unicode,XChat,HexChat,irssi,WeeChat," />
<meta name="author" content="Mikaela Suomalainen" />
<link rel="canonical" href="https://mkaysi.github.io/pages/external/irc-utf-8.html">
<title>UTF-8 in IRC</title>
<link rel="stylesheet" type="text/css" href="../../css.css" />
</head>
<body>

## Why to use UTF-8

* The characters that you send are visible to everyone.
* There is no unclearity what you say.
    * Example:
        * *sain t?it?*
            * This can be understood two ways:
                * *sain täitä*
                    * *I got louses*
                * *sain töitä*
                    * *I got work*
* All of the characters that you need are in it.

TODO: add other reasons.

### Why to disable fallback.

* You know when people aren't sending UTF-8.
    * You can tell them it.
        * You can take action to their misbehavour.
* You aren't supporting depracated (by UTF-8) charsets.

TODO: add other reasons.

## How to use UTF-8.

### HexChat

UTF-8 is used by default, but if your configuration is migrated from XChat 
you might not be using it.

Open HexChat and there Network List (CTRL + S or search from the File 
menu.

Edit network and ensure that the Character set says **UTF-8 (Unicode).**

"IRC (Latin/Unicode hybrid)" **is not valid UTF-8** and **mustn't be 
used!**

### irssi

I have copied these instructions from [Kapsi's "Irssi ja UTF-8" guide](http://www.kapsi.fi/ohjeet/irssi-utf8.html) 
so these are untested and I wish someone will verify me that these work.

```
/set term_charset UTF-8
/set recode_out_default_charset UTF-8
/set recode_fallback ""
/save
```

1. Sets terminal charset.
2. Sets outgoing charset as UTF-8.
3. Disables fallback when received messages aren't UTF-8.

### WeeChat

```
/set charset.default.decode ""
/set charset.default.encode "UTF-8"
```

1. Stops decoding/fallbacking to other charsets than what we send.
2. Send UTF-8.

### XChat

**XChat defaults to weird charset that claims to be UTF-8 and confuses 
users as in reality it's not UTF-8!**

Open server list from the file menu or press 
CTRL + S, edit network and select the network. Ensure that the charset 
says **UTF-8 (Unicode)**.

</body>
</html>
<!-- vim : set ft=markdown-->
