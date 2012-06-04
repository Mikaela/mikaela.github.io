# Quick GPG guide

Note: If gpg2 gives you error about invalid/unknown/etc. command, use gpg instead.

## What do you need:?

### Linux (Debian based distributions)

You need at least package gnupg, but I recommend installing packages
icedove enigmail pinentry pinentry-curses pinentry-gtk2 pinentry-qt4 signing-party and gnupg2.

> # aptitude install gnupg gnupg2 icedove enigmail pinentry-curses pinentry-gtk2 pinentry-qt4 signing-party gnupg2

NOTE: If you aren't using Debian, install package "thunderbird" instead of "icedove".

### Mac OS X

You need at least [GPG-tools], but I also recommend you to install [Thunderbird] and [Enigmail].

[GPG-tools]:http://www.gpgtools.org/
[Thunderbird]:https://www.mozilla.org/en-US/thunderbird/
[Enigmail]:http://enigmail.mozdev.org/home/index.php.html

### Windows

You need at least [GPG4Win], but I recommend installing [Thunderbird] and [Enigmail] too.

[GPG4Win]:http://www.gpg4win.org/
[Thunderbird]:https://www.mozilla.org/en-US/thunderbird/
[Enigmail]:http://enigmail.mozdev.org/home/index.php.html

### Step 1

This depends are you generating a new key or importing old key.

#### Step 1: Generating a new key

Open terminal (or cmd.exe if you are using Windows) and run

> gpg2 --gen-key

Notes:

1. When you are asked for key size, enter the maximum size.

2. When you are asked for email address, leave it empty. We will add it later.

##### Adding new UIDs (User IDentities)

First you need to find out the ID of the key, which you just created. You can see it with two commands.

> gpg2 --list-keys

Example output:

```
% gpg --list-keys
pub   4096R/82A46728 2012-03-27
uid                  Mika Suomalainen
sub   4096R/A4271AC5 2012-03-27
```

or 

> gpg2 --fingerprint

Example output:

```
% gpg2 --fingerprint
pub   4096R/82A46728 2012-03-27
Key fingerprint = 24BC 1573 B8EE D666 D10A  AA65 4DB5 3CFE 82A4 6728
uid                  Mika Suomalainen
sub   4096R/A4271AC5 2012-03-27
```

The second command also shows the key fingerprint which is usually used to identify the key. Note that you can see both keyid formats in fingerprint. The last eght characters in keyid are the short format and the last sixteen characters are the long format.
If you want to see the long keyid, run

> gpg2 --list-keys --keyid-format long

Now add the uid with the following commands:

> gpg2 --edit-key KEYID

and enter command:

> adduid

and you are asked for name and email address again. This time you can give them both.

If that UID which has only your first name isn't the first UID, select it by giving command, which is the number of the UID, for example:

> 2

and * appears to that UID to tell you that that UID is selected. Now give command

> primary

to make it the primary UID again.

Now you can exit from GPG with

> quit

and confirm to save changes with

> y

#### Step 1: Importing old key

You can import your old private key same way as you import public keys. This means:

> gpg2 --import key.asc

Where key.asc is the file, which contains the (private) key(s)

### Step 2: backing up the key

You need to know your keyid. I told you how to get it in "Adding new uids". To back up your private key, run

> gpg2 --export-secret-keys -a KEYID

and save the output of that command to file. If you are on Linux or Mac OS X, you can forward the output directly to file, with

> gpg2 --export-secret-keys -a KEYID > privatekey.asc

The previous command creates a file called "privatekey.asc", which contains the output of the first command.

### Step 3: Configuring gpg(2)

The configuring of gpg happens in gpg configuration directory. In Linux and Mac this is ~/.gnupg/gpg.conf.

I recommend you to add following lines to it. I'll try to explain them with my best ability.

