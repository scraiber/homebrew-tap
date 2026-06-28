# Scraiber Homebrew Tap

Homebrew tap for the [Scraiber](https://app.scraiber.com) desktop app (macOS).

## Install

```bash
brew install --cask scraiber/tap/scraiber
```

## Update

The app updates itself via Scraiber's built-in updater. To update the Homebrew
metadata:

```bash
brew update && brew upgrade --cask scraiber
```

The cask in `Casks/scraiber.rb` points at the signed + notarized `.dmg` attached
to each [`scraiber-frontend` release](https://github.com/scraiber/scraiber-frontend/releases).
It is bumped automatically on every release.
