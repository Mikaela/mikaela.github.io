<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Enigmail guide" />
<meta name="keywords" content="Thunderbird,Icedove, Enigmail,GnuPG,gpg" />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/gpg/Enigmail.html">
<title>Enigmail guide</title>
</head>

# Quick Enigmail guide.

# What do you need

This depends on your OS. You should also read my previous guides about [GPG] and [Icedove / Thunderbird].

[GPG]:GPG.html
[Icedove / Thunderbird]:../Thunderbird-Icedove.html


## Debian based distributins

You need at least packages icedove or thunderbird and enigmail, but I recommend you to install gnupg2 and pinentry packages too.

> aptitude install thunderbird enigmail gnupg2 pinentry-curses pinentry-gtk2 pinentry-qt4

NOTE: In Debian Thunderbird is called Icedove and the package is icedove.

## Mac OS X

You need [GPG-tools], [Thunderbird] and [Enigmail]

[GPG-tools]:http://www.gpgtools.org/
[Thunderbird]:https://www.mozilla.org/en-US/thunderbird/
[Enigmail]:http://enigmail.mozdev.org/home/index.php.html

## Windows

You need [GPG4Win], [Thunderbird] and [Enigmail].

[GPG4Win]:http://www.gpg4win.org/
[Thunderbird]:https://www.mozilla.org/en-US/thunderbird/
[Enigmail]:http://enigmail.mozdev.org/home/index.php.html

# Running the Enigmail wizard.

If Enigmail wizard doesn't appear by itself, open it manually from OpenPGP (menu) --> Enigmail wizard.

NOTE: Allow wizard to do changes, which it wants.

## Enable viewing messages in original HTML.

You probably want to see the HTML in case the message has been sent using HTML.

You can see the messages in original HTML easily. Open View (menu) --> Message body as --> Original HTML.

## If the wizard fails

### Sending plaintext

This is documented in my [Icedove / Thunderbird guide].

[Icedove / Thunderbird guide]:../Thunderbird-Icedove.html#sending-plaintext

### Signing by default.

Open Edit --> Account Settings --> OpenPGP security and select "Enable OpenPG support (Enigmail) with this user information". Then select "Use specific OpenPGP key" and press the "select key" button. Now just select your private key.

After you have selected the key, I recommend you to select the first and the second boxes, which are about signing.

Remember to do this for multiple identities. Select the account and then click the "manage identities" button.

## Sending UTF-8

I have documented this in my [Icedove / Thunderbird guide].

[Icedove / Thunderbird guide]:../Thunderbird-Icedove.html#sending-utf-8

This only changes the charset line to UTF-8 or removes the mentioning of charset in signature.

# Testing that everything works

Adele is PGP email bot. You can send email to it and it will tell you if it can decrypt your email or is it signed.

You can get the PGP key of Adele by running

> gpg2 --keyserver pool.sks-keyservers.net --recv-keys 92AB3FF7

Just send your email to adele-en@gnupp.de and it will reply shortly.

# Sending PGP/MIME instead of PGP/INLINE

PGP/MIME puts the signature to signature.asc ataachment and PGP/INLINE into "mess" in the bottom of email.

WARNING: This might not work with some mailing lists (for example Ubuntu, Mozdev and GnuPG mailing lists)!

There is open bug report about PGP/MIME not working on Ubuntu MLs at LaunchPad, [996581]

[996581]:https://bugs.launchpad.net/ubuntu/+bug/996581

NOTE: If you want to sign emails and use HTML at the same time, you *must* use PGP/MIME or otherwise your signature cannot be verified!

To send PGP/MIME by default, open Edit --> Account Settings --> OpenPGP security and check "Use always PGP/MIME".

Remember to check to do this for your all identities in case you have more than one of them. Edit --> Account Settings --> "Manage Identities..." button and after selecting identity, you can find OpenPGP security tab.

# OpenPGP headers.

To enable sending OpenPGP headers, return to OpenPGP settings (mentioned above) and click "advanced".

Select the both checkboxes and write URL where your key is located. If you don't have homepage, you can link to webui of your preferred keyserver.

These headers appear in email source like this:

```
OpenPGP: id=82A46728;
    url=http://mkaysi.github.com/PGP/key.txt
```

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Enigmail guide</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="http://mkaysi.github.com/articles/guides/GPG/Enigmail.html" rel="dct:source">mkaysi.github.com</a>.
