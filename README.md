# 🍺 eshu-brew

Homebrew Tap for the [eshu](https://github.com/Moniepoint/eshu) CLI.

## Installation

```bash
# Add the tap
brew tap Moniepoint/homebrew-eshu

# Confirm the formula is visible
brew search eshu
brew info eshu

# Install
brew install eshu

# Verify
brew test eshu
eshu version
```

## Upgrading

```bash
brew update && brew upgrade eshu
```

## Uninstall

```bash
brew uninstall eshu
brew untap Moniepoint/homebrew-eshu
```

---

## Troubleshooting

### Checksum mismatch

If you see `Error: Formula reports different checksum`, the formula may be stale in your local tap cache.

```bash
# Clear the download cache for eshu
rm -f "$(brew --cache)/downloads/"*eshu*

brew cleanup eshu 2>/dev/null; rm -f ~/Library/Caches/Homebrew/downloads/*eshu* 2>/dev/null
brew install eshu
```

### Tap formula is out of date

If the tap was already installed and a new formula version was pushed:

```bash
brew update
brew reinstall eshu
```

To check which formula version Homebrew is currently reading:

```bash
brew info eshu
cat $(brew formula eshu)
```

### Full reinstall on a clean state

```bash
brew uninstall eshu
rm -f "$(brew --cache)/downloads/"*eshu*
brew untap Moniepoint/homebrew-eshu
brew tap Moniepoint/homebrew-eshu
brew install eshu
```
