# Homebrew Tap for fullsend

Homebrew formula for installing [fullsend](https://github.com/fullsend-ai/fullsend), the fully autonomous agentic development platform for GitHub-hosted organizations.

## Install

`fullsend` lives in a third-party (non-official) tap. Recent Homebrew versions
ask you to explicitly **trust** a tap before installing from it by short name,
since tapping loads the formula's Ruby code from this repository.

### Quick install (fully-qualified name)

```sh
brew install gklein/fullsend/fullsend
```

### Tap, trust, then install

```sh
brew tap gklein/fullsend
brew trust --formula gklein/fullsend/fullsend
brew install fullsend
```

`brew trust --formula …` trusts only the `fullsend` formula, which is the
recommended approach. If you'd rather trust everything in this tap — now and in
the future — you can trust the whole tap instead:

```sh
brew trust gklein/fullsend
```

You can review or revoke trust at any time:

```sh
brew trust                      # list trusted entries
brew untrust gklein/fullsend    # stop trusting
```

> **Note:** Explicit tap trust becomes mandatory in Homebrew 5.2.0 / 6.0.0
> (whichever lands first). To opt in early and verify these steps work, set
> `HOMEBREW_REQUIRE_TAP_TRUST=1`.

## Upgrade

```sh
brew upgrade fullsend
```

## How it works

This tap pulls pre-built binaries from [fullsend releases](https://github.com/fullsend-ai/fullsend/releases). A daily GitHub Actions workflow automatically updates the formula when a new release is published.

Installing via Homebrew also bypasses the macOS Gatekeeper warning that blocks unsigned binaries downloaded through a browser.
