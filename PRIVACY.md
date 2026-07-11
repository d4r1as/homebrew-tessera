# Privacy

Tessera is built to be trustworthy for an app that can read other apps' screens.

## The short version

**Everything stays on your Mac. Tessera makes no network connections and sends
nothing anywhere.** There is no account, no analytics, no telemetry, no crash
reporting, no server.

## What Tessera accesses, and why

- **Accessibility (reading other apps).** Tessera uses the macOS Accessibility
  API to read one thing from each app you enable: the text of its model picker
  (e.g. "Opus 4.8", "Auto", "5.5"). It does not read your prompts, your code,
  your files, or any other content. It only ever reads — with one exception:

- **Synthetic clicks (ChatGPT "Detect models" only).** ChatGPT's model list is a
  menu that ignores Accessibility actions, so the manual, user-initiated
  "Detect models" button opens that menu with real clicks to read the list of
  available model names. This runs only when you press the button, and only
  touches ChatGPT's model menu.

- **Notifications.** Used solely to alert you when a model drifts.

## What Tessera stores

Only your own settings (which sources to watch, expected models, alert timings),
in standard macOS preferences on your Mac
(`~/Library/Preferences/das.casa.Tessera.plist`). Nothing else is persisted, and
nothing is ever uploaded.

## Debug logging

Off by default. When you enable **Settings → General → Advanced → Debug
logging**, Tessera writes diagnostic lines to a local log file at
`~/Library/Logs/Tessera.log` (and the unified system log) to help troubleshoot
detection. The file is capped at about 1 MB, stays entirely on your Mac, and is
never uploaded. Turn the toggle off to stop writing; you can reveal or delete
the file at any time from **Settings → General → Advanced → Reveal log in Finder**.
