# Website content

[![Build and deploy Zola website](https://github.com/anirbanbasu/anirbanbasu.github.io/actions/workflows/publish.yaml/badge.svg)](https://github.com/anirbanbasu/anirbanbasu.github.io/actions/workflows/publish.yaml)

This repository containst the contents for the website [https://www.anirbanbasu.com](https://www.anirbanbasu.com). Experimentation/staging content are typically in the `experimental` branch, and maybe published at [https://anirbanbasu.netlify.app/](https://anirbanbasu.netlify.app/).


## Making changes

Quick changes made through the GitHub web interface to the files in the `content` and `static` directories on the `master` branch will be automatically published to the website. For more significant changes, it is recommended to make changes in a separate branch and create a pull request for review before merging to `master`.

To set up a development environment for the website, follow the instructions below.

1. **Clone the Repository:**
    If you haven't already, clone the ODIR repository to your local machine:

   ```bash
   git clone https://github.com/anirbanbasu/anirbanbasu.github.io.git
   ```

2. **Install necessary tools:**
    - _just_ is a handy command runner, which you can install using [the instructions](https://github.com/casey/just?tab=readme-ov-file#installation).
    - _prek_ is a fast Rust-based alternative to `pre-commit`, which you can install using [the instructions](https://prek.j178.dev/installation/).
    - _osv-scanner_ is a tool for scanning dependencies for vulnerabilities, which you can install using [the instructions](https://google.github.io/osv-scanner/installation/). _Note that this is not really necessary because the website does not have dependencies similar to a software program or a library, but it is a good practice to have it set up for any future additions._

3. **Set up pre-commit hooks:**
   To ensure code quality and consistency, we use `pre-commit` hooks. You can set them up by running:

   ```bash
   just install-pre-commit-hooks
   ```

   Note that in the future, there may be better ways to do this, based on the [just released version 2.54 of `git`](https://gitlab.com/git-scm/git/-/blob/HEAD/Documentation/RelNotes/2.54.0.adoc).

4. **Check available `just` recipes:**
   You can check the available `just` recipes for various development tasks by running:

   ```bash
   just -l
   ```

5. **Serve the website locally:**
   To serve the website locally and see your changes in real-time, run:

    ```bash
    just serve
    ```

    This will start a local development server, and you can access the website at `http://localhost:1111`. The server will automatically reload whenever you make changes to the content or static files.

## License

- **Content:** All rights reserved. No part of the articles or personal media on this site may be reproduced without permission.
- **Site source:** The configuration and layout are proprietary, though based on open-source foundations.

## Credits and third-party assets

This site is built using the following open-source components:

- **Theme:** Based on [terminus](https://github.com/ebkalderon/terminus) for [Zola](https://www.getzola.org/).
- **Fonts and icons:** Included as part of the theme. Additional [Font Awesome Free](https://fontawesome.com) assets, if any, are within the `static` directory and its sub-directories.
