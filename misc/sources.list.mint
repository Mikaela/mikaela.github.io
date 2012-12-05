## /etc/apt/sources.list for Linux Mint (LTS)
## Default repositories. Changed to use mirrors.ubuntu.com instead of archive.ubuntu.com
deb http://packages.linuxmint.com/ maya main upstream import
deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse
deb http://archive.canonical.com/ubuntu/ precise partner
deb http://packages.medibuntu.org/ precise free non-free
deb http://extras.ubuntu.com/ubuntu precise main

## sources.list in Linux Mint doesn't contain deb-src lines by default. They are required for changelogs and build depedency getting with "apt-get build-dep".
deb-src http://packages.linuxmint.com/ maya main upstream import
deb-src mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
deb-src mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse
deb-src http://security.ubuntu.com/ubuntu/ precise-security main restricted universe multiverse
deb-src http://archive.canonical.com/ubuntu/ precise partner
deb-src http://packages.medibuntu.org/ precise free non-free
deb-src http://extras.ubuntu.com/ubuntu precise main

## Backports
#deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse
#deb-src mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse
#deb http://packages.linuxmint.com/ maya backport
#deb-src http://packages.linuxmint.com/ maya backport

## Unstable packages

#deb http://packages.linuxmint.com/ maya romeo
#deb-src http://packages.linuxmint.com/ maya romeo

## Virtualbox
## gpg --keyserver pool.sks-keyservers.net --recv-keys 98AB5139
## gpg --export -a 7B0FAB3A13B907435925D9C954422A4B98AB5139|apt-key add -
deb http://download.virtualbox.org/virtualbox/debian precise contrib
