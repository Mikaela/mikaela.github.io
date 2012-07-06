# What you should remove from email, when you reply into PGP/INLINE signed email.

## Top

From top of the email, remove everything after 

> -----BEGIN PGP SIGNED MESSAGE-----

untill the first line change.

For example:

```
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,
```

You would remove

```
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1
```

so the message would be

> Hi,

# Bottom

Remove everything between lines

> -----BEGIN PGP SIGNATURE-----

and

> -----END PGP SIGNATURE-----
