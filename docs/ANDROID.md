# Android Development — Environment & Plan

## Environment Status

| Component | Status | Details |
|---|---|---|
| JDK | ✅ | OpenJDK 17.0.19 (Homebrew) |
| Gradle | ✅ | 9.5.1 |
| Android SDK | ✅ | `~/Library/Android/sdk/` |
| Platform | ✅ | android-35 |
| Build Tools | ✅ | 35.0.0 |
| Platform Tools | ✅ | ADB v37 |
| ANDROID_HOME | ✅ | `~/Library/Android/sdk/` |
| SDK Manager | ✅ | `cmdline-tools/latest/bin/sdkmanager` |
| ADB Device | ⏸️ | No device connected |
| Android Studio | ❌ | Not installed (SDK tools via Homebrew/cmdline) |

## Redmi Phone Connection

```bash
# Enable Developer Options on phone:
# Settings → About phone → Tap MIUI version 7 times

# Enable USB Debugging:
# Settings → Developer options → USB debugging

# Connect via USB and authorize on phone
adb devices          # Should show device
adb shell echo "OK"  # Verify connection

# Wireless debugging (alternative):
# Settings → Developer options → Wireless debugging
adb pair <ip>:<port>  # Pair with code
adb connect <ip>:<port>
```

## Test APK Build

```bash
# Create a test project
cd ~/harnesses/projects/android
mkdir HelloWorld && cd HelloWorld

# Or use Android Studio (not installed), create via command line:
# gradle init --type kotlin-application
```

## Project Structure

```
~/harnesses/projects/android/
└── <project-name>/
    ├── app/
    │   ├── src/main/java/
    │   ├── src/main/res/
    │   └── build.gradle.kts
    ├── build.gradle.kts
    └── settings.gradle.kts
```

## Security Rules

- ❌ No install APK without user confirmation
- ❌ No delete apps from device
- ❌ No access phone contacts, messages, or personal data
- ❌ No factory reset or system modifications
- ✅ ADB for build debugging only
- ✅ Screen capture with permission only

## Quick Commands

```bash
# Check connected devices
adb devices -l

# Test connection
adb shell echo "ADB OK"

# List installed packages
adb shell pm list packages | grep <app-name>

# Install APK
adb install app/build/outputs/apk/debug/app-debug.apk

# View logs
adb logcat -c && adb logcat | grep <app-name>
```
