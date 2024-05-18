---
layout: mini
permalink: /n/prettier.html
sitemap: false
---

Links to prettier packages I use with `pre-commit` for easier checking of
latest versions for manual updates, especially when autoupdate uses unstable
versions.

- [prettier](https://www.npmjs.com/package/prettier)
- [prettier-plugin-nginx](https://www.npmjs.com/package/prettier-plugin-nginx)
- [@prettier/plugin-ruby](https://www.npmjs.com/package/@prettier/plugin-ruby)
- [prettier-plugin-toml](https://www.npmjs.com/package/prettier-plugin-toml)
- [@prettier/plugin-xml](https://www.npmjs.com/package/@prettier/plugin-xml)

## sample pre-commit-config.yaml

```yaml
repos:
  - repo: https://github.com/pre-commit/mirrors-prettier
    rev: "v4.0.0-alpha.8"
    hooks:
      - id: prettier
        #exclude_types: [json]
        additional_dependencies: [
            # https://aminda.eu/n/prettier
            "prettier@3.1.1",
            "prettier-plugin-nginx@1.0.3",
            "@prettier/plugin-ruby@4.0.4",
            "prettier-plugin-toml@2.0.1",
            "@prettier/plugin-xml@3.2.2",
          ]
```
