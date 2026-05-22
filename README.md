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

Open <http://localhost:8080>.

## Links

- **Project:** [github.com/hrodrig/gghstats](https://github.com/hrodrig/gghstats)
- **Releases:** [gghstats releases](https://github.com/hrodrig/gghstats/releases)
- **Self-hosted (Compose / Helm):** [gghstats-selfhosted](https://github.com/hrodrig/gghstats-selfhosted)

## Automatic cask updates

On each **gghstats** release (`v*` tag on `main`), GoReleaser can commit an updated cask here when the **gghstats** repo has the Actions secret `HOMEBREW_TAP_TOKEN` (PAT with `contents:write` on this repository).
