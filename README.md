# homebrew-gghstats

Homebrew tap for [gghstats](https://github.com/hrodrig/gghstats) — self-hosted GitHub repository traffic dashboard and CLI (SQLite, beyond GitHub's 14-day window).

## Install

```bash
brew install hrodrig/gghstats/gghstats
```

Then run locally:

```bash
export GGHSTATS_GITHUB_TOKEN=ghp_xxx
gghstats serve
```

Open <http://localhost:8080> to try the UI. For a **server deployment** (Compose, TLS, observability), use **[gghstats-selfhosted](https://github.com/hrodrig/gghstats-selfhosted)** — not a long-running install from Homebrew alone.

## Links

- **Project:** [github.com/hrodrig/gghstats](https://github.com/hrodrig/gghstats)
- **Releases:** [gghstats releases](https://github.com/hrodrig/gghstats/releases)
- **Self-hosted (Compose / Helm):** [gghstats-selfhosted](https://github.com/hrodrig/gghstats-selfhosted)

## Cask updates

`Casks/gghstats.rb` is updated when a new **gghstats** release is published on GitHub (`v*` tag on `main`).
