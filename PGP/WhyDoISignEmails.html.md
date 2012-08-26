<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Explaining about why do I sign my emails using PGP." />
<meta name="keywords" content="PGP,email,GPG,spoofing,cacert,inline,PGP/INLINE,PGP/MINE,clearsign,Thunderbird,Icedove,Enigmail," />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/PGP/WhyDoISignEmails.html">
<meta charset="UTF-8" />
<title>Why do I sign emails, which I send?</title>
</head>

# Signing emails.

## Why do you sign all your messages?

The signature is evidence that message comes from me. If I sign all my messages, 
I can say that I sign all my messages and possibly unsigned offensive
content, which is spoofed to "come" from my address, isn't sent by me.

### But it doesn't prove anything, you can just leave offensive content unsigned.

True, I could do that. But I don't have habit of writing offensive text and saying that it doesn't come from me.

## Your signature doesn't mean anything anyway, because you aren't part of any trust web.

Actually, I am, but my key is only signed by bots (see below).

You might have "import-minimal" or "import-clean" in your keyserver-options in your gpg.conf, so you don't see the signatures. If you don't have them, run 

> gpg --keyserver pool.sks-keyservers.net --refresh-keys 0x4DB53CFE82A46728 

and signatures should appear.

*NOTE*: My key contains information, that my preferred keyserver is pool.sks-keyservers.net, so it's used with --refresh-keys with my key even if you speify another keyserver. This isn't the case if you use very old version of my key.

### Why you don't get signatures from some bot certificate authority?

#### [PGP Global Directory]

I have got signature from [PGP Global Directory], it wanted only to confirm my email addresses.

### [CAcert]

According to "Locate assurer" feature at [CAcert], the nearest assurer is
 110KM away from me.

#### Why did you mention [CAcert]?

[https://wiki.cacert.org/PgpSigning](https://wiki.cacert.org/PgpSigning)

[CAcert]:https://cacert.org/

[PGP Global Directory]:https://keyserver.pgp.com/vkd/GetWelcomeScreen.event

# Clearsigning/INLINE signing

## Why do you GPG clearsign your emails instead of using PGP/MIME or something less spammy?

1. Some mailing list software mess up with headers and make PGP/MIME signatures unverifiable at least to Enigmail.
Some people say that that what those mailing lists do is completely valid. It's up to you to believe in Enigmail developers or other people.

    Which mailing lists do that?

    At least the following:

    1. [Ubuntu mailing lists](https://lists.ubuntu.com). See also [bug 996581 at Launchpad](https://bugs.launchpad.net/bugs/996581).

    2. [Mozdev mailing lists](https://www.mozdev.org/mailman/listinfo).

    3. [GnuPG mailing lists](http://lists.gnupg.org/mailman/listinfo/).

2. INLINE messages are easier to verify manually (presuming that charset doesn't cause problems).

    There are many web archives and sometimes people want to verify signatures of emails, which they didn't receive. Think about [Debian BTS].

3. [K9 Mail] doesn't support PGP/MIME.

[K9 Mail]:https://github.com/k9mail/k-9

4. [Debian BTS] doesn't send working PGP/MIME back in subscribtion confirmations.

    In my opinion, it's easier to check did you request something with [Ðebian BTS] if it has content, which is signed with your key.

[Debian BTS]:http://bugs.debian.org/

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
 </html>
