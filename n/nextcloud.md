---
layout: mini
permalink: /n/nextcloud.html
sitemap: false
lang: en
---

# Nextcloud survival instructions

**_This does not concern you, go away, unless this actually concerns you._**

## General

- Install NextCloud desktop. Figure it out yourself, if it's not mentioned here.

### flatpak

```bash
sudo flatpak install flathub com.nextcloud.desktopclient.nextcloud --assumeyes
sudo flatpak override com.nextcloud.desktopclient.nextcloud --filesystem=~/Nextcloud:create
```

## Sysadmin

**_Go away._** This is likely highly specific to an undisclosed location.

```bash
cd /var/www/html
# Untested
sudo -u www-data php --define apc.enable_cli=1 occ --help
# Example: self-repair?
sudo -u www-data php --define apc.enable_cli=1 occ maintenance:repair
# Disable maintenance-mode
sudo -u www-data php --define apc.enable_cli=1 occ maintenance:mode --off
# Self-upgrade?
sudo -u www-data php --define apc.enable_cli=1 occ upgrade
```
