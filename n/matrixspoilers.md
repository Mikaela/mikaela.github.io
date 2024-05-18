---
layout: mini
permalink: /n/matrixspoilers.html
redirect_from:
  - n/nheko.html
  - n/matrixspoiler.html
sitemap: false
---

The Matrix specification supports spoilers since version 1.1:

- [Spoiler messages at Client-Server API of Matrix Specification](https://spec.matrix.org/latest/client-server-api/#spoiler-messages)

My favourite Matrix clients, FluffyChat and Nheko, support spoilers when
the spoiler is in the following format; `||Reason why this is a spoiler|Actually
spoilered text.||` It can also be in-line and a spoiler without reason is just
`||spoiler goes here||`.

Element Web supports whole message spoilers through the `/spoiler` command.

Other clients supporting formatting may have to enter the HTML directly e.g.:

```html
<span data-mx-spoiler="REASON HERE">Spoilered text</span>
```

Some clients, like Nheko, have a `/plain` command to disable formatting for
that message which allows sending this message in plain text to help someone
else.

```html
/plain <span data-mx-spoiler="REASON HERE">Spoilered text</span>
```

Spoilers are also supported by IRC, but not matrix-appservice-irc.

- [matrix-org/matrix-appservice-irc#1548: Feature request: bridge spoilers to IRC by sending them with the same background&foreground colour (and that to Matrix as spoiler)](https://github.com/matrix-org/matrix-appservice-irc/issues/1548)
