<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Instructions for identifying to services on various IRC networks." />
<meta name="keywords" content="freenode IRC SASL CertFP client bouncer HexChat Limnoria Supybot WeeChat ZNC plain dh-aes dh-blowfish external openssl msysgit Unix Linux Windows SSL certificate Services NickServ server network security cloak" />
<meta name="author" content="Mikaela Suomalainen" />
<link rel="canonical" href="https://mkaysi.github.io/pages/external/identifying.html">
<title>How to identify to services automatically</title>
<link rel="stylesheet" type="text/css" href="../../css.css" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-40171169-1', 'mkaysi.github.io');
            ga('send', 'pageview');

            </script>
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
[SaslServ] (SaslServ@services.): SASL Authentication Agent
[SaslServ] services. (Atheme IRC Services)
[SaslServ] is a Network Service
[saslserv] End of WHOIS
SaslServ: This service exists to identify connecting clients to the network. It has no public interface.
```

There are different mechanisms for use with SASL. I personally use only 
two of them with ZNC, `EXTERNAL PLAIN`.

This is what ZNC 1.5-git-3b01efc says about them:

```
< *sasl> +-------------+----------------------------------------------------+
< *sasl> | Mechanism   | Description                                        |
< *sasl> +-------------+----------------------------------------------------+
< *sasl> | EXTERNAL    | TLS certificate, for use with the *cert module     |
< *sasl> | PLAIN       | Plain text negotiation                             |
< *sasl> +-------------+----------------------------------------------------+
```

Some notes:

* ZNC has other supported Mechanisms too, those are only what I use.
* **You must use your accountname as username**.
    * Only applies to older services (and you can probably trust them to 
    be actively used for years, so do this even if it's nor required).
* PLAIN is plain text as it says, so if you use it like I do, you should 
use SSL.
    * This won't help you when services are down.
* EXTERNAL works together with CertFP and doesn't need username nor 
password. It tells server about certificate and identifies you before you 
are visible. Even if SASL EXTERNAL fails, your certificate will identify 
you.
    * I recommend having `EXTERNAL` as primary SASL mechanism and `PLAIN` 
    as secondary if supported by your client. This is supported by ZNC.

### Using SASL with your client or bouncer

Remember that I use all of these methods (SASL, CertFP, username:password, 
automatic command).

### HexChat

Press `CTRL + S` or go to `HexChat --> Network list` and select the 
network where you want to use SASL and click `Edit`.

If you want to specify server specific username, uncheck the `Use global user information` 
checkbox.

Change the `Login method:` from `Default` to `SASL (username + password) 
and type your username and password. If you don't uncheck the box, you 
must specify the username in network list.

### Limnoria

Limnoria supports SASL by default without any plugins.

```
config networks.<network>.sasl.username NSACCOUNTNAME
config networks.<network>.sasl.password NSPASSWORD
```

