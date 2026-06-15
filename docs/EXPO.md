# React Native Expo — Development Guide

## Setup

```bash
# Create new app (from project root)
cd ~/harnesses/projects
npx create-expo-app expo-app --template blank-typescript
cd expo-app

# Or use existing structure
npm install
```

## Required Packages

```bash
npx expo install expo-router react-native-screens expo-linking
npx expo install expo-secure-store        # For tokens
npx expo install expo-constants            # For app config
```

## InsForge Integration

```bash
npx expo install @supabase/supabase-js     # If using Supabase-compatible
# OR
npx expo install @insforge/client          # InsForge native client
```

## Environment Variables

Copy `.env.example` to `.env` and fill in:

```env
# InsForge
INSFORGE_API_KEY=your_api_key_here
INSFORGE_URL=https://your-project.insforge.io

# API
API_URL=http://localhost:3000

# App
APP_NAME=MyApp
```

## Project Structure

```
~/harnesses/projects/expo-app/
├── app/                    # Expo Router pages
│   ├── (auth)/            # Auth screens
│   │   ├── login.tsx
│   │   └── register.tsx
│   ├── (tabs)/            # Main tab navigation
│   ├── _layout.tsx        # Root layout
│   └── index.tsx          # Entry point
├── components/            # Reusable components
├── lib/                   # Utilities, API clients
│   ├── supabase.ts        # InsForge/Supabase client
│   └── storage.ts         # Secure storage wrapper
├── .env                   # Environment variables (gitignored)
├── .env.example           # Template (committed)
└── app.json               # Expo config
```

## Security Rules

- ❌ Never print INSFORGE_API_KEY
- ❌ Never commit .env
- ❌ No deploy without permission
- ❌ No git push
- ✅ Use expo-secure-store for sensitive data
- ✅ Validate environment before build

## Build

```bash
# Development
npx expo start

# Android APK
npx expo run:android

# iOS (Mac only)
npx expo run:ios

# Production build (EAS)
npx eas build --platform android --profile production
```
