# Signing emails.

## Why do you sign all your messages?

The signature is evidence that message comes from me. If I sign all my messages, 
I can say that I sign all my messages and possibly unsigned offensive
content, which is spoofed to "come" from my address, isn't sent by me.

### But it doesn't prove anything, you can just leave offensive content unsigned.

True, I could do that. But I don't have habit of writing offensive text and saying that it doesn't come from me.

## Your signature doesn't mean anything anyway, because you aren't part of any trust web.

1. Some people at IRC lsign keys of each other, so I am in somekind of trustweb.

2. The signature can still prove that the email hasn't been modified after sending.

3. This can change in the future. My key doesn't have any signatures right now, because anyone else near here doesn't use PGP.

### Why you don't get signatures using [CAcert]?

According to "Locate assurer" feature at [CAcert], the nearest assurer is
 110KM away from me.

#### Why did you mention [CAcert]?

[https://wiki.cacert.org/PgpSigning](https://wiki.cacert.org/PgpSigning)

[CAcert]:https://cacert.org/

# Clearsigning/INLINE signing

## Why do you GPG clearsign your emails instead of using PGP/MIME or something less spammy?

1. Some mailing list software mess up with headers and make PGP/MIME signatures unverifiable.

    Which mailing lists do that?

    At least the following:

    1. [Ubuntu mailing lists](https://lists.ubuntu.com). See also [bug 996581 at Launchpad](https://bugs.launchpad.net/bugs/996581).

    2. [Mozdev mailing lists](https://www.mozdev.org/mailman/listinfo).

    3. [GnuPG mailing lists](http://lists.gnupg.org/mailman/listinfo/).

2. INLINE messages are easier to verify manually (presuming that charset doesn't cause problems).

3. [K9 Mail] doesn't support PGP/MIME.

[K9 Mail]:https://github.com/k9mail/k-9


## But clearsigned signature looks ugly.
    
This is the problem of your email client. If you use [Thunderbird or Icedove or Seamonkey],
you can probably install [Enigmail] and that signature block gets hidden.
If you use some other email client, please report bug for that package in 
your distribution or upstream bug tracker.

[Thunderbird or Icedove or Seamonkey]:https://mozilla.org/thunderbird
[Enigmail]:http://enigmail.mozdev.org/home/index.php.html

## I am on slow connection and your signature is too big for me.

And what does that have to do with INLINE signature? In PGP/MIME you would
 download the same mess, but inside signature.asc file.

# Other things

## Why did you write this page?

Because I am fed up explaining myself on some mailing lists. This page will
 be linked in my email signature and I will ignore every question about things,
 which read on this page.

## So you are just ignorant and want to spam people?

I want to raise awareness about PGP and that it's very easy to spoof emails
 from addresses of other people. As stated previously, I will also ignore 
 claims like that.
