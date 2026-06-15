# Skill: Android ADB Testing

## Objective

Test Android apps on emulator and physical devices (Redmi) using ADB: install APKs, capture logs, debug crashes, and validate builds.

## When to Use

- Testing APK on physical device
- Debugging app crashes (logcat)
- Installing/uninstalling debug builds
- Capturing screenshots and screen recordings
- Checking app permissions

## When NOT to Use

- Production app distribution
- Installing on unauthorized devices
- Wiping device data without permission

## Agent Responsible

**Android Architect Agent**

## Devices

- Android Emulator (AVD - Pixel 6, API 35)
- Redmi physical device (USB)

## Commands

```bash
adb devices                 # List devices
adb install app.apk         # Install APK
adb uninstall com.example   # Uninstall
adb logcat -s ReactNative   # React Native logs
adb shell screencap -p > screen.png
adb shell pm list packages  # List installed apps
```

## Testing Checklist

- [ ] App installs without error
- [ ] Splash → first screen transition works
- [ ] Login/register flow works
- [ ] All tabs/screens accessible
- [ ] Pull-to-refresh works
- [ ] Error states display correctly
- [ ] Empty states show helpful messages
- [ ] Back button navigation works
- [ ] No crashes in 5 min usage

## Redmi Specific

```
Settings → About → Tap MIUI 7x → Developer Options
USB Debugging → ON
Install via USB → ON
```
