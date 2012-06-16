# Quick Enigmail guide.

# What do you need

This depends on your OS. You should also read my previous guides about [GPG] and Icedove / Thunderbird.

[GPG]:GPG.html


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

Write with computer

## Sending UTF-8

Write to Icedove / Thunderbird guide.

# Testing that everything works

Write about Adele


# Sending PGP/MIME instead of PGP/INLINE

I personally don't recommend this, because of my reasons. PGP/MIME puts the signature to signature.asc ataachment and PGP/INLINE into "mess" in the bottom of email.

NOTE: If you want to sign emails and use HTML at the same time, you *must* use PGP/MIME or otherwise your signature cannot be verified!

Write the instructions here.
