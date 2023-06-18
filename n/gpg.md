---
layout: null
permalink: /n/gpg.html
redirect_from:
  - /r/gpg.html
  - /r/gnupg.html
  - /r/clawsmail.html
  - /r/claws-mail.html
  - /r/wkd.html
  - /n/gnupg.html
  - /n/clawsmail.html
  - /n/claws-mail.html
  - /n/wkd.html
  - n/keyoxide.html
  - n/keybase.html

sitemap: false
---

# Quick GPG notes where I may find them

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Claws-mail note that is somewhat related.](#claws-mail-note-that-is-somewhat-related)
- [WKD](#wkd)
- [Keyoxide](#keyoxide)
  - [Keyoxide docs](#keyoxide-docs)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

To create an Ed25519 key, or whatever will be the default version in the
future as defined by your GPG version:

```
gpg2 --quick-gen-key address@domain.example future-default
```

Note the keyid and edit it

```
gpg2 --edit-key KEYID
adduid # here fill your name and details as asked no comments\*
1 # to select the uid the first command generated
deluid # to delete the uid which doesn't contain your name
save
```

\*\* Comments are considered harmful https://debian-administration.org/users/dkg/weblog/97

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

---

## Claws-mail note that is somewhat related.

Debian: `sudo apt install claws-mail claws-mail-address-keeper claws-mail-attach-warner claws-mail-gdata-plugin claws-mail-pgpinline claws-mail-pgpmime claws-mail-smime-plugin`

Load plugins from Configuration (menu) --> Plugins --> Load, they are all
somewhere in `/usr/lib/x86_64-linux-gnu/claws-mail/plugins` or similar path.

It wants to read `~/.signature` which I have like:

```
Aminda Suomalainen
https://aminda.eu/
69FF 455A 869F 9031 A691  E0F1 9939 2F62 BAE3 0723

```

My other hats have like:

```
Aminda Suomalainen
position, where, wwwpage
email address
xxx xxx xxxx
xxxx xxxx xxxx xxxx xxxx  xxxx xxxx xxxx xxxx xxxx

```

Note the empty line in the end, as PGP/INLINE is the way to sign emails,
it the PGP signature comes after it and in my opinion looks a bit cleaner
with the signature ending to an empty line.

---

## WKD

Setting up GPG WKD (Web Key Directory), mostly stripped/adjusted from
https://keyserver.mattrude.com/guides/web-key-directory/

Requires a control over domain/.well-known and email under that domain.

1. cd into site root
2. `mkdir -p .well-known/openpgpkey/hu`
3. `touch .well-known/openpgpkey/policy`
4. `gpg --list-keys --with-wkd <search-that-matches-your-key>`
5. `gpg --no-armor --export <YourKeyID> > .well-known/openpgpkey/hu/<YourWKD>`
6. repeat 5. for `+git` address and similar if applicable
7. in Jekyll `_config.yml` ensure existence of `include: [.well-known]` if
   applicable.
8. deploy
9. test with `gpg -v --auto-key-locate clear,wkd,nodefault --locate-key email@example.net`

NOTE: The empty `policy` goes to the `openpgpkey` directory, not `hu` (I
initially failed at this part)

NOTE: only one key/WKD/email.

---

## Keyoxide

Keyoxide can use PGP keys as profiles and looks at their notations. Useful
commands in `gpg --edit-key "key fingerprint here:

- Display notations: `showpref`
- Add notations: `notation`
- Remove notations: `notation` from `showpref` with a `-` in the beginning

Don't forget to `gpg --keyserver hkps://keys.openpgp.org --send-keys "your keyid here"` !

### Keyoxide docs

- [Generating a profile](https://docs.keyoxide.org/guides/openpgp-profile-gnupg/)
- [Available claims/proofs](https://docs.keyoxide.org/service-providers/)
  - See bottom of the sidebar.
