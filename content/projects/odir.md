+++
title = "Ollama Downloader in Rust (ODIR)"
description = "Ollama Downloader in Rust (ODIR) is a command-line tool written in Rust for downloading models from Ollama"
date = 2026-04-18

[taxonomies]
tags = ["software", "rust", "ollama", "local-ai", "artificial-intelligence", "downloader", "tool", "command-line-tool"]
categories = ["open-source"]
+++

[Ollama](https://ollama.com/) is an open-source tool that faciliates the user to download and run large language models (LLMs) such as Llama 3, Mistral, and Gemma on a local computer. It acts as a lightweight runtime and model manager, making it easy to use artificial intelligence (AI) models without relying on cloud services. It does have the capability to run some models on the Ollama cloud too.

## A bit of background

While `ollama pull <model:tag>` mostly works, there is a documented problem, see [issue 941](https://github.com/ollama/ollama/issues/941). The crux of the problem is that Ollama fails to pull a model with an error message as follows.

> ```Error: digest mismatch, file must be downloaded again: want sha256:1a640cd4d69a5260bcc807a531f82ddb3890ebf49bc2a323e60a9290547135c1, got sha256:5eef5d8ec5ce977b74f91524c0002f9a7adeb61606cdbdad6460e25d58d0f454```

This is particularly frequent on corporate networks, which typically have man-in-the-middle (MITM) proxies for HTTPS traffic with self-signed certificates.

My solution in August 2025 was to write a command-line tool in Python that downloads the model file directly from the registry, bypassing Ollama's own method of downloading. This led to the [Ollama Downloader](https://github.com/anirbanbasu/ollama-downloader) project. In February 2026, I wanted to port it in Rust for better performance and support more features, such as parallel downloads and resume capability. This led to the creation of Ollama Downloader in Rust or ODIR, pronounced as _oh dear_!

## More information

You can find the following links related to the ODIR project.

 - <a href="https://github.com/anirbanbasu/odir" target="_blank">GitHub repository</a> for the Ollama Downloader in Rust (ODIR) project.
 - <a href="https://crates.io/crates/odir" target="_blank">Rust crate on Crates.io</a> for ODIR.
 - <a href="https://github.com/anirbanbasu/ollama-downloader" target="_blank">GitHub repository</a> of the original Python Ollama Downloader project, _now deprecated_.

{% alert(type="info", title="Want to install it right away?") %}
 If you have the [Rust toolchain installed](https://rust-lang.org/tools/install/), run the following command in your terminal to install ODIR.
   ```bash
   cargo install odir
   ```
 Alternatively, if you have [Homebrew](https://brew.sh/) installed, you can run the following command to install ODIR.
   ```bash
   brew install anirbanbasu/tap/odir
   ```

<details>
<summary>Important notes</summary>

ODIR is meant to work on Linux, including Windows Subsystem for Linux (WSL), and macOS. It may also work on Windows but there are no guarantees.

Always check the project's GitHub repository for the latest installation instructions and updates.

</details>

{% end %}
