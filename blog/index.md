---
layout: page
title: Blog
permalink: /blog/
excerpt: "Blog index, posts in English and posts in Finnish — Blogin etusivu, postaukset englanniksi ja postaukset suomeksi."
---

* [Posts in Finnish / Suomenieliset kirjoitukset](#suomeksi)

## In English

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
