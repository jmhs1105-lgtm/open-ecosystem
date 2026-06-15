# yt-dlp Policy

## Purpose

yt-dlp is allowed ONLY for:
1. Downloading your own content
2. Educational material (public, free)
3. Authorized content with permission
4. Technical research (with documentation)

## NOT Allowed

- Evading payments or paywalls
- Breaking DRM
- Downloading private/paid content
- Pirating copyrighted material
- Any illegal use

## Safe Usage

```bash
# Download own video (example)
yt-dlp "https://youtube.com/watch?v=YOUR_VIDEO_ID"

# Extract audio for transcription (own content)
yt-dlp -x --audio-format mp3 "https://youtube.com/watch?v=YOUR_VIDEO_ID"

# List formats
yt-dlp -F "https://youtube.com/watch?v=YOUR_VIDEO_ID"
```

## Documentation Required

For each download:
- Source URL
- Purpose (why)
- Authorization (if needed)

## Validation

- [ ] Content is yours OR public/educational
- [ ] Purpose documented
- [ ] No DRM bypass
- [ ] No payment evasion
