---
layout: default
title: 홈
---

<h1>{{ site.title }}</h1>
<p>{{ site.description }}</p>

<h2>최신 글</h2>
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
      <span>{{ post.date | date: "%Y-%m-%d" }}</span>
    </li>
  {% endfor %}
</ul>