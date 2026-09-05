# aspectrr/tap

Homebrew tap for aspectrr apps.

## Coursework

```bash
brew install --cask aspectrr/tap/coursework
xattr -dr com.apple.quarantine /Applications/Coursework.app
```

The `xattr` line is required: the app is not code-signed/notarized, and
macOS marks quarantined unsigned apps as "damaged" on launch. Homebrew 6
removed `--no-quarantine` and ignores in-cask quarantine strips, so the
attribute has to be cleared once, manually. Sign + notarize the app and
this step goes away.
