# homebrew-sciclaw

Homebrew tap for installing `sciclaw`.

## Status: Deprecated

`sciclaw` and its dependencies now live in a single general-purpose tap:

- `drpedapati/tap` (repo: `drpedapati/homebrew-tap`)

This repo is kept for backwards compatibility, but new installs should switch to the single-tap flow below.

## Install (recommended)

```bash
brew tap drpedapati/tap
brew install drpedapati/tap/sciclaw
```

## Upgrade

```bash
brew update
brew upgrade sciclaw
```

## If You Previously Used This Tap

If you have both `drpedapati/sciclaw` and `drpedapati/tap` tapped, Homebrew may report an ambiguity for `sciclaw`.
To resolve, either untap this repo:

```bash
brew untap drpedapati/sciclaw
```

Or use the fully-qualified formula name:

```bash
brew install drpedapati/tap/sciclaw
brew upgrade drpedapati/tap/sciclaw
```
