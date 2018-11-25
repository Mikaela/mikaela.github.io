---
layout: post
comments: true
title: "Autostarting tmux + WeeChat"
category: [english]
tags: [english, irc, tmux, cron, weechat]
redirect_from: /english/2016/03/14/autostart-tmux-weechat.html
---

*This is another note-to-self post, but I think other people might also
 be wondering this.*

 **THIS IS ENTIRELY UNTESTED UNTIL THE SHELL WHERE I AM USING THIS REBOOTS
   THE NEXT TIME!**

```cron
## Environment
# To avoid having to type absolute paths, append output of `printf "$PATH"`
PATH=
# Locale you wish to use
LANG=fi_FI.UTF-8
# Timezone
TZ=Europe/Helsinki

# The actual autostart magic
@reboot sleep 500 && tmux -2u new-session -s auto -d && tmux send -t auto weechat ENTER
```

* `@reboot` = tell cron to do this on reboot
* `sleep 500` = the shell where I intent to use this primarily is using NFS
  and I think it's reasonable to expect everything to be mounted in five
  minutes.
* `tmux -2u" = force enable 256 colors & UTF-8
* `new-session -s auto -d` = start a new session with name `auto` (as in
  automatically started) and detach it
* `tmux send -t auto weechat ENTER` type `weechat` to tmux session named
  auto and press ENTER to execute it.
