# ScreenGIF 1.0.1

Small stability update for ScreenGIF 1.0.0.

---

## What changed in 1.0.1

- Fixed the Screen Recording permission flow for local / Xcode builds
- Fixed the first-run `ESC` cancel issue in the capture selection overlay
- Fixed preview window close button cleanup so temp frames are not left behind
- Fixed frames directory cleanup when GIF conversion fails
- Added thread-safe access around recording state and frame count
- Added a 60-second timeout for the ffmpeg subprocess so it cannot hang forever
- Updated the README walkthrough and release notes so the app is easier to follow

---

## Notes

- This is an update on top of `1.0.0`, not a new feature release
- Same app requirements as `1.0.0`
- DMG for this version: `ScreenGIF-1.0.1.dmg`
