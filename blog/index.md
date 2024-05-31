---
layout: page
title: Blog
navigation: true
permalink: /blog/
excerpt: "Blog index, posts in English and posts in Finnish — Blogin etusivu, postaukset englanniksi ja postaukset suomeksi."
lang: en
robots: noai
---

<ul style="text-align: center; list-style-type: none">
<li>Posts</li>
<li><a lang="en" href="#in-english">In English</a></li>
<li><a lang="fi" href="#suomeksi">suomeksi</a></li>
</ul>

<div lang="en">

<h2 id="in-english" style="text-align: right;">In English</h2>

{% for post in site.categories.english %}

<p style="text-align: right;"><strong><a href="{{ post.url }}">{{ post.title }}</a></strong></p>
<p><em>{{ post.excerpt | strip_html }}</em></p>
{% endfor %}

</div><div lang="fi">

<h2 id="suomeksi" style="text-align: right;">suomeksi</h2>

{% for post in site.categories.english %}

<p style="text-align: right;"><strong><a href="{{ post.url }}">{{ post.title }}</a></strong></p>
<p><em>{{ post.excerpt | strip_html }}</em></p>
{% endfor %}
