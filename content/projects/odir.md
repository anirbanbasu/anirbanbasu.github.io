+++
title = "Ollama Downloader in Rust (ODIR)"
description = "Ollama Downloader in Rust (ODIR) is a command-line tool written in Rust for downloading models from Ollama"
date = 2026-04-18

[taxonomies]
tags = ["software", "rust", "ollama", "downloader", "tool", "command-line-tool"]
categories = ["open-source"]
+++

This article offers a sample of basic Markdown syntax that can be used in Zola
content files, also it shows whether basic HTML elements are decorated with CSS
in a Zola theme.

## A bit of background

While `ollama pull <model:tag>` mostly works, there is a documented problem, see [issue 941](https://github.com/ollama/ollama/issues/941). The crux of the problem is that Ollama fails to pull a model with an error message as follows.

> Error: digest mismatch, file must be downloaded again: want sha256:1a640cd4d69a5260bcc807a531f82ddb3890ebf49bc2a323e60a9290547135c1, got sha256:5eef5d8ec5ce977b74f91524c0002f9a7adeb61606cdbdad6460e25d58d0f454

This is particularly frequent on corporate networks, which may have <abbr title="man-in-the-middle">MITM</abbr> proxies with self-signed certificates.

My solution was to write a command-line tool in Python that downloads the model file directly from the registry, bypassing Ollama's own method of downloading. This led to the [Ollama Downloader](https://github.com/anirbanbasu/ollama-downloader) project. However, I wanted to port it in Rust for better performance, which led to the creation of Ollama Downloader in Rust or ODIR, pronounced as _oh dear_!

## Project links

- <a href="https://github.com/anirbanbasu/odir" target="_blank">GitHub repository</a> for the Ollama Downloader in Rust (ODIR) project.
- <a href="https://crates.io/crates/odir" target="_blank">Rust crate on Crates.io</a> for ODIR.
- <a href="https://github.com/anirbanbasu/ollama-downloader" target="_blank">GitHub repository</a> of the original Python Ollama Downloader project, _now deprecated_.
