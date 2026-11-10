# Homebrew tap for Claude Usage

[Claude Usage](https://github.com/israelio/claude-usage-widget) is a native macOS menu bar app (plus desktop widgets) that shows your Claude Code usage.

```sh
brew install --cask israelio/tap/claude-usage
```

The app is signed with a Developer ID and notarized, and it updates itself, so `brew upgrade` leaves it alone unless you pass `--greedy`. To remove it and its data: `brew uninstall --zap --cask claude-usage`.

The cask is updated automatically by the app's release script.
