# Homebrew tap for Nerdwave

[Nerdwave](https://github.com/grumpitect/nerdwave) is a free, open-source menu bar music player for streamers.

```bash
brew tap grumpitect/nerdwave
brew trust grumpitect/nerdwave
brew install --cask nerdwave
```

Homebrew asks you to trust third-party taps once (`brew trust`). Update later with `brew upgrade --cask nerdwave`. Nerdwave is not notarized by Apple, so the first launch needs
**System Settings > Privacy & Security > Open Anyway** once.

This tap is updated automatically by Nerdwave's release script.
