# homebrew-tessera

Homebrew tap for **Tessera** — a menu-bar watchdog that alerts when your AI
tools drift off their expected model.

## Install

```sh
brew tap d4r1as/tessera
brew trust d4r1as/tessera        # one-time: trust this third-party tap
brew install --cask tessera
```

On first launch macOS blocks it (not notarized yet) — approve once via
**System Settings → Privacy & Security → "Open Anyway"**, or run:

```sh
xattr -dr com.apple.quarantine "/Applications/Tessera.app"
```

Then grant Accessibility and Notifications when the setup wizard asks.

## Uninstall

```sh
brew uninstall --cask tessera
```
