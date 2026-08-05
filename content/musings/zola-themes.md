+++
title = "Zola themes"
description = "Trying out new designs."
date = 2026-08-05
updated = 2026-08-05

[taxonomies]
tags = ["website", "static-site-generator", "zola", "themes", "visual-design"]
categories = ["tools-and-systems"]
+++

As mentioned in [my post on switching to Zola](/musings/bye-hugo-hello-zola/), I made a long overdue transition for my website from the Hugo static site generator to Zola. Since then, I have been exploring the Zola theme ecosystem and started to make my own.

## `tapestry`: a `terminus` extension

Since my website's transition to Zola, I have been using the [`terminus`](https://github.com/ebkalderon/terminus) theme for a minimalistic and clean look. Then, I wanted to add some more customisations from theme colour scheme, to layout and typography. These were significant enough to warrant a new theme. Hence [`tapestry`](https://www.getzola.org/themes/tapestry/) was born. Released under MIT license, it extends the `terminus` theme with the following key differences.

- Five presentation style groups, each with a number of variants (e.g., _creative_'s _editorial-zine_) replace the `extra.color_scheme` setting of the `terminus` theme.
- Each presentation style and its variants are available in both light and dark modes with mode switcher always available.
- Additional shortcodes, such as for showing the colour palette.

The full documentation for the `tapestry` theme is available, under _docs_ in the navigation menu, on its demo site: [https://ghp-tapestry.anirbanbasu.com](https://ghp-tapestry.anirbanbasu.com) and mirrored on Netlify: [https://ghp-tapestry.netlify.app](https://ghp-tapestry.netlify.app).


{% alert(type="info", title="Some things to keep in mind") %}

- The `tapestry` theme is still in its early stages of development.
- This website uses the `tapestry` theme with the presentation style switcher disabled.
- A pre-determined style and its variant is chosen, which changes from time to time. The currently active one named below with its colour palette.

{{ presentation_palette() }}

{% end %}

## The future

I am trying out other designs, so new themes are bound to emerge in the future.