```
# Options for GnuPG
# Copyright 1998, 1999, 2000, 2001, 2002, 2003,
#           2010 Free Software Foundation, Inc.
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This file is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
License information so I won't break license of the default config file, which I have appended.

> default-key KEYID

So KEYID is used by default if there are multiple secret keys.

```
default-recipient-self
encrypt-to KEYID
```

So everything what you encrypt is also encrypted to you.

> charset UTF-8

So UTF-8 is used as default character set and most of characters can be used.

```
keyserver hkp://pool.sks-keyservers.net
keyserver-options auto-key-retrieve no-include-revoked verbose
```

So default keyserver is specified and unknown keys are always received when something what requires missing key is procressses and revoked keys aren't included in search results and verbose output is used.

By the way, you can find my gpg.conf [here].

[here]:https://raw.github.com/Mkaysi/shell-things/master/gnupg/gpg.conf

### Step 4: Sharing your public key

There are two ways to share your key. I personally use and recommend them both.

#### Without keyservers

If you have homepage, it's recommended that you put your key there. My key can be found at [PGP/key.txt]

[PGP/key.txt]:../../PGP/key.txt

You can get your public key with command

> gpg2 --export -a KEYID

or if you use Linux and have installed package signing-party, you can use

> pgp-clean KEYID

to get your public key without signatures (I will explain them later). WARNING: pgp-clean seems to also remove encryption subkey.

#### With keyservers

If you followed my configuration, you are usng pool.sks-keyservers.net as your keyserver and you are automatically receiving unknown keys from t, whenever you try to verify something, what is signed with unknown key.

To send your public key to keyserver, run

> gpg2 --send-keys KEYID

To receive key from keyserver, run

> gpg2 --recv-keys KEYID

To search keys from keyserver, use

> gpg2 --search-keys QUERY WORDS

or if you are using Linux and have packages signing-party and dialog installed, you can use

> keylookup QUERY WORDS

##### Word of warning

Keyservers only append content. Information on keyserver cannot be removed. This means, that when you delete uid, signature or whatever, it reappears when you run

> gpg2 --refresh-keys

or receive your key from keyserver again. Thought content (uids, signatures, keys etc.) can be revoked.

# You can now move to Icedove / Thunderbird guide and after that | or Enigmail guide, because things after this are usually done by email client.

But you should continue reading to understand how to use GPG without email client.

## Trusting keys.

If you want to make gpg know that you trust key of another person, you have two opinons. Enter the "key editing shell", with

> gpg2 --edit-key KEYID

and

### Way 1: lsign

Lsign signs the key locally making it impossible to export the signature. Use it if you trust the key owner to be who the key says, but you haven't met him/her personally.

Lsign the key with

> lsign

and then you can exit gpg with

> quit

confirming to svae changes with

> y

### Way 2: sign

If you trust the key owner to be whom the key says and you have met him/her personally and have seen proof of his/her identify (i.e. passport) or he/she is member of your family or long time friend, you can sign the key with

> sign

making the signature exportable or sendable to keyserver. Now exit gpg with

> quit

saving the changes with

> y

and send the signed key to keyserver with

> gpg2 --send-keys KEYID

Other people will see your signature next time when they receive the key agan or run

> gpg2 --refresh-keys

NOTE: You can upgrade lsigned signature to signed signature with the "sign" command.

#### Trust

Trust determines does gpg trust the key to validate other keys. Trust is only visible to you. You can se trust with

> trust

and then exit gpg with

> quit

saving the changes with

> y

## Signing

### Signing a message

Run

> gpg2 --clearsign

and write your message. When you are ready, add one empty line and press CTRL-D and gpg outputs signed message.

### Signing a plaintext file

Just run

> gpg2 --clearsign file.txt

and the signed content will be found from file.txt.asc

NOTE: .asc is same as .txt and can be opened with normal text editor.

### Verifying signature

#### Clearsigned messages

Just run

> gpg2

and paste the signed content, add one empty line and press CTRL-D.

#### Detached signatures

Run

> gpg2 --verify file.sig

and you are asked for signed file.

## Encrypting

To encrypt a message, just run

> gpg2 --encrypt -a -r receiver (-r receiver...)

If you followed my configuration instructions, you are automatically receiver. Replace "receiver" with KEYID. Write your message, add empty line and press CTRL-D and gpg outputs encrypted content.

### Decrypting

Just run

> gpg2 --decrypt

paste the encrypted content, add empty line and press CTRL-D and gpg outputs, the decrypted content.

## Read also

My Icedove / Thunderbird guide and Enigmail guide.

## License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">GPG guide</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://mkaysi.github.com/articles/guides/GPG/GPG.html" property="cc:attributionName" rel="cc:attributionURL">Mika Suomalainen</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.

## Questions and asnwers

### How do I ask question?

Just email me, the addresses can be found from my GPG key, which has been mentioned on this page some times. Please cleasign your question, so I won't get power to fake it, and please don't use HTML.
