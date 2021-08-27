# Tag Digital Garden Hugo Theme

[![Hugo](https://img.shields.io/badge/hugo-0.68-blue.svg)](https://gohugo.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
![Build with Hugo](https://github.com/bphenriques/tagged-notes-hugo-theme/workflows/Build%20with%20Hugo/badge.svg)

## Features

- Clean simple design
- Light and Mobile-Friendly
- Backlinks
- Explorable graph
- Colorized Tags
- Primary features work without JavaScript
- Dark Mode

## Requirements

- Hugo 0.68 or higher
- Hugo extended version, read more [here](https://gohugo.io/news/0.48-relnotes/)

## Installation

Navigate to your hugo project root and run:

```bash
$ git submodule add https://github.com/bphenriques/tagged-notes-hugo-theme themes/tagged-notes-hugo-theme
```

Then either:
- Run hugo with the theme: `hugo server --minify --theme tagged-notes-hugo-theme`
- Set `theme` configuration setting to `tagged-notes-hugo-theme`.

## Blog

This theme supports blog posts under the section `posts`. Given that it is not the main use-case of this theme, it only
supports minimal features.

## Configuration

### Site Configuration

There are a few configuration options that you can add to your `config.toml` file.  
You can also see the `yaml` example [here](https://github.com/alex-shpak/hugo-book/blob/master/exampleSite/config.yaml).

```toml
# (Optional) Set Google Analytics if you use it to track your website.
# Always put it on the top of the configuration file, otherwise it won't work
googleAnalytics = "UA-XXXXXXXXX-X"

# (Optional) Set this to true to enable 'Last Modified by' date and git author
enableGitInfo = true

[params]
  # (Optional, default light) Sets color theme: light, dark or auto.
  # Theme 'auto' switches between dark and light modes based on browser/os preferences
  BookTheme = 'dark'

  # (Optional, default to title) Sets the brand's name.
  BrandTitle = 'Bruno Henriques'

  # (Optional, default true) Controls table of contents visibility on right side of pages.
  # You can also specify this parameter per page in front matter.
  ToC = true

  # (Optional, default none) Set the path to a logo for the book. If the logo is
  # /static/logo.png then the path would be 'logo.png'
  BookLogo = 'logo.png'

  # Set source repository location.
  # Used for 'Last Modified' and 'Edit this page' links.
  BookRepo = 'https://github.com/alex-shpak/hugo-book'
  
  # Enable 'Edit this page' links for 'doc' page type.
  # Disabled by default. Uncomment to enable. Requires 'BookRepo' param.
  # Path must point to the site directory.
  BookEditPath = 'edit/master/exampleSite'

  # (Optional, default Jan 2, 2006) Configure the date format used to render dates.
  DateFormat = 'Jan 2, 2006'

  # (Optional, default true) Enables search function with flexsearch,
  # Index is built on fly, therefore it might slowdown your website.
  Search = true
```

### Page Configuration

You can specify additional params in the front matter of individual pages:

```toml
# Set type to 'docs' if you want to render page outside of configured section or if you render section other than 'docs'
type = 'docs'

# (Optional) Set 'false' to hide ToC from page
ToC = true

# (Optional) Set to 'false' to exclude page from search index.
searchExclude = true
```

### Partials

Support in the future. Let me know what you are looking for.

### Extra Customisation

| File                     | Description                                                                           |
| ------------------------ | ------------------------------------------------------------------------------------- |
| `static/favicon.png`     | Override default favicon                                                              |
| `assets/_custom.scss`    | Customise or override scss styles                                                     |
| `assets/_variables.scss` | Override default SCSS variables                                                       |
| `assets/_fonts.scss`     | Replace default font with custom fonts (e.g. local files or remote like google fonts) |
| `assets/mermaid.json`    | Replace Mermaid initialization config                                                 |

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

- [Columns](https://bphenriques.github.io/tagged-notes-hugo-theme/notes/shortcode-for-columns/)
- [Details](https://bphenriques.github.io/tagged-notes-hugo-theme/notes/shortcode-for-details/)
- [Hints](https://bphenriques.github.io/tagged-notes-hugo-theme/notes/shortcode-for-hints/)
- [Mermaid](https://bphenriques.github.io/tagged-notes-hugo-theme/notes/shortcode-for-mermaid/)
- [Tabs](https://bphenriques.github.io/tagged-notes-hugo-theme/notes/shortcode-for-tabs/)
- KaTeX - Not yet supported.

By default, Goldmark trims unsafe outputs which might prevent some shortcodes from rendering. It is recommended to set `markup.goldmark.renderer.unsafe=true` if you encounter problems.

```toml
[markup.goldmark.renderer]
  unsafe = true
```

# Contributing 

Refer to [contributing](CONTRIBUTING.md).

