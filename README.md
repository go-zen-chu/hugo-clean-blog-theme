# Hugo clean-blog theme

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/go-zen-chu/hugo-clean-blog-theme/master/LICENSE.md)

[Check Hugo sample website hosted on netlify](http://dreamy-hoover-3f3499.netlify.com/)

![Sample Page](./docs/hugo-clean-blog-sample.png)

Hugo theme based on [Start Bootstrap Clean Blog](http://startbootstrap.com/template-overviews/clean-blog/).
Please also see orignal theme → [Start Bootstrap - Clean Blog](https://github.com/startbootstrap/startbootstrap-clean-blog).

## Goal of this theme

- Simple and clean
- Good usability and speed (checking with Google lighthouse)
- Works on [Hugo](https://gohugo.io/documentation/)

## Install

In your Hugo project, type following.

```bash
git submodule add https://github.com/go-zen-chu/hugo-clean-blog-theme.git themes/clean-blog
```

From config.toml of your site, specify

```bash
theme = "clean-blog"
```

## How to develop this theme

### Check how theme works with sample project

```bash
git clone https://github.com/go-zen-chu/hugo-clean-blog-theme-sample
# if you clone repo above you also get stable version theme via submodule
pushd themes/clean-blog
git checkout -b <any-branch-for-development>
# develop your theme
popd
# check updated theme works
hugo serve -D
```

#### Update to latest clean-blog style

```bash
pushd themes/clean-blog
# update to latest tag
make track-version
```

#### Copy css, js and other assets from original bootstrap theme

This theme uses [Start Bootstrap Clean Blog](https://github.com/startbootstrap/startbootstrap-clean-blog), so we bring all static files to this hugo theme.

```bash
pushd themes/clean-blog
make cp-all
```
