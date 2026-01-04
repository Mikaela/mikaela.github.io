---
title: Internetin puhelinluettelon (DNS) suojaaminen mobiililaitteilla
excerpt:
  DNS kertoo mistä ihmisen muistettavissa oleva verkkotunnus löytyy, mutta
  mikään ei estä monsteria välissä ohjaamasta väärään paikkaan ellei sitä
  suojata.
layout: mini
permalink: /n/yksityinendns.html
redirect_from:
  - /n/dns2.html
sitemap: true
lang: fi
robots: noai
---

_{{ page.excerpt }}_

# Internetin puhelinluettelo, DNS

Yleensä WLAN-tukiasema kertoo käytetyn DNS-palvelimen, mutta voiko siihen
luottaa? Se voi olla internet-palveluntarjoajan nimipalvelin, tai haittaohjelman
määrittämä nimipalvelin, ellei jopa lähistöllä olevan hyökkääjän hallitsema
palvelin.

Nimipalvelimella on tärkeä rooli. Kaikkien tulisi esimerkiksi muistaa
verkkotunnus `suomi.fi`, joka kirjoitushetkellä ohjaa IPv4-osoitteisiin
`99.83.234.170` ja `75.2.107.96`, joita kukaan ei ala muistamaan ja miksi
tarvitsisikaan, kun nimipalvelin tekee sen.

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Nimipalvelin ehdotuksia](#nimipalvelin-ehdotuksia)
- [Android](#android)
  - [Ehdottamieni nimipalvelimien osoitteita](#ehdottamieni-nimipalvelimien-osoitteita)
  - [Verkko ei ole yhteydessä internetiin](#verkko-ei-ole-yhteydess%C3%A4-internetiin)
- [Apple](#apple)
  - [Apple-asetusprofiileja](#apple-asetusprofiileja)
- [Tietokoneet](#tietokoneet)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Nimipalvelin ehdotuksia

- [AdGuard](https://adguard-dns.io/fi/public-dns.html)
  - Kyproslainen DNS-palvelintarjoaja mainoksenestolla. Palvelimia ympäri
    maailmaa.
  - [Yksityinen ECS](https://adguard-dns.io/en/blog/privacy-friendly-edns-client-subnet.html),
    jonka vuoksi usein päädyn siihen, mutta käytän kaikkia tällä sivulla
    mainitsemiani ristiin etenkin tietokoneella.
- [DNS4EU](https://www.joindns4.eu/)
  - Euroopan Unionin rahoittama DNS-palvelu. Tarjoaa mm. haitallisten sivujen
    suodatusta, aikuissivustojen suodatusta, sekä mainostenestoa. Palvelimet
    sijaitsevan Euroopan Unionin jäsenvaltioissa.
- [Quad9](https://quad9.net/)
  - Sveitsiläinen voittoa tavoittelematon DNS-palvelu haitallisten sivujen
    suodatuksella. Palvelimia ympäri maailmaa, mukaan lukien Helsingissä ja
    Tampereella. Yhteistyössä mm. F-Secure.

## Android

_Mikäli puhelimessasi/tabletissasi ei ole omenan kuvaa tai et tiedä mikä
käyttöjärjestelmä siinä on, kyseessä on todennäköisesti Android._

Android on tukenut suojattua DNSää nimellä _Yksityinen DNS_ alkaen 9.
julkaisustaan (elokuussa 2018 - tammikuuhun 2022) suoraan laitteen asetuksista.

1. Avaa `Asetukset`
1. `Verkko ja internet`
1. `Yksityinen DNS`. Laitteesta riippuen tässä valikossa voi myös olla
   `Lisää verkkoasetuksia` tms., josta painaminen tuo asetuksen `Yksityinen DNS`
   näkyville. Molempien pitäisi olla valikon loppupuolella, ellei jopa viimeinen
   asetus.
1. Valitse `Yksityisen DNS-tarjoajan isäntänimi` ja kirjoita haluamasi
   palvelimen osoite (ks. seuraavan alaotsikon alta) ja paina `Tallenna`.

### Ehdottamieni nimipalvelimien osoitteita

Linkitin aiemmin näiden palveluntarjoajien kotisivuille, joista nämä tiedot
löytyvät, mutta selkeyden vuoksi Android-käyttäjille:

- `dns.adguard-dns.com` - AdGuard mainostenestolla.
- `family.adguard-dns.com` - AdGuard mainosten- ja aikuisviihdesivustojen
  estolla.
- `noads.joindns4.eu` - DNS4EU mainostenestolla.
- `child-noads.joindns4.eu` - DNS4EU mainosten- ja aikuisviihdesivustojen
  estolla.
- `protective.joindns4.eu` - DNS4EU vain haitallisten sivustojen estolla.
- `child.joindns4.eu` - DNS4EU haitallisten sivustojen ja
  aikuisviihdepalveluiden estolla.
- `dns.quad9.net` - Quad9 haitallisten sivustojen suodatuksella.
- `dns11.quad9.net` - Quad9 haitallisten sivustojen suodatuksella, sekä
  ECS-tuella.
  - ECS kertoo kaikille nimipalvelimille IP-osoitteesi alun ja on
    yksityisyysuhka. Toisaalta suurimmat verkkopalvelut, kuten Netflix, YouTube
    ja Meta voivat toimia nopeammin.

Tietoturva-asiantuntijana en voi mainita osoitteita, jotka eivät sisällä
haittaohjelmasuojatusta.

### Verkko ei ole yhteydessä internetiin

> Ei pääsyä yksityiselle DNS-palvelimelle

Useimmiten tämä virheilmoitus ilmestyy käytetyn WLAN-tukiaseman palomuurin
estäessä liikenteen TCP-porttiin 853, jota yksityinen DNS (teknisesti
DNS-over-TLS käyttää), etenkin julkisissa verkoissa, kuten terveysasemalla,
kirjastossa, metrossa, joissa yksityisen DNS:n käyttäminen olisi erittäin
tärkeää.

Paras ratkaisu olisi olla yhteydessä verkon ylläpitoon tai tekniseen tukeen ja
vinkata heille miten portti 853 voisi olla hyvä sallia, linkittää heille
valitsemasi DNS-palvelintarjoaja tai ehkä jopa tämä sivu.

Olisiko mahdollista olla käyttämättä kyseistä WiFi-verkkoa ja sen sijaan käyttää
vain mobiilidataa (vaikkakin se ei ole yhtä energiatehokasta)?

Mikäli WiFi-verkon käyttäminen painaa vaakakupissa enemmän kuin tietoturva ja
haitalliset sivustot eivät ole huoli, jäljelle jää yksityisen DNS:n
käytöstäpoistaminen:

- `Asetukset` -> `Verkko ja internet` -> (ehkä lisäasetukset tms. pohjalla ->)
  `Yksityinen DNS` -> `Automaattinen`

Muista verkosta poistaessasi käydä valitsemassa
`yksityisen DNS-tarjoajan isäntänimi` takaisin!

Mitä automaattinen tarkoittaa? Android yrittää yhdistää tukiaseman määrittämään
palvelimeen suojattua yhteyttä. Se onnistuu jos onnistuu, ja jos se epäonnistuu,
käytetään suojaamatonta yhteyttä. Android ei myöskään tarkista SSL-varmennetta,
joten ilman todella hyvää tuuria tämä ei lisää tietoturvaa yhtään, se vain on
Androidin oletusasetus ja ehkä pienempi paha, kuin `Ei käytössä`.

## Apple

_iOS, TvOS, iPadOS, macOS, yms._

Applen laitteilla yksityisen DNS:n määrittäminen on tavallaan helpompaa,
tavallaan vaikeampaa, verrattuna Androidiin.

1. Avaa `Safari` -verkkoselain. Muut voivat toimia tai olla toimimatta.
1. Mene haluamasi DNS-palveluntarjoajan sivustolle ja lataa asetusprofiili.
1. Avaa `Asetukset` ja seuraa ohjeita.

Löydät asentamasi DNS-pavelimet seuraavasti.

1. Avaa `Asetukset`
1. `Yleiset`
1. `VPN ja laitehallinta`
1. `DNS`. Valitse jokin muu kuin `Automaattinen`.

### Apple-asetusprofiileja

`aminda.eu/n/yksityinendns` on tämän sivun osoite Apple-laitteella avattavaksi,
ellet lue tätä sivua sellaisella.

- [AdGuard](https://adguard-dns.io/fi/public-dns.html)
  - Valitse `Vaihtoehto 2: Määritä AdGuard DNS manuaalisesti`, `iOS` ja paina
    `Lataa määritysprofiili`.
- [DNS4EU](https://github.com/whalebone/DNS4EU-Public/tree/main/iOS/DoH)
  - En itsekään ymmärrä miten tämän on tarkoitus toimia käytännössä, joten
    suosittelen Apple-laitteiden käyttäjille jompaa kumpaa muuta
    palveluntarjoajaa.
- [Quad9](https://docs.quad9.net/Setup_Guides/iOS/iOS_14_and_later_%28Encrypted%29/#download-profile)
  - Valitse `Recommended: HTTPS(.9)` tai `HTTPS(.11)` jos haluat ECS-tuen. Quad9
    on parhaat ohjeet, mutta valitettavasti vain englanniksi.
- Epävirallisia asetusprofiileja (englanniksi):
  [encrypted-dns.party](https://encrypted-dns.party/)
  - Tämän takana on [nitrohorse](https://gitlab.com/nitrohorse), jonka kanssa
    työskentelin samanaikaisesti
    [PrivacyGuides.org](https://privacyguides.org) -[projektissa](https://github.com/privacyguides/privacyguides.org/graphs/contributors).

Apple tukee molempia, DNS-over-HTTPS:ää ja DNS-over-TLS:ää, joista aiempi toimii
käytännössä kaikkialla, toisin kuin Androidin DNS-over-TLS ("Yksityinen DNS"),
joten Apple ei tarvitse tarkempaa ongelmanratkaisu-ohjetta minun puoleltani.

## Tietokoneet

Tämän sivun aihe on nimenomaan puhelimet ja tabletit. Mikäli kirjoittaisin
tietokoneista, tämä sivu monimutkaistuisi ja pitenisi moninkertaisesti. Tästä
syystä osoitan vain oikeaan suuntaan.

- Apple macOS: ks. Apple ylempäntä.
- Linux: suosittelen tutustumaan Unboundiin
  ([esimerkki](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/unbound/unbound.conf.d)),
  mutta systemd-resolved tukee myös DNS-over-TLS:ää
  ([esimerkki](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/etc/systemd/resolved.conf.d)).
- Windows 11: aseta DNS-palvelimen osoite käsin. IP-osoitteita vastaavat
  DoH-palvelimet on määritetty rekisterissä
  `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters\DohWellKnownServers\<IP-osoite>`
  ([esimerkki](https://codeberg.org/Aminda/shell-things/src/branch/cxefa/Windows/DoH/DohWellKnownServers.reg)).
