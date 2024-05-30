---
layout: post
title: "Leaving Privacy Guides team"
category: [english]
tags: [privacyguides]
lang: en
---

_PrivacyGuides.org was supposed to be the continuation of PrivacyTools.io
based on transparency/openess, actually reviewing recommendations and having
at least two reviews by team members before un/recommending anything. That
is no longer the case._

Between 2021-11-12 and 2021-11-20 I had a friend visiting me physically so
I was less available online. During that time, on 2021-11-18 9.30 UTC+2
a pull request was force-merged by a team member listing three new projects
and removing two.

- [privacyguides/privacyguides.org#274](https://github.com/privacyguides/privacyguides.org/pull/274)

This was mentioned in the team room and reviews were asked during one hour
period before the force-merge, but no one was online to review before it was
already merged. I didn't realize what had happened, until another PR came in
on 2021-11-21.

I believe this change violates what Privacy Guides stands for and as no one
has any interest making an announcement (this may be the first one) or
reverting the pull request until proper process, I consider that the team
has no purpose and isn't needed for reviewing anything as opinions of an
individual can be force-pushed through like that.

This has brought me enough anxiety and stress to distract me from other
aspects of my life and I consider my departure to be healthy in general.

The way things appear to be going is that there will be a change of criteria
that will then justify the change. To me this is just the other side of the
coin from changing a law to ban something and then punishing people for it
and not the way a transparent project should work.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Previous leaving](#previous-leaving)
- [Other issues](#other-issues)
  - [Cleanup older solutions now, instruct on new ones later](#cleanup-older-solutions-now-instruct-on-new-ones-later)
  - [Community communication](#community-communication)
  - [Privacy, is it one size fits all, what can be sacrificed for it?](#privacy-is-it-one-size-fits-all-what-can-be-sacrificed-for-it)
  - [Real time communication platforms](#real-time-communication-platforms)
- [What now](#what-now)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Previous leaving

I previously left Privacy Guides team, then known as Privacy Tools due to
there having been an issue I viewed as conflict of interest, someone in the
then-team being offered work or gig by a software/service that was willing to
be listed, which the rest of the team didn't consider as one or worth mentioning,
but you can find more information about that online.

Maybe I am just incapable of working in teams that claim to be something
they are not, while I personally aspire to stand for my values and be openly
and honestly myself.

## Other issues

### Cleanup older solutions now, instruct on new ones later

Like everything else in tech, privacy field changes fast and it can be hard
to keep up. Privacy Guides appear to have adapted a policy to get rid of old
recommendations such as HTTPS Everywhere as soon as possible.

HTTPS Everywhere is deprecated and going away as web browsers are rapidly
gaining an option for enforcing HTTPS connections everywhere. However it is
not enabled by default in most of web browsers and Privacy Guides has delisted
the extension without instructions on how to enable the HTTPS-only mode.

In my opinion the issue is even worse when considering that the option doesn't
even sync in some web browsers such as Microsoft Edge.

Counter-argument: Microsoft Edge is not private browser, use \<whatever Privacy Guides recommends\>.

I hope that helps tech/privacy support people using Privacy Guides as material,
less techy people may have difficulties even installing extensions.

### Community communication

I haven't been in the Matrix rooms of Privacy Guides in a long time outside
of the team, as I find them very draining. I think I have an issue with how
multiple people communicate and there are ongoing discussions on improving the
Code of Conduct.

### Privacy, is it one size fits all, what can be sacrificed for it?

As may be clear from this writing, I have multiple values and while privacy
is one of them, I don't consider privacy to be above everything else. For
example I care about climate change and diversity of the internet.

I get the impression that Privacy Guides is going towards a direction where, to
exaggregate a bit, only VPN providers and internet giants alongside big enough
organizations exist. And by VPN, I don't mean a service that connects two
networks together letting you access private network resources, I mean a service
that everyone in ICT field appears to tell you to get to be private and secure
online, commonly without explaining why you need one, or which one, which
results into a risk of getting one that may be a bit shady or paying it's
way into rankings (Privacy Guides doesn't take money to my knowledge, but who
can know if force-merges will make that the norm in the future).

I disagree and wish to see a connected world where anyone can host a server
even at their home or even host on P2P networks without caring about NAT or
port-forwarding, while that goes to firewalls versus NAT territory and brings
in the dark side of Internet of Things which likely call home, don't interoperate
with each other, and never get updates or may just stop working should the
manufacturer go out of business, but that would be something for another blog post.

I argue that today enforcing HTTPS everywhere and encrypting DNS is enough
for majority of people and in case of family tech-administrators can go
a long way in upkeeping security in form of malicious domain filtering without
drawbacks of VPNs (increased latencies, captchas, connectivity problems in
poor network connections).

- _Before following any of this, please see [Quad9 privacy policy](https://quad9.net/service/privacy/) and decide whether it suits for you_
  - DoT vs Private DNS vs DoH? (Private DNS is) DoT which actually cares about diverse internet, has less bloat on it
    and due to separate port is likely choice of your network admin. However **_DoH actually works everywhere_**
    due to using the same port, so as someone who just wants to use the internet, it should be preferred.
    If you are implementing encrypted DNS somewhere, I would request support
    for both for the [DoT opportunistic mode which should be default](https://datatracker.ietf.org/doc/html/rfc8310#section-5).
- Android9+: Settings -> Advanced -> Private DNS: `dns.quad9.net`
- Apple: [encrypted-dns.party](https://encrypted-dns.party/)
- SailfishOS: [feature request](https://forum.sailfishos.org/t/support-doh-for-sailfish/3616?u=mikaela)
- Linux: [systemd-resolved on Arch Wiki](https://wiki.archlinux.org/title/Systemd-resolved#DNS_over_TLS) [Actually secure DNS over TLS in Unbound on ctrl.blog](https://www.ctrl.blog/entry/unbound-tls-forwarding.html)
- Windows 11: [proper method](https://docs.microsoft.com/windows-server/networking/dns/doh-client-support) or (read first: [Microsoft: Windows registry for advanced users](https://docs.microsoft.com/troubleshoot/windows-server/performance/windows-registry-advanced-users)) [improper method that only experienced users if even them should use](https://gitea.blesmrt.net/mikaela/shell-things/src/branch/master/Windows/DoH/DohWellKnownServers.reg) and in any case network settings

Counter-argument: encrypted DNS doesn't encrypt the IP address you are connecting
to which often maps back to the plaintext domain, and SNI is still visible so
the sites you visit are still visible.

Counter-counter-argument: do people around you really care if the ISP and
encrypted DNS provider know they are visiting sites like `facebook.com` and
`youtube.com` as they still cannot see what you are doing there?

In case encrypting what is being done on sites (https) and encrypting DNS
(to protect from DNS hijacking) is not enough, I would advice using [Tor](https://torproject.org/) instead
and becoming familiar with their website.

What if the WiFi-AP/ISP/VPN/encrypted-DNS server is lying whether intentionally or not? DNSSEC
and certificate authorities. Also out of scope for this post, but if your
interest is piqued, please do use your favourite search engine to learn more,
I already wrote too much about encrypted DNS...

### Real time communication platforms

If you look into Privacy Guides instant messaging platforms, at the time
of writing it will suggest you to use Element. That means nothing,
[there are three different apps called as Element on three different platforms, the only thing in common is the name and if you are looking for privacy, you should look into it deeper or look entirely elsewhere, but that is my previous blog post]({% post_url blog/2021-08-03-matrix-perfect-privacy-not %}). TL;DR is that (at the time of writing)
your room specific display names may leak and media files are never actually
removed. If that is fine for you, great. If your issue is just with
room specific display names, I would suggest a Matrix client that allows
using multiple different accounts such as [FluffyChat](https://fluffychat.im/) (note:
I am a contributor).

Privacy Guides not warning about Matrix may be partially my fault
as [I was the team member mainly warning about it and assigned the issue to myself](https://github.com/privacyguides/privacyguides.org/issues/50) though.

XMPP? Privacy Guides doesn't mention it, because there is no single app
to recommend across all platforms (and I am grateful about that
as opposed to Element not being Element not being Element) and the protocol
doesn't enforce end-to-end encryption. I am not sure if being under control
of the server admin counts as Matrix also allows server admin to perform takeover
and other hostilities. [Compatibility suites?](https://xmpp.org/about/myths/#everybody-implements-different-incompatible-extensions),
they don't care.

Speaking of end-to-end encryption, another rejected solution especially for
teams is IRC, especially [Ergo](https://ergo.chat/) (which I am going
to blog in the future about) as end-to-end encryption
isn't useful in public channels, it can easily be used in internal network
(maybe accessed by not-misnomer-VPN I wrote about above) or ran in public
allowing Tor access without requiring registration, at the time neither Slack
or Discord provides end-to-end encryption and neither Slack or Element provides
guest access to my knowledge. (The toggle in room settings? It was removed
accidentally without never getting reimplemented).

Anyway, there may be a time and place for every communication platform,
personally I perform a lot of mix-and-matching as that is what people I
actually do want to communicate with do, I haven't been able to talk my
family from WhatsApp by <s>FACEBOOK</s> Meta (I actually tried to leave
it pre-pandemic and thus lost access to many people and peer support groups),
I have several Signal contacts, Matrix and IRC are in my daily use and I
don't see XMPP going away any time soon either.

## What now

I hope leaving Privacy Guides will leave me more time to do things that matter
to me and my hobbies and other things taking time. For example, I am at work
try-out practice, seeking for employment and I have recently agreed to contribute
into [FluffyChat's](https://fluffychat.im/) Finnish translations (while I feel
a bit guilty about the state of Finnish translations in KISS Launcher and Onion Share
that I haven't looked into in ages). Language learning also takes a lot of time
and stubborness to not give up. And then there is this website where I currently
have 49 issues/ideas open (26 of them labeled as blog)

Obligatory: should I be believed on this over Privacy Guides? Neither
should be believed in, take everything with a grain of salt, use your
favourite search engine and reach your own answers. Do also check whether
there is money involved, does the service/app have affiliate programme? I think
a lot of what I am saying is my opinions and privacy sites reflect opinions
of their writers, so I wish you good luck trying to find any absolute fact
that works in every situation should you attempt that venture.

See also [Media literacy on Wikipedia](https://en.wikipedia.org/wiki/Media_literacy).
