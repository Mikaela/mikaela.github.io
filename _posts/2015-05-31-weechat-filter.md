---
layout: post
comments: true
title: "WeeChat: ignoring with /filter"
category: [english]
tags: [english, IRC, WeeChat]
redirect_from:
  - /filter.html
  - /weechat-filter.html
---

*Everyone knows the `/ignore` command, but there is also `/filter` which
I feel is superiour.*

First, how do they differ?
* Ignore removes all lines from the person you are ignoring permanently and
  they aren't logged or anything.
* Filter only hides the messages from the person and is very customizable,
  but I am only describing my ignoring here. They are still logged and
  by toggling filters they become visible.

And how do you use it? 
* `/filter add FILTERNAME * nick_*NICKHERE* *`
    * FILTERNAME is the name how you recognize the filter, I usually put
      the nick there.
    * The first `*` is buffer where the filter is used in and means simply
      "all buffers".
    * `nick_*NICKHERE*` means that you want to filter lines from
      `*NICKHERE*`, the asterisks are important as it makes sure that the
      user doesn't change their nick to `NICKHERE_` who again wouldn't be
      filtered.
    * And the last `*`, what do you want to filter from that nick?
      Everything.

But doesn't this defeat the whole point of ignoring? That depends on you
and do you think you will ever need the ignored content.

One good example where you might want to have the content is when you are
channel op and someone on your ignore list joins the channel and someone
else alerts ops.

With ignore you see nothing, with filter you just toggle your filters and
see that someone who you had filtered joined on the channel and did
something against the channel rules and you can easily take action.

Further reading, check `/help filter`, you will enjoy at least
the smart filter, `/filter add irc_smart * irc_smart_filter *` (hides
joins/quits/parts/etc. unless the person has talked in X minutes configured
in `/help irc.look.smart_filter_delay`).
