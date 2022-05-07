# Hugo clean-blog theme

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/go-zen-chu/hugo-clean-blog-theme/master/LICENSE.md)

[Check Hugo sample website hosted on netlify](http://dreamy-hoover-3f3499.netlify.com/)

![Sample Page](./docs/hugo-clean-blog-sample.png)

Hugo theme based on [Start Bootstrap Clean Blog](http://startbootstrap.com/template-overviews/clean-blog/). Please also see [Start Bootstrap - Clean Blog](https://github.com/startbootstrap/startbootstrap-clean-blog).

## Goal of this theme

- Simple and clean
- Good usability and speed (checking with Google lighthouse)
- Works on [Hugo](https://gohugo.io/documentation/)

## Install

In your Hugo project, type following.

```bash
git submodule add https://github.com/Go-zen-chu/hugo-clean-blog-theme.git themes/clean-blog
```

From config.toml of your site, specify

```bash
theme = "clean-blog"
```

## How to develop this theme

### Update to latest clean-blog style

```bash
vim Makefile
# update to latest tag
make track-version
```

### Copy css, js and other assets from original theme

This theme uses [Start Bootstrap Clean Blog](https://github.com/startbootstrap/startbootstrap-clean-blog), so we need to bring all static things to this theme.

```bash
make cp-all
```
