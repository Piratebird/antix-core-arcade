# antix-core-arcade

This project was a pain in the ass, tbh.

## Story Time
I had an old junk PC—a Pentium 4 with DDR2 RAM and only 1GB of total memory—and I really wanted to make this bozo work.

After trying to install Lakka (which didn't work) and antiX Full (which also didn't work), I finally landed on antiX Core. After a lot of trial and error, some shell-fu, and pure determination, I managed to turn it into a functional, semi-retro console.

## The Stack
* **OS:** antiX Core (Debian Trixie base)
* **Init System:** runit
* **Display/WM:** IceWM (X11)
* **Emulator:** RetroArch
* **Hardware:** Intel Pentium 4 (3.2GHz), 1GB RAM, VIA Chrome 9 Graphics

## Why this is here
This repository contains the configuration files, startup scripts, and setup notes needed to replicate this "retro-console" experience on extremely constrained hardware. 

It handles:
- Automatic X server startup (IceWM).
- Hard-coded fullscreen RetroArch configuration.
- Custom menu integration for quick access.
- Lightweight emulation optimization (SNES, Genesis, NES).

## Project Structure
- `dotfiles/`: User environment files (`.profile`, `.bashrc`, etc.).
- `config/`: Configuration for `icewm` and `retroarch`.
- `system/`: Root-level configurations (e.g., `slim.conf`).
- `assets/`: The project wallpaper.

## Warning
The Pentium 4 is legendary, but it has limits. This setup is optimized for 8-bit and 16-bit consoles (NES, SNES, Genesis). Do not expect playable PS1 emulation on this hardware—it will be a slideshow.
