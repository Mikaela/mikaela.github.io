---
layout: page
title: Blog
navigation: true
permalink: /blog/
excerpt: "Blog index, posts in English and posts in Finnish — Blogin etusivu, postaukset englanniksi ja postaukset suomeksi."
---

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
_Automaattinen sisällysluettelo - Automatically generated Table of Contents_

- [In English](#in-english)
- [Suomeksi](#suomeksi)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## In English

_Please keep in mind that old blog posts might not reflect the current
reality or my opinions etc._

<table>
    <tr>
        <th>Title</th>
        <th>What it's about</th>
    </tr>
  {% for post in site.categories.english %}
    <tr>
        <td><strong><a href="{{ post.url }}">{{ post.title }}</a></strong></td>
        <td><em>{{ post.excerpt | strip_html }}</em></td>
    </tr>
  {% endfor %}
</table>

## Suomeksi

_Pidäthän mielessä etteivät vanhat blogaukseni välttämättä heijasta
todellisuutta tai nykyisiä mielipiteitäni jne._

<table>
    <tr>
        <th>Otsikko</th>
        <th>Mistä se kertoo</th>
    </tr>
  {% for post in site.categories.finnish %}
    <tr>
        <td><strong><a href="{{ post.url }}">{{ post.title }}</a></strong></td>
        <td><em>{{ post.excerpt | strip_html }}</em></td>
    </tr>
  {% endfor %}
</table>
