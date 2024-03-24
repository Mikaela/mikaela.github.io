---
layout: null
permalink: /n/reuse.html
sitemap: false
email: "suomalainen+git@mikaela.info"
---

<!--
SPDX-FileCopyrightText: 2023 Free Software Foundation Europe e.V.
SPDX-FileCopyrightText: 2023 Aminda Suomalainen <suomalainen+git@mikaela.info>

SPDX-License-Identifier: CC-BY-SA-4.0
-->

# REUSE notes

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Adding headers](#adding-headers)
  - [Styles](#styles)
- [Generic commands](#generic-commands)
- [License identifiers I commonly use](#license-identifiers-i-commonly-use)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

> reuse is a tool for compliance with the REUSE recommendations.

says [their GitHub description](https://github.com/fsfe/reuse-tool) and
in practice this means having a license header in all files or alternatively
a `file.license` file. The tool can generate these, but I never remember
the commands.

For more detailed explanation, consult [reuse.software/tutorial](https://reuse.software/tutorial/)

---

## Adding headers

Copy-paste and add file name(s) to the end

```bash
# Autodetect how to add comment?
reuse annotate --copyright="Aminda Suomalainen <{{ page.email }}>" --license="CC0-1.0"
# Create a file.license
reuse annotate --copyright="Aminda Suomalainen <{{ page.email }}>" --license="CC0-1.0" --force-dot-license
# The usual # marks a comment
reuse annotate --copyright="Aminda Suomalainen <{{ page.email }}>" --license="CC0-1.0" --style python
```

Note!

- `--year 2023` can be specified if the date isn't this year.
- `annotate` replaces existing headeer if any, to add before it instead, use
  `--no-replace`

### Styles

- `c` means `//` marks a comment
- `python` means `#` marks a comment
- `html` and `css` explain themselves
- `tex` means `%` marks a comment
- `vim` means `"` marks a comment
- etc. when `style` is empty, supported ones are displayed, but I am unsure
  whether I need more and trying what `reuse` says works too.

## Generic commands

- `reuse download --all` - downloads all licenses found to `LICENSES/`
- `reuse lint` - verifies compliancy
- `reuse supported-licenses | less` - lists supported licenses identifiers

## License identifiers I commonly use

- `CC0-1.0`
- `CC-BY-4.0`
- `CC-BY-ND-4.0`
- `CC-BY-SA-4.0`
- `BSD-3-Clause`
- `EUPL-1.2`

See also [SPDX License List](https://spdx.org/licenses/)

_Viewing source of this page reveals this one to be CC-BY-SA-4.0._
