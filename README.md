# Easy yt-dlp

A simple tool to download YouTube videos and music using yt-dlp. No command-line knowledge required — just enter the URL!

## Getting the App

You can get this tool in two ways:

### 1. Download the ZIP

1. Go to the **Code** button at the top of this repository.
2. Click **Download ZIP**.
3. Extract the ZIP file to any folder on your computer.

### 2. Clone the repository (requires Git)

Open a terminal or command prompt and run:

```bash
git clone https://github.com/Shara-Sh/easy-yt-dlp.git
```

This will create a folder with all the files ready to use.

## Requirements

All necessary files are included in this repo. You only need to download **FFmpeg** from the link below:

- [FFmpeg (FFmpeg Builds for yt-dlp)](https://github.com/yt-dlp/FFmpeg-Builds/releases/tag/latest)

Download `ffmpeg-master-latest-win64-gpl.zip` from that link and extract `ffmpeg.exe` and `ffprobe.exe` into the same folder as `yt-dlp.exe`.

> [!NOTE]
>
> `ffplay.exe` is optional — it can be used to play videos/music, but is not required for downloads.

Included in this repo:

- `yt-dlp.exe`
- `yt-dlp.conf` (video download settings)
- `music.conf` (music/MP3 download settings)
- `start.bat`

can modify these configuration files if needed.

## Browser Requirement

This tool uses YouTube login cookies to handle downloads (including age-restricted/private videos).

By default, it uses Firefox, but you can use any supported browser as long as:

- The browser is installed on your computer.
- You are signed in to YouTube in that browser.

Currently supported browsers:

- `brave`
- `chrome`
- `chromium`
- `edge`
- `firefox`
- `opera`
- `safari`
- `vivaldi`
- `whale`

### Firefox (default)

yt-dlp will automatically use your Firefox cookies via:

```powershell
--cookies-from-browser firefox
```

No extra steps are needed other than being signed in.

### Chrome / Chromium

For Chrome, Chromium, and other Chromium-based browsers, automatic cookie reading is not supported. You need to:

1. Install the [Get Cookies.txt Locally](https://chromewebstore.google.com/detail/get-cookiestxt-locally/cclelndahbckbenkjhflpdbgdldlbecc) extension.
2. Sign in to YouTube in that browser.
3. Click the extension and export your cookies as `cookies.txt`.
4. Place `cookies.txt` in the same folder as `yt-dlp.exe`.
5. Use the following command to download:

```cmd
yt-dlp --cookies "cookies.txt" https://www.youtube.com/watch?v=abc123
```

> [!WARNING]
>
> Cookies expire periodically, so you may need to export them again.

## Usage

1. Run `start.bat`
2. Choose the download type:
   1. Video (best quality)
   2. Music (MP3 format)
3. Enter the YouTube URL and press Enter.
4. The download will start automatically.

## Notes

- All downloads are stored in folders inside the same directory as this tool:
  - Videos → `Downloads/Video`
  - Music → `Downloads/Music`
- Download paths and other options can be changed in `yt-dlp.conf` and `music.conf`.

## Update

If the versions in this repo become outdated, you can manually update:

1. Download the latest `yt-dlp.exe`, `ffmpeg.exe`, `ffprobe.exe` from the links.
2. Replace the old files in the repo folder with the new ones (config files remain unchanged).
3. That’s it — your tool will now use the updated versions.

- [yt-dlp](https://github.com/yt-dlp/yt-dlp/releases)
- [FFmpeg](https://github.com/yt-dlp/FFmpeg-Builds/releases/tag/latest)
