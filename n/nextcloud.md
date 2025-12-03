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

**_Go away._** This is likely highly specific to an undisclosed theoretical
location. Maybe look into
[official documentation](https://docs.nextcloud.com/server/stable/admin_manual/occ_command.html)
instead?

There is an environment variable `NC_debug` for which NextCloud keeps telling
you to `sudo --preserve-env` aka `-E`. I disagree, `sudo` is fully capable of
`Defaults        env_keep += "NC_debug"` with potentially less unforeseen
consequences.

```bash
# Everything is expected to be ran in the NextCloud / ownCloud Console
# directory, which in this case means
cd /var/www/html

# Usage instructions
sudo -u www-data php --define apc.enable_cli=1 occ --help

# Status. Has flags --output=json[,pretty}
sudo -u www-data php --define apc.enable_cli=1 occ status

# Example: self-repair?
sudo -u www-data php --define apc.enable_cli=1 occ maintenance:repair --include-expensive

# Disable maintenance-mode
sudo -u www-data php --define apc.enable_cli=1 occ maintenance:mode --off

# Post-upgrade routine tasks once new version is downloaded.
sudo -u www-data php --define apc.enable_cli=1 occ upgrade

# Display apps pending update. Remove flag for actually updating.
sudo -u www-data php --define apc.enable_cli=1 occ app:update --showonly
```

### Interesting keywords for perusing official documentation

- `sudo -u www-data php --define apc.enable_cli=1 occ files:transfer-ownership`
- `sudo -u www-data php --define apc.enable_cli=1 occ maintenance`
- `sudo -u www-data php --define apc.enable_cli=1 occ security`
- `sudo -u www-data php --define apc.enable_cli=1 occ user`
  - `sudo -u www-data php --define apc.enable_cli=1 occ user:report`
- `sudo -u www-data php --define apc.enable_cli=1 occ setupchecks`
