# Android Testing Plan

## Devices

| Device | Type | Status |
|---|---|---|
| Android Emulator | Virtual (AVD) | Setup needed |
| Redmi Phone | Physical | Ready (USB) |

## Setup

```bash
# Verify SDK
echo $ANDROID_HOME
ls ~/Library/Android/sdk/

# Check connected devices
adb devices

# Create emulator (if needed)
avdmanager create avd -n Pixel_6 -k "system-images;android-35;google_apis;x86_64"

# Start emulator
emulator -avd Pixel_6 &
```

## ADB Commands

```bash
# List devices
adb devices -l

# Install APK
adb install app-release.apk

# Uninstall
adb uninstall com.example.app

# Logcat (filtered)
adb logcat -s ReactNative:V ReactNativeJS:V

# Screenshot
adb exec-out screencap -p > screenshot.png

# Shell
adb shell
```

## Build Types

| Type | Command | Output | Use |
|---|---|---|---|
| Debug | `./gradlew assembleDebug` | `app-debug.apk` | Local testing |
| Release | `./gradlew assembleRelease` | `app-release.apk` | APK distribution |
| Bundle | `./gradlew bundleRelease` | `app-release.aab` | Play Store |

## Expo on Android

```bash
# Start Expo with Android
npx expo start --android

# Build APK (EAS)
eas build -p android --profile preview

# Install on device
adb install build.apk
```

## Testing Checklist

- [ ] App installs without errors
- [ ] App launches and shows splash screen
- [ ] Login flow works (email + password)
- [ ] Create account flow works
- [ ] Navigation works (all tabs accessible)
- [ ] List views load data from InsForge
- [ ] Pull-to-refresh works
- [ ] Error states show properly (no network, auth expired)
- [ ] Empty states show helpful messages
- [ ] Keyboard handling works (doesn't cover inputs)
- [ ] Back button works correctly
- [ ] App resumes from background
- [ ] Dark mode (if implemented)
- [ ] Notifications appear correctly
- [ ] No crashes in 5 minutes of usage

## Redmi-Specific

```bash
# Enable Developer Options
Settings → About Phone → Tap MIUI Version 7 times

# Enable USB Debugging
Settings → Additional Settings → Developer Options → USB Debugging

# Trust computer
Connect USB → Accept RSA key fingerprint

# Check connection
adb devices  # Should show device ID
```

## Gradle Notes

```kotlin
// android/app/build.gradle
android {
    compileSdk = 35
    defaultConfig {
        applicationId = "com.openecosystem.app"
        minSdk = 26
        targetSdk = 35
    }
}
```

## Common Issues

| Issue | Fix |
|---|---|
| ADB unauthorized | Re-plug USB, accept dialog on phone |
| Build fails (SDK) | Check ANDROID_HOME, install API 35 |
| Metro bundler stuck | `npx expo start --clear` |
| App crashes on start | Check logcat for crash stack trace |
| Network error | Check AndroidManifest for cleartext traffic |
