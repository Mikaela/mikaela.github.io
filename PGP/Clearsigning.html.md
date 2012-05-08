Why do you GPG clearsign your emails instead of using PGP/MIME or something less spammy?
----------------------------------------------------------------------------------------

I am clearsigning my emails instead of using PGP/MIME, because I am on 
multiple mailing lists and most of them use mailing list software, 
which messes up with headers and this way make PGP/MIME signatures 
unverifiable.
    
But clearsigned signature looks ugly.
-------------------------------------
    
I know that clearsigned messages may look ugly to email clients, which
don't support PGP, but they can at least be verified on all mailing lists.

I am on slow connection and your signature is too big for me.
-------------------------------------------------------------

I am sorry for that. But keep in mind that your email client would still
download ther PGP/MIME signature (signature.asc) file even if I used
PGP/MIME.

Which mailing lists do that?
----------------------------

At least the following:

1. [Ubuntu mailing lists](https://lists.ubuntu.com). See also [bug 996581 at Launchpad](https://bugs.launchpad.net/bugs/996581).

2. [Mozdev mailing lists](https://www.mozdev.org/mailman/listinfo).

3. [GnuPG mailing lists](http://lists.gnupg.org/mailman/listinfo/).
