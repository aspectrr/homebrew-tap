# aspectrr/tap

Homebrew tap for aspectrr apps.

## Coursework

```bash
brew install --cask --no-quarantine aspectrr/tap/coursework
```

`--no-quarantine` is required: the app is not code-signed/notarized, and
macOS marks quarantined unsigned apps as "damaged" on launch. Homebrew
normally sets the quarantine attribute; this flag skips it.
