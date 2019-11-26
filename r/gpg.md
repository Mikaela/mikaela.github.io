---
layout: null
permalink: /r/gpg.html
redirect_from: /r/gnupg.html
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
is required for multiple PGP keys per account` and to submit changes to it,
`keybase pgp update --all` (where --all is again necessary only if you have
multiple keys).
