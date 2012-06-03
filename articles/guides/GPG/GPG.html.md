# Quick GPG guide

Note: If gpg2 gives you error about invalid/unknown/etc. command, use gpg instead.

## What do you need:?

### Linux (Debian based distributions)

You need at least package gnupg, but I recommend installing packages
icedove enigmail pinentry pinentry-curses pinentry-gtk2 pinentry-qt4 signing-party and gnupg2.

> # aptitude install gnupg gnupg2 icedove enigmail pinentry-curses pinentry-gtk2 pinentry-qt4 signing-party gnupg2

### Mac OS X

You need at least GPG-tools, but I also recommend you to install Thunderbird and Enigmail.

### Windows

You need at least GPG4Win, but I recommend installing Thunderbird and Enigmail too.

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

or 

> gpg2 --fingerprint

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

WRITE THIS LATER WITH COMPUTER!

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


