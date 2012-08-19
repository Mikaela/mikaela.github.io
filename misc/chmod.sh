#!/usr/bin/env bash
# This file is for me to get the necressary chmods so anyone can't see my files and Oidentd spoofing and apache UserDir work :)
echo "Chmodding home and everything in it..."
chmod 700 $HOME -R ## Makes only you able read and write and execute (it might not be good having execution permission with all folders and files, but it's required for moving to directories) files in your home directory and directories in it.
echo "Touching oidentd config..."
touch ~/.oidentd.conf ## Creates .oidentd.conf if you don't have it already.
echo "chmodding .oidentd.conf ..."
chmod 644 ~/.oidentd.conf ## Allows you to read and write and everyone to read .oidentd.conf
echo "chmodding home directory..."
touch ~/.ICEauthority ## Creates one important file which is required by graphical login.
chmod 711 ~ ## Allows you to write, read and execute everything in your home directory and makes them searchable.
echo "Creating apache2 UserDir..."
mkdir ~/public_html/
echo "Chmodding apache2 UserDir..."
chmod 755 ~/public_html/ -R ## Allows everyone to read and execute things in your public HTTP folder.
