---
layout: page
title: Blog
permalink: /blog/
excerpt: "Blog index, posts in English and posts in Finnish — Blogin etusivu, postaukset englanniksi ja postaukset suomeksi."
---

* [in Finnish / Suomeksi](#suomeksi)
* [in English / Englanniksi](#in-english)

## In English

<ul>
  {% for post in site.categories.english %}
    <li>
      <strong><a href="{{ post.url }}">{{ post.title }}</a></strong>
        <p><em>{{ post.excerpt | strip_html }}</p></em>
    </li>
  {% endfor %}
</ul>

* [in Finnish / Suomeksi](#suomeksi)
* [in English / Englanniksi](#in-english)

## Suomeksi

<ul>
  {% for post in site.categories.finnish %}
    <li>
      <strong><a href="{{ post.url }}">{{ post.title }}</a></strong>
        <p><em>{{ post.excerpt | strip_html }}</p></em>
    </li>
  {% endfor %}
</ul>
