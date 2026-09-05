# aspectrr/tap

Homebrew tap for aspectrr apps.

## Coursework

```bash
brew install --cask aspectrr/tap/coursework
```

The cask strips the quarantine attribute post-install because the app is
not code-signed/notarized — macOS marks quarantined unsigned apps as
"damaged" on launch. (Homebrew 6 removed `--no-quarantine`.)
