---
layout: page
icon: fa-solid fa-clipboard-question
title: Liewphedia
permalink: /liewphedia/
description: My internal dialogue.
order: 3
---

## A Conceptual Repository of Absolutely Nothing Crucial

The product of an over-caffeinated brain and its lifelong commitment to conceptual amalgamation—the process of squishing two things together until one of them almost makes sense. This collection of fragments is a glimpse inside, where every idea is lovingly tested, refined, and violently rejected. As Captain Oveur famously said, "Alright. Give me Hamm on five, hold the Mayo."

### What You Will Gain

You'll learn several very specific, highly unqualified assertions, much in the same way a damp sponge absorbs hubris. Topical substance wrung to completion, replete with trial and no error (as long as you concede the definition of "error" is wrong). Have funn (the first "n" is silent, like in "knuckle").

### What You Will Lose

Precious, verifiable claims about the real world, the ability to spell neccissary on the first try, where your keys are, possibly an hour of sleep. Though if you feel your eyes closing, please do not use Liewphedia as a pillow; it may contain sharp metaphors. In closing, what do you do with an elephant with three balls? Walk him, and pitch to the rhino.

***

## Entries

<ul class="post-list">
{% assign entries = site.liewphedia | sort: 'title' %}
{% for entry in entries %}
  <li>
    <a href="{{ entry.url | relative_url }}">{{ entry.title }}</a>
    <p>{{ entry.description | default: "A term defined on this site." }}</p>
  </li>
{% endfor %}
</ul>
