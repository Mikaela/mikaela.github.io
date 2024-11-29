---
title: Spoilers on Matrix protocol
excerpt:
  Instructions for proper spoiling on Matrix using FluffyChat, Nheko and Element
  Web.
layout: mini
permalink: /n/matrixspoilers.html
redirect_from:
  - n/nheko.html
  - n/matrixspoiler.html
sitemap: true
lang: en
robots: noai
---

The Matrix specification supports spoilers since version 1.1:

- [Spoiler messages at Client-Server API of Matrix Specification](https://spec.matrix.org/latest/client-server-api/#spoiler-messages)

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [Best case scenario](#best-case-scenario)
- [Manual](#manual)
- [IRC](#irc)
- [Related issues](#related-issues)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## Best case scenario

My favourite Matrix clients, FluffyChat and Nheko, support spoilers when the
spoiler is in the following format;
`||Reason why this is a spoiler|Actually spoilered text.||` It can also be
in-line and a spoiler without reason is just `||spoiler goes here||`.

Element Web supports whole message spoilers through the `/spoiler` command.

## Manual

Other clients supporting formatting may have to enter the HTML directly e.g.:

```html
<span data-mx-spoiler="REASON HERE">Spoilered text</span>
```

Some clients, like Nheko, have a `/plain` command to disable formatting for that
message which allows sending this message in plain text to help someone else.

```html
/plain <span data-mx-spoiler="REASON HERE">Spoilered text</span>
```

## IRC

Spoilers are also supported by IRC, but not matrix-appservice-irc.

- [matrix-org/matrix-appservice-irc#1548: Feature request: bridge spoilers to IRC by sending them with the same background&foreground colour (and that to Matrix as spoiler)](https://github.com/matrix-org/matrix-appservice-irc/issues/1548)

## Related issues

- [element-hq/element-meta#2424: Implement displaying spoilers in ElementX](https://github.com/element-hq/element-meta/issues/2424)
- [element-hq/element-meta#2489: Sending content warnings](https://github.com/element-hq/element-meta/issues/2479)
  - [element-hq/element-x-ios#2839: Sending content warnings](https://github.com/element-hq/element-x-ios/issues/2839)
