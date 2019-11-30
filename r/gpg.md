---
layout: null
permalink: /r/gpg.html
redirect_from:
  - /r/gnupg.html
  - /r/clawsmail.html
  - /r/claws-mail.html
sitemap: false
---

Quick GPG note where I may find it.

To create an Ed25519 key, or whatever will be the default version in the
future as defined by your GPG version:

```
gpg --quick-gen-key address@domain.example future-default
```

Note the keyid and edit it

```
gpg --edit-key KEYID
adduid # here fill your name and details as asked
1 # to select the uid the first command generated
deluid # to delete the uid which doesn't contain your name
save
```

Then you are ready to publish the public key however you generally publish
it, preferably in multiple places from where some recognise revokation
certificates if the time ever comes.

NOTE: You can extend the expiry time of an expired gpg signature by issuing
the `expire` command in `--edit-key` and the key is valid again when the
update is reimported to gpg keyrings by other people.

Keybase note: To publish the key `keybase pgp select --multi` (where multi
is required for multiple PGP keys per account and to submit changes to it,
`keybase pgp update --all` (where --all is again necessary only if you have
multiple keys).

* * * * *

Claws-mail note that is somewhat related.

Debian: `sudo apt install claws-mail claws-mail-address-keeper claws-mail-attach-warner claws-mail-gdata-plugin claws-mail-pgpinline claws-mail-pgpmime claws-mail-smime-plugin`

Load plugins from Configuration (menu) --> Plugins --> Load, they are all
somewhere in `/usr/lib/x86_64-linux-gnu/claws-mail/plugins` or similar path.

It wants to read `~/.signature` which I have like:

```
Mikaela Suomalainen
https://mikaela.info/
69FF 455A 869F 9031 A691  E0F1 9939 2F62 BAE3 0723

```

My other hats have like:

```
other hat, please fill this

```

Note the empty line in the end, as PGP/INLINE is the way to sign emails,
it the PGP signature comes after it and in my opinion looks a bit cleaner
with the signature ending to an empty line.

* * * * *
