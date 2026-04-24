+++
title = "ARI"
description = "ARI is an experimental user-space implementation of the Recursive InterNetwork Architecture (RINA)."
date = 2026-01-16
updated = 2026-04-24

[taxonomies]
tags = ["software", "prototype", "rust", "network-architecture", "rina", "experimental"]
categories = ["open-source"]
+++

<a href="https://github.com/anirbanbasu/ari" target="_blank"><button>Code repository</button></a>

> The Recursive InterNetwork Architecture (RINA) is a new computer network architecture proposed as an alternative to the architecture of the currently mainstream Internet protocol suite. The principles behind RINA were first presented by John Day in his 2008 book _Patterns in Network Architecture: A return to Fundamentals_.
>
> — <cite>Wikipedia[^1]</cite>

[^1]: Wikipedia article on [Recursive InterNetwork Architecture](https://en.wikipedia.org/wiki/Recursive_Internetwork_Architecture), accessed on April 18, 2026.

ARI is an early-stage research prototype implementation of the Recursive InterNetwork Architecture (RINA) in Rust. The aim of the project is to provide a RINA implementation atop existing network infrastructure (e.g., using UDP) to facilitate experimentation and research in RINA concepts and principles. The project is still in its early stages, and the implementation is not yet fully functional or feature-complete.

You can find the following links related to the ARI project.

- <a href="https://github.com/anirbanbasu/ari" target="_blank">GitHub repository</a> for the ARI project.

{% alert(type="danger", title="Implementation objective") %}
ARI is a user-space implementation for experimentation with research concepts that can make use of RINA as well as for the exploration of RINA itself. It is not intended to be a kernel-level production-ready implementation of RINA, and it may not be designed for optimal performance or security.
{% end %}
