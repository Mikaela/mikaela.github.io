<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Instructions for identifying to services on various IRC networks." />
<meta name="author" content="Mikaela Suomalainen" />
<link rel="canonical" href="https://mkaysi.github.io/pages/external/identifying.html">
<title>How to identify to services automatically</title>
<link rel="stylesheet" type="text/css" href="../../css.css" />
</head>
<body>

**NOTE: This might be heavily freenode-specific, but these things should 
work with other networks too, at least SASL and CertFP.**

I will document the four different methods to identify to services which I 
use by myself. **I use all of these at the same time.**

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
* This won't help you if services go down.

## CertFP

CertFP identifies you using SSL certificate which you must generate and 
add to your NickServ account.

You can use this command at IRC to check if the network supports certfp.

```
/msg NickServ help cert
```

I am not sure how this happens on Windows, so you might need to look for 
that information elsewhere unless someone decides to help me and tell 
how does it happen. I am going to tell about OpenSSL.

### Generating the certificate

Open terminal and run this command and replae YOURNICKNAMEHERE.pem with 
your nickname or something else which makes you know what it is 
(**DO NOT SET PASSWORD FOR IT OR YOUR CLIENT MIGHT NOT BE ABLE TO USE IT**):

```
openssl req -nodes -newkey rsa:4096 -keyout YOURNICKNAMEHERE.pem -x509 -days 24855 -out YOURNICKNAMEHERE.pem -subj "/CN=Your Nickname"
```

This gives us file `YOURNICKNAMEHERE.pem` which you must give to your IRC 
client. 

**NOTE: This certificate is valid for 24855 days which is the maximum on 
32-bit systems. This might not be very wise, but as we only use this cert 
in IRC and we don't want to worry about regenerating it too often so we 
have a very long time when it's valid. You should regenerate your 
cert as often as you change your password or more even more often…***

### Telling your client (or bouncer to use the cert).

#### HexChat



### Limnoria



### WeeChat



### ZNC



### Telling NickServ about your key

NickServ wants to know the fingerprint which you can get with the following 
command:

```
openssl x509 -sha1 -noout -fingerprint -in YOURNICKNAMEHERE.pem | sed -e 's/^.*=//;s/://g;y/ABCDEF/abcdef/'
```

which returns your fingerprint (**WHICH YOU MUST NOT SHARE WITH ANYONE**)

```
05dd01fedc1b821b796d0d785160f03e32f53fa8
```

Now you can tell to NickServ about it.

```
/msg NickServ CERT ADD 05dd01fedc1b821b796d0d785160f03e32f53fa8
```

(replace that with your own fingerprint!) And nickerv replies to you

```
14:13:39 -- NickServ: Added fingerprint 05dd01fedc1b821b796d0d785160f03e32f53fa8 to your fingerprint list.
```

### Testing

Now when you connect to freenode and have configured your IRC client to 
use your new certificate, you should get identified automatically and 
you should see your certificate by whoising yourself and running cert list 
with NickServ.

```
/WHOIS YOURNICK YOURNICK
/MSG NickServ CERT LIST
```

replies

```
<...>
XX:XX:XX -- [YOURNICK] has client certificate fingerprint 05dd01fedc1b821b796d0d785160f03e32f53fa8
<...>
XX:XX:XX -- NickServ: Fingerprint list for YOURNICK:
XX:XX:XX -- NickServ: - 05dd01fedc1b821b796d0d785160f03e32f53fa8$$
XX:XX:XX -- NickServ: End of YOURNICK fingerprint list.
```

### Notes

* You must recreate your certificate yearly.
* This will identify you with immediately so you are still visible to 
/monitor.
* This will identify you after services return unlike other methods if you 
happen to be on splitted server without services.
* Supported networks which I am on:
    * freenode
    * oftc
    * piratenet

## Server password

This might not work with some networks, but this works with freenode. 
All IRC clients should support settng password which to use while 
connecting to server. Set it as `username:password` for freenode and you 
are automatically identified when you connect.

Some notes:

* This is only known to work with freenode.
* You aren't identified immediately so as shown in the embedded gist, 
your real host is visible for people who have you on `/monitor`.
* This won't help you if services go down.

## Automatic command

This works with probably every client. They support setting commands that 
are automatically run as you connect and you can set the command

```
/msg NickServ identify username password
```

or whatever syntax the services on your network use.

Some notes:

* Your real host is still visible for /monitor ing people.
* Your client might send that command too late to prevent you from getting 
to redirect channels for unidentified users and show your real host to 
everyone.
* You might annoy people by joining twice and quitting once with "Changing 
host".

<hr/>
For corrections above this line, please contact [me at IRC](../irc.html) or fix them by 
yourself [here](https://github.com/Mkaysi/mkaysi.github.io/blob/master/pages/external/identifying.html.md). What is below that line is embedded GitHub 
gist which reads where to contact with issues with it.
<hr/>
<script src="https://gist.github.com/maxanton/1e2cf7ada079c271bd3c.js"></script>
</body>
</html>
<!-- vim : set ft=markdown-->
