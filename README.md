# Explorer Hugo Theme 🗺️

[![Hugo](https://img.shields.io/badge/hugo-0.85-blue.svg)](https://gohugo.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
![Build with Hugo](https://github.com/bphenriques/explorer-hugo-theme/actions/workflows/test.yml/badge.svg)
![Beta](https://img.shields.io/badge/status-beta-orange.svg)
![Digital Garden](https://img.shields.io/badge/-Digital%20Garden-yellowgreen.svg)

## Overview

This is my personal theme that I am currently using in my [Digital Garden](https://bphenriques.github.io/knowledge-base) (based on [@alex-shpak](https://github.com/alex-shpak)'s [Hugo Book](https://github.com/alex-shpak/hugo-book) theme).

I created this theme to learn more about Hugo theming and web-development, and I am sharing to contribute to the Digital Garden community. Unfortunately, I am not an expert in this area and I have limited availability. If you like this theme feel free to contribute! Thank you!

## Features

In summary, it changes the Hugo Book to use a tag-based/backlink navigation:
- Automatic backlink generation.
- Automatic graph generator to explore one's notes.
- Tag Explorer side-menu to easily find your notes.

Some styling choices and simplificates were were made. Some features I might have removed to simplify things.

## Requirements

- Hugo 0.85 or higher
- Hugo extended version, read more [here](https://gohugo.io/news/0.48-relnotes/)

## Installation

Navigate to your hugo project root and run:

```bash
$ git submodule add https://github.com/bphenriques/explorer-hugo-theme themes/explorer
```

Then either:
- Run hugo with the theme set: `hugo server --minify --theme explorer`
- Set `theme` configuration setting to `explorer`.

## Content Creation

This theme supports two types of content:
- `notes`: holds the main content of your digital garden.
- `posts`: holds blog posts. It is not the main use-case of this theme, so a minimal set of features is provided.

## Configuration

### Site Configuration

There are a few configuration options that you can add to your `config.toml` file.

```toml
# (Optional) Set Google Analytics if you use it to track your website.
# Always put it on the top of the configuration file, otherwise it won't work
googleAnalytics = "UA-XXXXXXXXX-X"

# (Optional) Set this to true to enable 'Last Modified by' date and git author
enableGitInfo = true

[params]
  # (Optional, default light) Sets color theme: light, dark or auto.
  # Theme 'auto' switches between dark and light modes based on browser/os preferences
  Theme = 'dark'

  # (Optional, default to title) Sets the brand's name.
  BrandTitle = 'My Page'

  # (Optional, default true) Controls if the content's menu should be shown.
  ContentMenu = true

  # (Optional, default true) Controls if backlinks should be displayed.
  Backlinks = true

  # (Optional, default true) Controls table of contents visibility on right side of the page.
  # You can also specify this parameter per page in front matter.
  ToC = true

  # (Optional, default none) Set the path to a logo. If the logo is /static/logo.png then the path would be 'logo.png'
  Logo = 'logo.png'

  # (Optional, default January 2, 2006) Configure the date format used to render dates.
  DateFormat = 'January 2, 2006'

  # (Optional, default true) Enables search function with flexsearch,
  # Index is built on fly, therefore it might slowdown your website.
  Search = true
```

### Page Configuration

You can specify additional params in the front matter of individual pages:

```toml
# Use either type 'notes' or 'posts'
type = 'notes'

# (Optional) Set 'false' to hide ToC from page
ToC = true

tags = ["tag1", "tag2"]

# (Optional) Set to 'false' to exclude page from search index.
searchExclude = true
```

### Partials

Support in the future. Let me know what you are looking for.

### Extra Customisation

| File                     | Description                                                                           |
| ------------------------ | ------------------------------------------------------------------------------------- |
| `static/favicon.png`     | Override default favicon                                                              |
| `assets/scss/override/_custom.scss`    | Customise or override scss styles                                                     |
| `assets/scss/override/_variables.scss` | Override default SCSS variables                                                       |
| `assets/scss/_fonts.scss`     | Replace default font with custom fonts (e.g. local files or remote like google fonts) |
| `assets/js/mermaid.json`    | Replace Mermaid initialization config                                                 |

### Plugins

There are a few features implemented as plugable `scss` styles. Usually these are features that don't make it to the core but can still be useful.

| Plugin                            | Description                                                 |
| --------------------------------- | ----------------------------------------------------------- |
| `assets/plugins/_scrollbars.scss` | Overrides scrollbar styles to look similar across platforms |

To enable plugins, add `@import "plugins/{name}";` to `assets/_custom.scss` in your website root.

### Hugo Internal Templates

There are a few hugo templates inserted in `<head>`

- [Google Analytics](https://gohugo.io/templates/internal/#google-analytics)
- [Open Graph](https://gohugo.io/templates/internal/#open-graph)

To disable Open Graph inclusion you can create your own empty file `\layouts\_internal\opengraph.html`.
In fact almost empty not quite empty because an empty file looks like absent for HUGO. For example:
```
<!-- -->
```

## Shortcodes

- [Columns](https://bphenriques.github.io/explorer-hugo-theme/notes/shortcode-for-columns/)
- [Details](https://bphenriques.github.io/explorer-hugo-theme/notes/shortcode-for-details/)
- [Hints](https://bphenriques.github.io/explorer-hugo-theme/notes/shortcode-for-hints/)
- [Mermaid](https://bphenriques.github.io/explorer-hugo-theme/notes/shortcode-for-mermaid/)
- KaTeX - Not yet supported.

By default, Goldmark trims unsafe outputs which might prevent some shortcodes from rendering. It is recommended to set `markup.goldmark.renderer.unsafe=true` if you encounter problems.

```toml
[markup.goldmark.renderer]
  unsafe = true
```

# Thank you note

This theme wouldn't be possible without:
- The awesome work done by [@alex-shpak](https://github.com/alex-shpak) in [Hugo Book](https://github.com/alex-shpak/hugo-book) (MIT License).
- Maggie Delano's [Digital Garden](https://www.maggiedelano.com/garden/) for inspiration.
- Several other Digital Gardens.

# Contributing

Refer to [contributing](CONTRIBUTING.md).

