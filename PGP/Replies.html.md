<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Tells what should be removed from PGP/INLINE signed emails when replying in case email client doesn't do it." />
<meta name="keywords" content="email,PGP,inline,PGP/INLINE,Enigmail,Thunderbird,Icedove,reply" />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/PGP/Replies.html">
<meta charset="UTF-8" />
<title>What to remove in replies to PGP/INLINE signed emails.</title>
</head>

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

</html>
