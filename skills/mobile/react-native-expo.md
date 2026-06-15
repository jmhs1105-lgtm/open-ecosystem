# Skill: React Native + Expo

## Objective

Build cross-platform mobile apps with React Native, Expo, TypeScript, Expo Router, InsForge SDK, and iOS-style design system.

## When to Use

- Creating a new mobile app
- Adding screens to existing app
- Setting up InsForge Auth in mobile
- Implementing design system components

## When NOT to Use

- Native-only features requiring eject (Expo Go limit)
- Heavy 3D rendering (use Unity or native)
- Simple web apps (use React + Vite)

## Agent Responsible

**React Native Expo Agent**

## Stack

- React Native 0.85+
- Expo SDK 56+
- TypeScript 5+
- Expo Router (file-based)
- InsForge SDK
- Expo SecureStore

## Structure

```
app/            → Expo Router screens
components/ui/  → Design system
hooks/          → useAuth, useLeads, useMetrics
services/       → InsForge + API client
constants/      → theme.ts (design tokens)
types/          → TypeScript interfaces
```

## Commands

```bash
npx expo start          # Dev server
npx expo start --android  # Android
npx tsc --noEmit        # Type check
npx expo-doctor         # Health check
eas build -p android    # Build APK
```

## Validation

- [ ] TypeScript compiles (0 errors)
- [ ] Expo doctor passes
- [ ] Works on Android emulator
- [ ] Auth flow works
- [ ] InsForge connection works
- [ ] All states handled (loading, empty, error)
