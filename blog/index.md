---
layout: page
title: Blog
permalink: /blog/
excerpt: "Blog index, posts in English and posts in Finnish — Blogin etusivu, postaukset englanniksi ja postaukset suomeksi."
---

* [Posts in Finnish / Suomenieliset kirjoitukset](#suomeksi)

## In English

<ul>
  {% for post in site.categories.english %}
    <li>
      <strong><a href="{{ post.url }}">{{ post.title }}</a></strong>
    </li>
<ul>
    <li>
        <p><em>{{ post.excerpt | strip_html }}</em></p>
    </li>
    </ul>
  {% endfor %}
</ul>

## Suomeksi

<ul>
  {% for post in site.categories.finnish %}
    <li>
      <strong><a href="{{ post.url }}">{{ post.title }}</a></strong>
    </li>
<ul>
    <li>
        <p><em>{{ post.excerpt | strip_html }}</em></p>
    </li>
    </ul>
  {% endfor %}
</ul>
