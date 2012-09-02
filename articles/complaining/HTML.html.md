<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Complaining about using HTML in emails" />
<meta name="keywords" content="HTML,text,txt,plain,email" />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/articles/complaining/HTML.html">
<title>HTML in emails is annoying</title>
</head>


Using HTML in emails.
=====================

Emails which are written with HTML are annoying.

Why are they annoying?
----------------------

1. They look bad with some clients with plaintext inlines (at least on [Icedove and Thunderbird](https://mozilla.org/thunderbird/)).

2. They add empty lines to emails. Have you ever tried looking at source of one?

3. They can include very annoying formatting.

 Do you like reading email which is for example, all in bold, cursive and with some notice attracting colour, like red?
 And what if it's even written with some very annoying font?

4. They don't show correctly in some emails clients.

5. At least guidelines of [Debian mailing lists](http://www.debian.org/MailingLists/#codeofconduct), [Ubuntu mailing lists](http://www.ubuntu.com/support/community/mailinglists) and [Linux Kernel Developer mailing lists](http://vger.kernel.org/majordomo-info.html) forbid writing emails in HTML. Hopefully others do to, at least they should.

6. PGP/INLINE signed or encrypted blocks get invalid, when HTML adds spaces to them. This seems to be very popular issue (probably, because K9 mail has interesting default settings of sending HTML and topposting...)

My email client cannot write messages in plaintext!
---------------------------------------------------

Are you sure? [Debian wiki](https://wiki.debian.org/DebianMailingLists#HowTo_send_plain_text_emails_to_the_list) has instructions how to write plain text with many clients.

But I use webmail, I cannot send plaintext!
-------------------------------------------

Are you sure? [Debian wiki, which was mentioned eaerier](https://wiki.debian.org/DebianMailingLists#HowTo_send_plain_text_emails_to_the_list) also includes instructions for many webmails about writing in plaintext.

<div id="clustrmaps-widget"></div><script type="text/javascript">var _clustrmaps = {'url' : 'http://mkaysi.github.com/', 'user' : 1040881, 'server' : '4', 'id' : 'clustrmaps-widget', 'version' : 1, 'date' : '2012-09-02', 'lang' : 'en', 'corners' : 'square' };(function (){ var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = 'http://www4.clustrmaps.com/counter/map.js'; var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);})();</script><noscript><a href="http://www4.clustrmaps.com/user/bd3fe1f1"><img src="http://www4.clustrmaps.com/stats/maps-no_clusters/mkaysi.github.com--thumb.jpg" alt="Locations of visitors to this page" /></a></noscript>

</HTML>
