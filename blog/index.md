---
layout: page
title: Blog index
permalink: /blog/
---

Some kind of version of my blog might come here and if it does, Tumblr
reblogs etc. are not included.

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
