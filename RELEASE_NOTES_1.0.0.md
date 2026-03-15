# ScreenGIF 1.0.0

First release of ScreenGIF, a lightweight macOS menu bar app for recording part of your screen and exporting it as an animated GIF.

---

## A little note from me :D

Hi, I'm Samittra.

I do design / technical stuff lately, mostly around finance and animation / VFX.
I made this for myself first to be honest, then thought maybe I should just leave it here too in case it helps somebody.

I do a lot of tutorials and docs for my students, and static screenshots were just not enough sometimes.
So I made this over a couple of weekends in Swift because I use Mac anyway lol.

Sorry if it feels a bit awkward here and there.
I do want to pay 99$ as Apple Dev member properly later, but for now I would rather keep that money for my new monitor first.

If you catch a bug in my app, please tell me directly:

- `samitt.watt@gmail.com`

Hope it helps. :D

---

## Included in This Release

- Menu bar screen recording workflow
- Freeform, Fixed Size, Aspect Ratio, and Snap to Window capture modes
- Floating recording indicator with click-to-stop control
- GIF preview window with trim filmstrip
- Quality controls for FPS, colors, dithering, and resolution
- Original / After workflow for comparing the source and built GIF
- Export flow with recent GIF history

---

## Requirements

- macOS 13.0 or later
- `ffmpeg` installed on your Mac
- Screen Recording permission granted in macOS

If you are not comfortable installing it yourself, use:

- `ffmpeg_setup.command`

Install `ffmpeg` with:

```bash
brew install ffmpeg
```

---

## Install

1. Open `ScreenGIF-1.0.0.dmg`
2. Drag `ScreenGIF.app` into `Applications`
3. Eject the DMG

Before using the app for the first time, make sure `ffmpeg` is installed.
If needed, run `ffmpeg_setup.command` first.

Because this release is not Apple-signed or notarized yet, macOS may block the first launch.

If that happens:

1. Open `Applications`
2. Right-click `ScreenGIF.app`
3. Click `Open`
4. Click `Open` again in the confirmation dialog

If needed, go to:

- `System Settings > Privacy & Security`
- Scroll down
- Click `Open Anyway`

---

## First Launch

When ScreenGIF starts for the first time, macOS will ask for Screen Recording permission.

1. Click through to System Settings
2. Enable ScreenGIF under `Privacy & Security > Screen Recording`
3. Quit and reopen the app

---

## Known Limitations

- This build is ad-hoc signed only, not notarized
- `ffmpeg` is required and is not bundled inside the app
- Multi-monitor vertical-layout edge cases have not been fully tested yet

---

## Notes

This build is designed to be simple to install, but because it is not Apple-signed yet, macOS may show extra security prompts on first launch.
