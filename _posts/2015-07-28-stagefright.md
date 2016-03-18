---
layout: post
comments: true
title: "Stagefright rajoitusmahdollisuudet"
category: [finnish]
tags: [finnish, ficora, android]
---

*Stagefright on haavoittuvuus Androidissa, jolla haittakoodia voi ajaa
 etänä. Lue lisää [Viestintävirasto Haavoittuvuus 067/2015](https://www.viestintavirasto.fi/kyberturvallisuus/haavoittuvuudet/2015/haavoittuvuus-2015-067.html)*

Valitin aluksi [Facebook-seinälläni] Viestintäviraston unohtaneen kertoa,
kuinka rajoittaminen tapahtuu käytännössä ja myöhemmin minulle selvisi
asia tarkemmin ja se olisi mahdollisesti ollut järkevämpää kirjoittaa
tänne suoraan.

[Facebook-seinälläni]:https://www.facebook.com/mikaelahmsuomalainen/posts/864710153623799

Tähän on kaksi minun tuntemaani tapaa

## Automaattinoudon poistaminen käytöstä

1. Avaa `Viestitys`
2. Paina kolmen päällekkäisen pisteen kuvaa ja valitse Asetukset.
2. Mene valikkoon Multimediaviesti ja poista rasti ruudusta
   "Automaattinouto".

## MMS APN-osoitteen poistaminen

Freenodessa kanavalla [#vapaakoodi](/r/irc-vapaakoodi.html) mentiin
pidemmälle ja poistettiin koko multimediaviestien APN-osoite.

**VAROITUS: Et tämän jälkeen voi vastaanottaa multimediaviestejä ellet
määritä APN-osoitetta uudelleen.**

1. Avaa Asetukset.
2. Verkot välilehdellä valitse "Jakaminen & Verkkoyhteydet".
3. Valitse "Matkapuhelinverkot"
3. Valitse "Tukipisteiden nimet".
4. Valitse operaattorinnimi MMS tai vastaava
5. Paina kolmen päällekkäisen pisteen kuvaa ja valitse Poista APN.

Samasta paikasta löytyy myös toinen kiinnostava asetus internet-yhteyden
käyttöön liittyvästä APN:stä, APN-Protokolla, jolla voidaan ottaa IPv6
käyttöön. Se pitäisi olla IPv4/IPv6 ja asetuksen vaihtamisen jälkeen
mobiilidata tulee katkaista ja ottaa uudelleen käyttöön. Lisätietoja:

* [Elisan IPv6-ohjeet](http://elisa.fi/ipv6)
* [DNA:n IPv6-laiteohjeet](http://dna.fi/ipv6-laitteet)

* * * * *

Nämä valikot on tarkistettu pikkuveljeni puhelimella.

* Malli: LGE Spirit LTE
* Android: 5.0.1
* Operaattori: Tele Finland
    * Internet APN: "Sonera"
        * APN-osoite: `internet`
    * MMS APN: "Sonera MMS"
        * APN-osoite `wap.sonera.fi`

*Tele Finland ja Sonera eivät muuten vieläkään ole saaneet IPv6:tta
käyttöön ja ovat ainoat opraattorit Suomessa ilman sitä. Verkko toimii
kuitenkin normaalisti, vaikka APN-protokollan vaihtaisi valmiiksi,
IPv4/IPv6:ksi, koska jos se ei ole tuettu, puhelin yrittää APN-protokollaa
IPv4.*

 Pikkuveljen puhelimessa APN:t ovat "Sonera" (käytetään internetiin APN-osoitteella "internet") ja Sonera MMS (multimediaviestit, APN wap.sonera.net 
 ). Puhelin on LG Sprit LTE Android-versiolla 5.0.1. Operaattori taas on Tele Finland, joka ei ymmärtääkseni vieläkään ole saanut itselleen IPv6:tta toimintaan ja sama pätee kai Soneraan.
