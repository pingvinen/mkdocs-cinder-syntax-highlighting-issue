# Syntax highlighting not working with MkDocs Cinder theme

Related to <https://github.com/chrissimpkins/cinder/issues/90>.

Using `MkDocs 1.1.1` with the `Cinder 1.0.3` theme makes syntax highlighting go away.

This repository is a clean representation of my actual setup.

Simply do `docker-compose up -d` and go to <http://localhost:8000> to see the result.


## Solution

Turns out that my expectations were wrong. Since syntax highlighting is enabled by default with the default theme, I was expecting that to also be true for `Cinder` - that asummption was wrong.

So now the theming part should be:

```yaml
theme:
    name: cinder
    highlightjs: true
```
