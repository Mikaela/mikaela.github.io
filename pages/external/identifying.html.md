<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Instructions for identifying to services on various IRC networks." />
<meta name="author" content="Mikaela Suomalainen" />
<link rel="canonical" href="https://mkaysi.github.io/pages/external/identifying.html">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css.css" />
</head>
<body>

**NOTE: This might be heavily freenode-specific, but these things should 
work with other networks too, at least SASL and CertFP.**

I will document the four different methods to identify to services which I 
use by myself.

## SASL

There isn't much to say about SASL as it's easy to configure as long as 
your IRC client supports it. SASL identifies you before logging in, but it 
won't help you in case services are down. The easiest way to check does 
the network where you are support SASL is probably to whois or message or 
both to the SaslServ.

```
/whois SaslServ SaslServ
/msg SaslServ help
```

If the network does support SASL, you should see something like this 
which freenode gives:

```
XX:XX:XX -- [SaslServ] (SaslServ@services.): SASL Authentication Agent
XX:XX:XX -- [SaslServ] services. (Atheme IRC Services)
XX:XX:XX -- [SaslServ] is a Network Service
XX:XX:XX -- [saslserv] End of WHOIS
XX:XX:XX -- SaslServ: This service exists to identify connecting clients to the network. It has no public interface.
```

There are different mechanisms for use with SASL. I personally use them in 
this order with ZNC: `PLAIN DH-AES DH-BLOWFISH and EXTERNAL`.

This is what ZNC 1.5-git-3b01efc says about them:

```
XX:XX:XX < *sasl> +-------------+----------------------------------------------------+
XX:XX:XX < *sasl> | Mechanism   | Description                                        |
XX:XX:XX < *sasl> +-------------+----------------------------------------------------+
XX:XX:XX < *sasl> | EXTERNAL    | TLS certificate, for use with the *cert module     |
XX:XX:XX < *sasl> | DH-BLOWFISH | Secure negotiation using the DH-BLOWFISH mechanism |
XX:XX:XX < *sasl> | DH-AES      | More secure negotiation using the DH-AES mechanism |
XX:XX:XX < *sasl> | PLAIN       | Plain text negotiation                             |
XX:XX:XX < *sasl> +-------------+----------------------------------------------------+
```

Some notes:

* PLAIN is plain text as it says, so if you use it like I do, you should 
use SSL.
* EXTERNAL is supposed to be used together with CertFP, but it doesn't 
work with most of networks.
    * It's not supported even by freenode.
    * I don't know any network that supports it.

## CertFP

## Server password

## Automatic command


For corrections above this line, please contact [me at IRC](../irc.html) or fix them by 
yourself [here](https://github.com/Mkaysi/mkaysi.github.io/blob/master/pages/external/identifying.html.md). What is below that line is embedded GitHub 
gist which reads where to contact with issues with it.
<hr/>
<script src="https://gist.github.com/maxanton/1e2cf7ada079c271bd3c.js"></script>
</body>
</html>
<!-- vim : set ft=markdown-->
