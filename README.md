# Homebrew Tap for fullsend

Homebrew formula for installing [fullsend](https://github.com/fullsend-ai/fullsend), the fully autonomous agentic development platform for GitHub-hosted organizations.

## Install

```sh
brew install gklein/fullsend/fullsend
```

Or tap first, then install:

```sh
brew tap gklein/fullsend
brew install fullsend
```

## Upgrade

```sh
brew upgrade fullsend
```

## How it works

This tap pulls pre-built binaries from [fullsend releases](https://github.com/fullsend-ai/fullsend/releases). A daily GitHub Actions workflow automatically updates the formula when a new release is published.

Installing via Homebrew also bypasses the macOS Gatekeeper warning that blocks unsigned binaries downloaded through a browser.
