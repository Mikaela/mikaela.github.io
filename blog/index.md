---
layout: page
title: Blog
permalink: /blog/
excerpt: Blog index, posts in English and posts in Finnish — Blogin etusivu, postaukset englanniksi ja postaukset suomeksi.
---

Posts in English:

<ul>
  {% for post in site.categories.english %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

Postaukset suomeksi:

<ul>
  {% for post in site.categories.finnish %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
