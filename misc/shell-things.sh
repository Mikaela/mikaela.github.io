#!/usr/bin/env bash
wget -O .cat.sh https://raw.github.com/Mkaysi/shell-things/master/.cat.sh
wget -O bashrc https://raw.github.com/Mkaysi/shell-things/master/bashrc
wget -O gitconfig https://raw.github.com/Mkaysi/shell-things/master/gitconfig
wget -O notMkaysi https://raw.github.com/Mkaysi/shell-things/master/notMkaysi
wget -O oidentd.conf https://raw.github.com/Mkaysi/shell-things/master/oidentd.conf
wget -O pastebinit.xml https://raw.github.com/Mkaysi/shell-things/master/pastebinit.xml
wget -O tmux.conf https://raw.github.com/Mkaysi/shell-things/master/tmux.conf
wget -O vimrc https://raw.github.com/Mkaysi/shell-things/master/vimrc
wget -O xsessionrc https://raw.github.com/Mkaysi/shell-things/master/xsessionrc
wget -O zshrc https://raw.github.com/Mkaysi/shell-things/master/zshrc
mkdir -p gnupg
cd gnupg
wget -O gpg.conf https://raw.github.com/Mkaysi/shell-things/master/gnupg/gpg.conf
wget -O pgprules.xml.asc https://raw.github.com/Mkaysi/shell-things/master/gnupg/pgprules.xml.asc
cd ..
wget -O README.md https://raw.github.com/Mkaysi/shell-things/master/README.md
