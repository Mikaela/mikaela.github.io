---
layout: mini
permalink: /n/prettier.html
sitemap: true
robots: noai
lang: en
title: Prettier packages I use
excerpt: I use them both directly, and within pre-commit
---

_{{ page.excerpt }}_

<!-- editorconfig-checker-disable -->
<!-- prettier-ignore-start -->

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<em lang="fi">Automaattinen sisällysluettelo</em> / <em lang="en">Automatically generated Table of Contents</em>

- [The packages](#the-packages)
- [Installation](#installation)
- [Configuration](#configuration)
- [`.pre-commit-config.yaml`](#pre-commit-configyaml)
  - [Offline](#offline)
- [Further information](#further-information)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- prettier-ignore-end -->
<!-- editorconfig-checker-enable -->

## The packages

- [@prettier/plugin-ruby](https://www.npmjs.com/package/@prettier/plugin-ruby)
- [@prettier/plugin-xml](https://www.npmjs.com/package/@prettier/plugin-xml)
- [prettier](https://www.npmjs.com/package/prettier)
- [prettier-plugin-nginx](https://www.npmjs.com/package/prettier-plugin-nginx)
- [prettier-plugin-sh](https://www.npmjs.com/package/prettier-plugin-sh)
- [prettier-plugin-toml](https://www.npmjs.com/package/prettier-plugin-toml)

## Installation

1. `corepack pnpm install -D -E prettier@latest prettier-plugin-nginx@latest @prettier/plugin-ruby@latest prettier-plugin-toml@latest @prettier/plugin-xml@latest prettier-plugin-sh@latest`
   or probably just `corepack pnpm install -D` if it's not your project.
1. If they don't exist already
   `echo "{}" > .prettierrc && touch .prettierignore`
1. `corepack pnpm exec prettier . --write` or
   `corepack pnpm exec prettier . --check`

## Configuration

I do with `.editorconfig` what I can, but for example my template
`.prettierrc.json` looks like this. I use pre-commit's pretty-format-json, while
the one included on this page gets managed by prettier.

```json
{
  "bracketSameLine": true,
  "endOfLine": "auto",
  "insertPragma": true,
  "overrides": [
    {
      "files": ".prettierrc",
      "options": {
        "parser": "json"
      }
    },
    {
      "files": "conf/librewolf.overrides.cfg",
      "options": {
        "parser": "babel"
      }
    },
    {
      "files": "conf/autoconfig.js.online",
      "options": {
        "parser": "babel"
      }
    }
  ],
  "plugins": [
    "@prettier/plugin-ruby",
    "@prettier/plugin-xml",
    "prettier-plugin-nginx",
    "prettier-plugin-sh",
    "prettier-plugin-toml"
  ],
  "proseWrap": "always",
  "quoteProps": "consistent",
  "requirePragma": false,
  "singleAttributePerLine": true
}
```

See the documentation linked on the bottom, but here are some explanations
anyway:

- `bracketSameLine: true` - HTML tags closing on the same line as something else
  just looks so much better for my eyes.
- `endOfLine: auto` - The default is `lf` line-endings, which I support in
  general, but I think `prettier` is the wrong place to configure it. I have it
  in `.gitattributes` which will take priority on check-in and `.editorconfig`.
- `insertPragma: true` - adds a comment on files formatted
- `overrides` and `plugins` - self-explanatory, but if not see the documentation
  (bottom of the page). I know I don't actually have `.prettierrc` as it's
  `.prettierrc.json`, but it doesn't seem to hurt and `babel` seems to be used
  for JavaScript by default, which those two are regardless of the name.
- `proseWrap: always` - wraps long markdown lines as individual newlines don't
  matter (two begin a new paragraph).
- `quoteProps: consistent` - quotes things if anything is quoted.
- `requirePragma: false` - the other side of `insertPragma: true`, it's here as
  a note to self.
- `singleAttributePerLine: true` - I just think it looks better.

## `.pre-commit-config.yaml`

This is the file that controls [`pre-commit`]s behaviour.

### Offline

I accidentally wrote this while updating this page to reflect me using prettier
outside of [`pre-commit`] too nowadays. This has the advantage that the same
local environment gets reused and dependencies are managed centrally, but
assumes everyone uses pnpm, won't work in [`pre-commit` ci] and may have other
issues I am not thinking of as a not-coder myself.

[`pre-commit`]: https://pre-commit.com
[`pre-commit` ci]: https://pre-commit.ci

```yaml
ci:
  skip: [pnpm-install-dev, prettier]

repos:
  - repo: local
    hooks:
      - id: pnpm-install-dev
        name: Install pnpm dev dependencies
        entry: corepack pnpm install -D
        language: system
        always_run: true
        #verbose: true
        pass_filenames: false
      - id: prettier
        name: prettier
        entry: corepack pnpm exec prettier --cache --ignore-unknown --write
        language: system
        # Better handled by pretty-format-json from pre-commit-hooks.
        # Remember to have *.json in .prettierignore!
        #exclude_types: [json]
```

<!--

### Online

```yaml
repos:
  #- repo: https://github.com/pre-commit/mirrors-prettier
  - repo: https://github.com/rbubley/mirrors-prettier
    rev: "v3.3.1"
    hooks:
      - id: prettier
        # Better handled by pretty-format-json from pre-commit-hooks.
        # Remember to have *.json in .prettierignore!
        exclude_types: [json]
        additional_dependencies: [
            # https://aminda.eu/n/prettier
            "prettier@3.3.1",
            "prettier-plugin-nginx@1.0.3",
            "@prettier/plugin-ruby@4.0.4",
            "prettier-plugin-toml@2.0.1",
            "@prettier/plugin-xml@3.4.1",
          ]
```

-->

## Further information

- [prettier docs install](https://prettier.io/docs/en/install)
- [prettier parser options](https://github.com/prettier/prettier/blob/main/docs/options.md#parser)
- [corepack docs](https://nodejs.org/api/corepack.html)
- [corepack readme](https://github.com/nodejs/corepack/blob/main/README.md)
