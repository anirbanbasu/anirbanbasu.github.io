+++
title = "Goodbye, HugoBlox (and Hugo)! Hello, Zola!"
description = "Finally, something better than HugoBlox!"
date = 2026-04-18
updated = 2026-04-21

[taxonomies]
tags = ["website", "static-site-generator", "zola"]
categories = ["tools-and-systems"]
+++

As of April 2026, I have updated my website after having waited for years for a better alternative to what I had been using. Here are my thoughts on the transition.

## What happened?

I have been using [Hugo](https://gohugo.io/) as the static site generator (SSG) for my website since late 2018. I had started with the Hugo Academic theme, which was later renamed Wowchemy and eventually to [HugoBlox](https://hugoblox.com/). Initially, the Hugo Academic theme was great but with the theme's evolution, every major update to the theme as well as Hugo, itself, brought about breaking changes.

In April 2026, I found out about [Zola](https://www.getzola.org/), a static site generator written in Rust, and decided to switch to it. I quote the creator of Zola -- [Vincent Prouillet](https://www.vincentprouillet.com/) --, below, which somewhat resonates with my frustrations with Hugo and HugoBlox.

> This tool and its template engine tera were born from an intense dislike of the (insane) Golang template engine and therefore of Hugo that I was using before for 6+ sites.
>
> — <cite>Zola GitHub repository[^1]</cite>

[^1]: [Zola GitHub repository](https://github.com/getzola/zola), accessed on April 19, 2026.

## Zola and the `terminus` theme

Given how frustrating my experience with Hugo had turned out to be, I decided to give Zola a try. However, Zola's theme ecosystem is not as mature as Hugo's yet and I could not find a theme that quite replicates the look and feel of the academic profile theme of Hugo. Hence, I ventured into a different direction -- using the [`terminus`](https://github.com/ebkalderon/terminus) theme for a minimalistic and clean look. I have somewhat [customised the theme](https://github.com/ebkalderon/terminus/pull/17) to suit my needs.

## The future

So far, so good but it is too early to tell how Zola and its themes evolve over time. Let's see how it unfolds.