[There is an feature request about SASL external.](https://github.com/ProgVal/Limnoria/issues/781)

### WeeChat

WeeChat supports SASL by default when you configure it. It can be 
configured globally or per network. You should do both.

#### Global configuration

```
/set irc.server.default.ssl on
/set irc.server_default.ssl_dhkey_size 1024
/set irc.server_default.sasl.mechanism plain
/set irc.server_default.sasl.username <USERNAME>
```

1. Enables SSL by default for all connections unless otherwise specified 
which is in the next section. You do want this if you use the third 
command like I do which makes the password be sent in plain text.
2. Fixes issues with connecting to freenode with SSL.
3. Sets the password to be sent in plain text (this is why you want SSL). 
Plain text should be supported by every network that supports SASL.
4. Sets the default SASL username in case you have mostly same account 
name in most of the networks which you are connected to.

#### Network specific configuration

```
/set irc.server.<network>.sasl_username <USERNAME>
/set irc.server.<network>.sasl_password <PASSWORD>
```

1. Sets the SASL username in case it's different that globally configured.
2. Sets the password which is used with SASL.

### ZNC

```
/znc loadmod sasl
/znc *sasl mechanism external plain
/znc *sasl requireauth no
/znc *sasl set NSACCOUNTNAME NSPASSWORD
```

1. Loads the sasl module.
2. Sets the mechanism list (where others than plain are useless as if 
plain doesn't work, others most probably won't work either).
3. Makes you able to connect to network even if SASL fails as I expect you 
to also have CertFP configured which will identify you when services 
return.
4. Sets the details which ZNC uses to identify you.
    * Remember what I said about older services earlier.

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

#### Windows

All commands here work mostly if you instll [msysgit](https://msysgit.github.io/) with the option below. Oh and you must also change 
the paths.

Download it and run the installer. 

**THIS IS THE MOST IMPORTANT PART!** — `Adjusting your PATH environment.

* **`Use Git and optional Unix tools from the Windows Command Path`
    * If you don't select this, you must reinstall or you aren't able to 
    use all of the commands.

### Generating the certificate

Open terminal and run this command and replace YOURNICKNAMEHERE.pem with 
your nickname or something else which makes you know what it is 
(**DO NOT SET PASSWORD FOR IT OR YOUR CLIENT MIGHT NOT BE ABLE TO USE IT**):
* Most of people are having ZNC and Limnoria starting automatically and 
asking password isn't a good idea with them.
    * If they asked passwords, your bot and ZNC would always be down if 
    they crashed and cron or init-system or whatever asked for password…

```
openssl req -nodes -newkey rsa:4096 -keyout YOURNICKNAMEHERE.pem -x509 -days 3650 -out YOURNICKNAMEHERE.pem -subj "/CN=Your Nickname"
```

This gives us file `YOURNICKNAMEHERE.pem` which you must give to your IRC 
client which is valid for 10 years and must be regenerated at least every 
10 years or whatever you specify in `-days`.

Oh, and **don't close your terminal yet** as you will need it for HexChat.

### Telling your client (or bouncer to use the cert).

#### HexChat

Create a folder "certs" to your HexChat config and copy the .pem file 
there and copy and rename it as `client.pem`. Windows users: skip the 
following two commands and go under topic "Windows" below.

```
mkdir -p ~/.config/hexchat/certs/
cp YOURNICKNAMEHERE.pem ~/.config/hexchat/certs/client.pem
```

Now open your HexChat and press `CTRL + S` or go to `HexChat --> Network list` and check the settings for the networks that you use.

* Use SSL for all the servers on this network.
* Note: if mechanism is SASL EXTERNAL, some services might not identify 
you using SASL. HexChat doesn't support multiple SASL mechanisms.
    * If you use something that wants username, uncheck the `Use global user informtion` 
    or you must specify the username in the Network List and ZNC won't like
    it.

##### Windows

If you followed my instructions with msysgit setup, you can now run the 
following and it works.

```
mkdir -p %appdata%\hexchat\certs
cp YOURNICKNAMEHERE.pem %appdata%\hexchat\certs\client.pem
```

If you use portable HexChat (the option in setup), create a folder `certs` 
under the `config` directory and copy YOURNICKNAMEHERE.pem there and 
rename it to `client.pem`.

You can now return to below the three \*nix commands to the part which 
you skipped to check your settings.

#### Limnoria

Insert your .pem file somewhere where the bot can read it and tell your 
bot to use it while connecting with

```
config protocols.irc.certfile /full/path/to/pem.file
```

* [Limnoria's install/upgrade guide](http://supybot.aperio.fr/doc/use/install.html)
    * [Mirror](http://limnoria-doc.readthedocs.org/en/latest/use/install.html)
#### WeeChat

I recommend you to `/script install iset.pl` for easier configuring when 
you aren't following this.

Put the .pem file somewhere where your WeeChat can access it, preferably 
`~/.weechat` or whenever your "WeeChat home" is and run the following 
commands in WeeChat:

```
/set irc.server_default.ssl_cert %h/YOURNICKNAMEHERE.pem"
/set irc.server_default.ssl on
/set irc.server_default.ssl_dhkey_size 1024
/set irc.server_default.ssl_verify on
```

1. Specifies where is the .pem file for all networks that don't have it 
invidually specified.
2. Enables SSL for all networks by default unless otherwise configured.
3. Sets `dhkey_size` to `1024` (required by some networks like freenode).
4. Disables verifying the certificates (required for self-signed 
certificates and I think that applies to our certificate too).

#### ZNC

Please read the both parts as you must add the certificate in webadmin or 
read ZNC documentation on how to add it manually.

##### Webadmin

If you don't have webadmin loaded you have two options:

* As admin (recommended): `/msg *status loadmod --type=global webadmin`
    * Allows everyone to login to webadmin.
* As normal user (only if you aren't admin) `/msg *status loadmod -type=user webadmin`
    * Allows only you to login to webadmin and you will get questions on 
    why users cannot login there and you must either load it globally or 
    tell them to do this and both just cause confusion.

First login to your webadmin and if you are admin, go to the global 
settings. Check the checkbox `certauth`, scroll down and press "Save".

Then go to your settings and check the checkbox `cert`. You might also 
want to check the checkbox for `sasl` and `perform`. Scroll down and 
click "Save and return".

Now you should see `certauth` in global modules where you can specify the 
fingerprint of the pem file and your IRC client should be able to login to 
ZNC with it.

You should also see `Certificate` in user modules. On top of the page it 
will tell you if you have certificate specified. Open the 
`YOURNICKHERE.pem` and copy-paste everything in it to the large box and 
click `Update`.

##### IRC

```
/znc loadmod --type=global certauth
/znc loadmod --type=user cert
/znc loadmod --type=network perform
/znc loadmod --type=user perform
/znc loadmod --type=network sasl
```

This is everything that was done above except adding the certificate which 
you should do in the webadmin (see the two last paragraphs under webadmin 
on this page).

### Telling NickServ about your key

NickServ wants to know the fingerprint which you can get with the following 
command:

```
openssl x509 -sha1 -noout -fingerprint -in YOURNICKNAMEHERE.pem | sed -e 's/^.*=//;s/://g;y/ABCDEF/abcdef/'
```

which returns your fingerprint (which is the only thing required to add 
your key to services database, but some networks show this in whois).

```
05dd01fedc1b821b796d0d785160f03e32f53fa8
```

Now you can tell to NickServ about it.

```
/msg NickServ CERT ADD 05dd01fedc1b821b796d0d785160f03e32f53fa8
```

(replace that with your own fingerprint!) And nickerv replies to you

```
NickServ: Added fingerprint 05dd01fedc1b821b796d0d785160f03e32f53fa8 to your fingerprint list.
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
[YOURNICK] has client certificate fingerprint 05dd01fedc1b821b796d0d785160f03e32f53fa8
<...>
NickServ: Fingerprint list for YOURNICK:
NickServ: - 05dd01fedc1b821b796d0d785160f03e32f53fa8$$
NickServ: End of YOURNICK fingerprint list.
```

### Notes

* You must recreate your certificate as specified by the `-days` part in 
the openssl command.
* This won't identify you immediately so you are still visible to 
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
<hr/>
<hr/>
<script>
var idcomments_acct = '2405e74b7c1c8062b1b2ea830f1a8bd0';
var idcomments_post_id;
var idcomments_post_url;
</script>
<span id="IDCommentsPostTitle" style="display:none"></span>
<script type='text/javascript' src='http://www.intensedebate.com/js/genericCommentWrapperV2.js'></script>

</body>
</html>
<!-- vim : set ft=markdown-->
