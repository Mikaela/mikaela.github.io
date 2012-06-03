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
