#!/bin/bash

set -u

HOMEBREW_URL="https://brew.sh/"
FFMPEG_URL="https://formulae.brew.sh/formula/ffmpeg"

print_header() {
  echo
  echo "============================================================"
  echo " ScreenGIF Setup"
  echo "============================================================"
  echo
}

print_intro() {
  cat <<EOF
ScreenGIF needs one extra tool before it can create GIF files:

- Homebrew: a trusted app installer for macOS
- ffmpeg: the tool ScreenGIF uses to build the final GIF

This setup helper will:
1. Check whether Homebrew is already installed
2. Check whether ffmpeg is already installed
3. Ask before installing anything
4. Explain what is happening as it goes

You may be asked for your Mac admin password during installation.
That is normal when installing software on macOS.
EOF
}

ask_yes_no() {
  local prompt="$1"
  local answer

  while true; do
    echo
    read -r -p "$prompt [y/n]: " answer
    case "$answer" in
      [Yy]|[Yy][Ee][Ss]) return 0 ;;
      [Nn]|[Nn][Oo]) return 1 ;;
      *) echo "Please type y or n." ;;
    esac
  done
}

wait_for_enter() {
  echo
  read -r -p "Press Enter or close this window to finish setup..." _
}

open_website() {
  local url="$1"
  echo
  echo "Opening:"
  echo "$url"
  open "$url"
}

load_homebrew_path() {
  if command -v brew >/dev/null 2>&1; then
    return 0
  fi

  if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    return 0
  fi

  if [ -x /usr/local/bin/brew ]; then
    eval "$(/usr/local/bin/brew shellenv)"
    return 0
  fi

  return 1
}

install_homebrew() {
  echo
  echo "Homebrew is not installed yet."
  echo "Website: $HOMEBREW_URL"

  if ask_yes_no "Would you like to open the Homebrew website first?"; then
    open_website "$HOMEBREW_URL"
    wait_for_enter
  fi

  if ! ask_yes_no "Would you like this setup helper to run the official Homebrew installer now?"; then
    echo
    echo "Homebrew installation skipped."
    echo "You can install it later from:"
    echo "$HOMEBREW_URL"
    return 1
  fi

  echo
  echo "Running the official Homebrew installer..."
  echo "Homebrew will show its own instructions before it starts."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  if ! load_homebrew_path; then
    echo
    echo "Homebrew does not appear to be available yet."
    echo "If installation just finished, try closing Terminal and running this setup helper again."
    return 1
  fi

  echo
  echo "Homebrew is ready."
  return 0
}

install_ffmpeg() {
  echo
  echo "ffmpeg is not installed yet."
  echo "Website: $FFMPEG_URL"

  if ask_yes_no "Would you like to open the ffmpeg package page first?"; then
    open_website "$FFMPEG_URL"
    wait_for_enter
  fi

  if ! ask_yes_no "Would you like to install ffmpeg now with Homebrew?"; then
    echo
    echo "ffmpeg installation skipped."
    echo "ScreenGIF will not be able to build GIFs until ffmpeg is installed."
    return 1
  fi

  echo
  echo "Installing ffmpeg..."
  brew install ffmpeg

  if ! command -v ffmpeg >/dev/null 2>&1; then
    echo
    echo "ffmpeg does not appear to be available yet."
    echo "Try closing Terminal and running this setup helper again."
    return 1
  fi

  echo
  echo "ffmpeg is ready."
  return 0
}

print_success() {
  echo
  echo "Setup complete."
  echo
  echo "You can now open ScreenGIF."
  echo "If ScreenGIF was already open, quit it and launch it again."
}

main() {
  clear
  print_header
  print_intro

  echo
  echo "Checking Homebrew..."
  if load_homebrew_path; then
    echo "Homebrew is already installed."
    brew --version | head -n 1
  else
    if ! install_homebrew; then
      wait_for_enter
      exit 1
    fi
  fi

  echo
  echo "Checking ffmpeg..."
  if command -v ffmpeg >/dev/null 2>&1; then
    echo "ffmpeg is already installed."
    ffmpeg -version | head -n 1
  else
    if ! install_ffmpeg; then
      wait_for_enter
      exit 1
    fi
  fi

  print_success
  wait_for_enter
}

main "$@"
