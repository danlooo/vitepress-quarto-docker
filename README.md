# vitepress-quarto-docker: Reproducible polyglot documentation

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/danlooo/vitepress-quarto-docker/HEAD)

Writing static websites containing code notebooks in various programming languages.

## Motivation

- The vast majority of code notebooks are not reproducible
- Facilitate FAIR principles: multiple programming languages (interoperable) with reproducible code (reuse)

## Get Started

1. clone this repo
1. write documentation in directory docs
1. update environment in directory envs
1. activate github pages in the repository settings: set to actions

```{bash}
git clone https://github.com/danlooo/vitepress-quarto-docker
cd vitepress-quarto-docker
source run.sh
```

## Set code execution environment

### R

- uses renv
- https://rstudio.github.io/renv/articles/faq.html#capturing-all-dependencies
