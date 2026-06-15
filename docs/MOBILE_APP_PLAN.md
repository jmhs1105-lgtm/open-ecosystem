# Mobile App Plan

## Stack

| Layer | Technology |
|---|---|
| Framework | React Native 0.76+ |
| Toolchain | Expo SDK 52+ |
| Language | TypeScript 5.x |
| Navigation | Expo Router (file-based) |
| State | React Context + hooks |
| Auth | InsForge Auth |
| Database | InsForge (via SDK) |
| Storage | InsForge Storage |
| UI | React Native + Expo vector icons |
| Build | EAS Build |

## Project Structure

```
expo-app/
├── app/                    # Expo Router screens
│   ├── _layout.tsx         # Root layout
│   ├── (auth)/             # Auth group
│   │   ├── _layout.tsx
│   │   ├── login.tsx
│   │   └── create-account.tsx
│   ├── (tabs)/             # Tab group
│   │   ├── _layout.tsx
│   │   ├── index.tsx       # Home
│   │   ├── leads.tsx
│   │   ├── metrics.tsx
│   │   └── profile.tsx
│   └── +not-found.tsx
├── components/             # Reusable components
│   ├── ui/                 # Basic UI (Button, Input, Card)
│   ├── layout/             # Layout components
│   └── features/           # Feature components
├── services/               # API + InsForge
│   ├── api.ts              # Axios/fetch wrapper
│   ├── insforge.ts         # InsForge client
│   └── auth.ts             # Auth service
├── hooks/                  # Custom hooks
│   ├── useAuth.ts
│   ├── useLeads.ts
│   └── useMetrics.ts
├── types/                  # TypeScript types
│   └── index.ts
├── utils/                  # Helpers
│   └── format.ts
├── constants/              # Design tokens
│   └── theme.ts
├── app.json                # Expo config
├── tsconfig.json
└── package.json
```

## Screens

| Screen | Route | Purpose |
|---|---|---|
| Create Account | `(auth)/create-account` | Registration |
| Login | `(auth)/login` | Sign in |
| Home | `(tabs)/index` | Dashboard |
| Leads | `(tabs)/leads` | Lead list + filter |
| Lead Detail | `leads/[id]` | Lead detail + actions |
| Metrics | `(tabs)/metrics` | Charts + KPIs |
| Bot Settings | `settings/bots` | Bot config |
| Profile | `(tabs)/profile` | User profile |
| Notifications | `notifications` | Push notifications |

## Auth Flow

```
App Launch → Check session
  ├── No session → Login / Create Account
  └── Has session → Home (dashboard)

Login: email + password → InsForge Auth → JWT token → SecureStore
Create Account: name + email + password → InsForge Auth → Home
Logout: clear SecureStore → Login screen
```

## InsForge Integration

```typescript
// services/insforge.ts
import { createClient } from '@insforge/sdk'

export const insforge = createClient({
  baseUrl: process.env.EXPO_PUBLIC_INSFORGE_URL!,
})

// Auth
const { data, error } = await insforge.auth.signInWithPassword({
  email, password,
})

// Database
const { data: leads } = await insforge
  .from('leads')
  .select('*')
  .order('created_at', { ascending: false })
```

## Environment Variables (Expo)

```
EXPO_PUBLIC_INSFORGE_URL=
EXPO_PUBLIC_INSFORGE_ANON_KEY=
```

## Build Targets

| Target | Command | Output |
|---|---|---|
| Development | `npx expo start` | Expo Go |
| Android APK | `eas build -p android --profile preview` | .apk |
| Android AAB | `eas build -p android --profile production` | .aab |
| iOS IPA | `eas build -p ios --profile production` | .ipa |
