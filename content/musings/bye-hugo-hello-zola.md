+++
title = "Goodbye, HugoBlox (and Hugo)! Hello, Zola!"
description = "Finally, something better than HugoBlox!"
date = 2026-04-18
updated = 2026-04-20

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

## On-going transition

The transition is still on-going and there are many TODOs before the website is fully ready.

{% alert(type="warning", title="Urgent TODOs") %}

- [ ] Update the main landing page for the website.
- [x] Improve git setup.
  - [x] Add a `.pre-commit` configuration.
  - [x] Add relevant badges to the README.
  - [x] Add instructions for setting up the development environment in the README.
  - [x] ~_Maybe_ a~ Add a `justfile` ~or a `Makefile`~ for common tasks.
  - [x] ~Add a LICENSE, perhaps dual license for the creative part and the code, especially the imported theme(s)~. License attributions for the theme(s) and icon(s) are needed.
- [x] Improve security hardening for the GitHub actions.
  - [x] Add `step-security` `harden-runner` to all workflows.
  - [x] Make sure that all dependencies are pinned.
  - [x] Add `dependabot` for GitHub actions and Zola ~dependencies~ theme submodules.
- [x] ~_Should there be a CHANGELOG_, either as a CHANGELOG.md file or as a section in the website?~ Adopt semantic versioning based releases and tags for the website. Since the website is not a software project, a CHANGELOG may not be necessary.
- [ ] Remove all TODOs, old content and this **On-going transition** section.

{% end %}

{% alert(type="info", title="On-going improvements") %}

- [ ] Create a landing page for photography, with a short description leading to external links for the photography work.
- [ ] _Maybe_ in the `et-cetera` section, attempt to use responsive images to display the profile photos but also have links to make the originals downloadable.
  - [x] Make Bengali and Japanese writings of my name as SVG.
- [ ] _Maybe_ add a section for the research work, with links to the papers and patents.
- [ ] Add more content to the `musings` section.
- [x] Add more content to highlight open-source projects.

{% end %}

## The future

So far, so good but it is too early to tell how Zola or compatible themes evolve over time. Let's see how it unfolds.
