<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Installing ZNC directly from git without other instructions to confuse people." />
<meta name="keywords" content="ZNC installation git IRC bouncer" />
<meta name="author" content="Mikaela Suomalainen" />
<link rel="canonical" href="https://mkaysi.github.io/pages/external/zncinstall.html">
<title>Installing ZNC from git</title>
<link rel="stylesheet" type="text/css" href="../../css.css" />
</head>
<body>

This page tells you how to install ZNC from git. The package names are 
mainly for Debian based distributions, but you should be able to figure 
out what they are in other distributions and install them.

**If you don't know [what znc is, click here.](http://wiki.znc.in) If you 
[are looking for the official installation instructions, click here.](http://wiki.znc.in/Installation)**

I am going to presume that you don't install ZNC globally, if you do, 
remove the `--PREFIX=$HOME/.local` from your configure command.

## Installing requirements

```
sudo apt-get build-dep znc
sudo apt-get install git swig libperl-dev python3-dev tcl-dev libsasl2-dev libgtest-dev libicu-dev
```

## Actual installation

Do not remove the "znc" directory!

```
git clone https://github.com/znc/znc.git
cd znc
./autogen.sh
mkdir -p build
cd build
../configure --enable-debug --enable-perl --enable-python --enable-swig --enable-tcl --enable-cyrus --prefix=$HOME/.local
make -j$(nproc)
make install
```

### Adding ZNC to \$PATH

* Check if ZNC is in your \$PATH: `which znc`
    * It should result something like `/home/znc/.local/bin/znc`
        * If it says `znc not found` or gives wrong path, continue with 
        thse instructions.

```
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.$(echo $SHELL|cut -d/ -f3)rc
source ~/.$(echo $SHELL|cut -d/ -f3)rc
```

`which znc` should now give correct place.

### Ending

* Configure your settings with `znc --makeconf`
* Start znc with `znc`
* Connect to your ZNC using your IRC client.

## Upgrading

```
cd znc
git pull
mkdir -p build
cd build
../configure --enable-debug --enable-perl --enable-python --enable-swig --enable-tcl --enable-cyrus --prefix=$HOME/.local
make -j($nproc)
make install
```

### Error with make

* If you are in build directory: `cd ..`
* If you are in the directory where you git cloned the repository: `cd znc`

and continue

```
rm -rf build
mkdir -p build
cd build
../configure --enable-debug --enable-perl --enable-python --enable-swig --enable-tcl --enable-cyrus --prefix=$HOME/.local
make -j$(nproc)
make install
```

If it doesn't work, try asking at [![#znc](https://kiwiirc.com/buttons/chat.freenode.net/znc.png)](https://kiwiirc.com/client/chat.freenode.net:+6697/#znc).

<script>
var idcomments_acct = '2405e74b7c1c8062b1b2ea830f1a8bd0';
var idcomments_post_id;
var idcomments_post_url;
</script>
<span id="IDCommentsPostTitle" style="display:none"></span>
<script type='text/javascript' src='http://www.intensedebate.com/js/genericCommentWrapperV2.js'></script>

<hr/>
</body>
</html>
<!-- vim : set ft=markdown-->
