# ScreenGIF for macOS

Lightweight macOS menu bar app for recording part of your screen and exporting animated GIFs.

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

## Before You Start

ScreenGIF needs one extra tool before it can create GIF files:

- **Homebrew**: a trusted app installer for macOS
- **ffmpeg**: the tool ScreenGIF uses to build the final GIF

If you have never heard of either of these, that is completely fine.
You do not need to install them by hand if you do not want to.

Use this file first:

- `ffmpeg_setup.command`

What it does:

1. Checks whether Homebrew is already installed
2. Checks whether ffmpeg is already installed
3. Asks before installing anything
4. Can open the official Homebrew website if you want to read about it first
5. May ask for your Mac administrator password during installation

That password prompt is normal when installing software on macOS.

---

## Current Release

- Version: `1.0.0`
- DMG asset: `ScreenGIF-1.0.0.dmg`

---

## Requirements

- macOS 13.0 (Ventura) or later
- `ffmpeg` installed on your Mac

If you prefer to install things yourself, you can:

- visit the official Homebrew website: [brew.sh](https://brew.sh/)
- then install ffmpeg in Terminal with:

  ```bash
  brew install ffmpeg
  ```

---

## Install

### Step 1: Install ffmpeg

1. In this folder, double-click `ffmpeg_setup.command`
2. A Terminal window will open
3. Follow the questions on screen
4. If Homebrew or ffmpeg is missing, the setup helper can install them for you
5. When setup is finished, you can leave Terminal

### Step 2: Install ScreenGIF

1. Open `ScreenGIF-1.0.0.dmg`
2. Drag **ScreenGIF.app** into **Applications**
3. Eject the DMG

Before opening the app for the first time, make sure `ffmpeg` is installed.
If needed, run `ffmpeg_setup.command` first.

Because this build is not Apple-signed or notarized yet, macOS may block the first launch.

If that happens:

1. Open **Applications**
2. **Right-click** `ScreenGIF.app`
3. Click **Open**
4. Click **Open** again in the confirmation dialog

If macOS still blocks it:

- Open **System Settings > Privacy & Security**
- Scroll down
- Click **Open Anyway**

---

## First Launch

### Step 3: Allow Screen Recording

When you open ScreenGIF for the first time, macOS will ask for **Screen Recording** permission.

1. Open the privacy settings when prompted
2. Enable ScreenGIF in **System Settings > Privacy & Security > Screen Recording**
3. Quit and relaunch the app

After that, ScreenGIF is ready to use.

---

## Main Features

- Menu bar screen recording workflow
- Freeform, Fixed Size, Aspect Ratio, and Snap to Window capture modes
- Floating click-to-stop recording pill
- GIF preview window with trim filmstrip
- Quality controls for FPS, colors, dithering, and resolution
- Original / After workflow for comparing source and built GIFs
- Export flow with recent GIF history

---

## Known Limitations

- This build is ad-hoc signed only, not notarized
- `ffmpeg` is required and is not bundled inside the app
- Multi-monitor vertical-layout edge cases have not been fully tested yet

---

## Included In This Folder

- `ScreenGIF-1.0.0.dmg`
- `ffmpeg_setup.command`
- `RELEASE_NOTES_1.0.0.md`
- `LICENSE`

---

## License

See [LICENSE](LICENSE).
