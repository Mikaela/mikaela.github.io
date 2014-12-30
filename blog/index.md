---
layout: page
title: Blog
permalink: /blog/
---

Some kind of version of my blog might come here and if it does, Tumblr
reblogs etc. are not included.

*There are no uncategorized posts here so I will notice if I forget
to put post into either category.*

## English

<ul>
  {% for post in site.categories.english %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

## Finnish

<ul>
  {% for post in site.categories.finnish %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
