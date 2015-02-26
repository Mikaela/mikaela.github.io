---
layout: page
title: Blog
permalink: /blog/
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
