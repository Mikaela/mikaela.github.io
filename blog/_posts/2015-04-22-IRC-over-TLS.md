---
layout: post
comments: true
title: "IRC over TLS is not pointless"
category: [english]
tags: [english, IRC, SSL, TLS]
redirect_from:
  - /irctls/
  - /ircssl/
  - /english/2015/04/22/IRC-over-TLS.html
---

*IRC over TLS is not pointless unless you only worry about things that you
cannot affect at all. SSL is pointless, because of [POODLE].*

I use IRC over TLS on all networks that support it (=other than IRCnet)
and I also [verify the certificates]. TLS is used

*Update on 2015-06-18: I was told that IRCnet does have SSL on
ssl.irc.atw-inter.net and ssl.rfc1459.ca, but server links are mostly
unencrypted. I am not able to use those though as Finnish channels are
mostly stupid and letting people only in from Finnish servers.*

* between my client and bouncer
    * when they both are on localhost it's not used and my bouncer only
      listens for plain text connections only on `127.0.0.1` and `::1`.
* between my bouncer and IRCd

These are the points that I can affect. I cannot do anything to server
links other than hope that the network operators know what they are doing
and use TLS. I cannot affect whether other users use TLS or not or do they
check the certificates or blindly accept whatever they are offered.

As I use TLS everywhere where I can affect, I can be more sure that
my discussions aren't so easily read on:

* open WLAN
* any router between me and the bouncer
* any router between bouncer and the IRC server

And like everyone else says, you cannot be sure on the server links
or other people on the channels or queries. You can only make sure that
**you** are using TLS.

One example where TLS is very helpful even if you have no idea whether
the other people use SSL is passwords:

* your NickServ password isn't in plain text between you and the IRC
  server, but you again cannot know if the IRC server sends it to other
  IRC server(s) in plain text that are between the server where you are
  connected to and services server.
* your /OPER password in case you are IRC operator. Imagine being on
  open WLAN or similar situation and transmitting your password in
  plain text and someone else taking that password. What kind of "fun"
  things they could do with it?

*Now you can move into reading why [IRC over SSL is pointless]...*

[POODLE]:https://en.wikipedia.org/wiki/POODLE
[verify the certificates]:{% post_url blog/2015-02-24-znc160-ssl %}
[IRC over SSL is pointless]:https://www.quakenet.org/articles/99-trust-is-not-transitive-or-why-irc-over-ssl-is-pointless

## Addition: who is interested in my traffic?

* Finland - Security Police & Defence Forces
    * Currently law allowing Security Police and the Defence Forces to do
      network monitoring without limitations is going to pass in the
      parlament.
* Sweden - National Defence Radio Establishment & Security Police & Police
    * Sweden has monitored all traffic going through them since 2008
      and most of Finnish traffic goes through them.
    * 2015-04-23 https://en.wikipedia.org/w/index.php?title=National_Defence_Radio_Establishment&oldid=651267187#Legal_framework
    * 2015-04-23 https://en.wikipedia.org/w/index.php?title=National_Defence_Radio_Establishment&oldid=651267187#Mass_surveillance
    * 2015-04-23 (in Finnish) https://www.hackingthroughcomplexity.fi/2013/10/ruotsin-verkkovalvonta-latakon.html / https://archive.is/iYrsl
* UK - GCHQ
    * Cooperating with Sweden
    * 2015-04-23 https://en.wikipedia.org/w/index.php?title=Government_Communications_Headquarters&oldid=656835589#2000s:_Coping_with_the_Internet
* USA - NSA
    * Cooperating with Sweden
    * 2015-04-23 https://en.wikipedia.org/w/index.php?title=Global_surveillance_disclosures_(2013%E2%80%93present)&oldid=655974095
* Many others? :(
