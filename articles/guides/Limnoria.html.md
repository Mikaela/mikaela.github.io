<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="Guide for installing and using Limnoria which is actively developed fork of Supybot either from Debian package or from source and with or without root." />
<meta name="keywords" content="Supybot,Limnoria,IRC,bot,python2,git,Debian,Linux,Mint,Ubuntu,Kubuntu,Lubuntu,Xubuntu,Arch" />
<meta name="author" content="Mika Suomalainen" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/Limnoria.html">
<title>Installing & running Limnoria.</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)
<hr/>

# Installing

There are three ways to install [Limnoria] depending on your operating system. If you are on Debian-based Linux distribution e.g. [Debian], [*Ubuntu], [Linux Mint] you can install the Debian package. Or then you can install from source which should work on all other OSes too (at least Mac OS X, I don't have successful experience with Windows) and you can also install for current user only.

## With the Debian package

<strong>This method requires root access.</strong>

First become root by running

```
sudo su
```

Then download the Debian package. Here you have to choice do you install the stable version or testing version.

Replace "VERSIONHERE" with "master" to get stable version or "testing" to get testing version.

```
wget http://compiler.progval.net/limnoria-VERSIONHERE-HEAD.deb
dpkg -i limnoria-VERSIONHERE-HEAD.deb
apt-get install -f
```

The "apt-get install -f" tries to fix broken packages by downloading and installing missing depedencies if there are them.

### Upgrading

To upgrade just run the steps above. Remember that the Debian packages are daily builds, so they are changed every day. You can see the latest change on [compiler.progval.net]. The "-HEAD" packages are always the most recent version.

## From source

I recommend that you have [git] installed, because it will make upgrading easier and you don't have to find the [download links] from [GitHub].

If you are going to do a global installation you might want to become root now, otherwise skip the next command

```
sudo su
```

Now download (or "clone") the git repository.

```
git clone git://github.com/ProgVal/Limnoria.git
```

move into the cloned repository

```
cd Limnoria
```

and decide do you want install stable or testing version.

In case you want the testing version, change into the testing branch. If you want the stable version skip this.

```
git checkout -b testing origin/testing
```

Now if you are root and what global installation, you run

```
python setup.py install
```

or local installation

```
python setup.py install --user
```

Limnoria is now installed and you can move to configuring it.

<strong>[Arch Linux] users (and users of other distributions which use python3 by default instead of python"): REPLACE "python" WITH "python2" in all commands!</strong>

### Upgrading

Return to the git repository or if you have removed it, follow the installation steps again.

Update the cloned repository by running

```
git pull
```

and then reinstall

```
python setup.py install
```

or only for current user

```
python setup.py install --user
```

<hr/>

# Configuring the bot

If you installed [Limnoria] as root, you can skip the next section and move to "running Supybot-wizard".

## Preparing locally installed Limnoria for use

Limnoria's binaries were installed to ~/.local/bin which isn't in default $PATH. This means that you must either type the whole path always when you want to run Limnoria or add ~/.local/bin to your PATH. We do the previously mentioned.

You can add it to the PATH by running the following commands:

```
echo "PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc
echo "PATH=$HOME/.local/bin:$PATH" >> ~/.zshrc
```

<strong>If you type only one ">" instead of ">>" in those commands, you will replace the content of those files with "PATH=$HOME/.local/bin:$PATH" instead of appending it into them.</strong>

then run 

```
source .bashrc
```

or with zsh

```
source .zshrc
```

and you should be able to run the commands without needing to type the whole PATH, so you can now move into configuring.

<strong>NOTE: You don't need to do this again after upgrading.</strong>

## Running the Supybot-wizard

<!-- vim : set ft=html -->
