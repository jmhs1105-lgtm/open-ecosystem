# Expo + React Native Plan

## Setup

```bash
# Create project
npx create-expo-app@latest expo-app --template blank-typescript

# Install dependencies
cd expo-app
npx expo install expo-router expo-linking expo-constants expo-status-bar
npx expo install @react-navigation/native expo-secure-store
npm install @insforge/sdk
```

## Expo Router Setup

```typescript
// app/_layout.tsx
import { Stack } from 'expo-router'
import { AuthProvider } from '../hooks/useAuth'

export default function RootLayout() {
  return (
    <AuthProvider>
      <Stack screenOptions={{ headerShown: false }}>
        <Stack.Screen name="(auth)" />
        <Stack.Screen name="(tabs)" />
      </Stack>
    </AuthProvider>
  )
}
```

## Navigation Structure

```
RootLayout
├── (auth) [Stack]
│   ├── login
│   └── create-account
└── (tabs) [Tabs]
    ├── index (Home)
    ├── leads
    ├── metrics
    └── profile
```

## TypeScript Types

```typescript
// types/index.ts
export interface Lead {
  id: string
  name: string
  source: 'telegram' | 'whatsapp' | 'web'
  status: 'new' | 'qualifying' | 'qualified' | 'converted' | 'lost'
  score: number
  intent: string
  created_at: string
}

export interface User {
  id: string
  email: string
  name: string
  role: string
  avatar_url?: string
}

export interface BotConfig {
  telegram_token?: string
  whatsapp_token?: string
  auto_respond: boolean
  working_hours: { start: string; end: string }
}
```

## Design Tokens (iOS-Style)

```typescript
// constants/theme.ts
export const theme = {
  colors: {
    primary: '#007AFF',
    secondary: '#5856D6',
    success: '#34C759',
    warning: '#FF9500',
    danger: '#FF3B30',
    background: '#F2F2F7',
    card: '#FFFFFF',
    text: '#000000',
    textSecondary: '#8E8E93',
    border: '#C6C6C8',
  },
  spacing: {
    xs: 4, sm: 8, md: 16, lg: 24, xl: 32,
  },
  fontSize: {
    caption: 12, body: 16, subtitle: 18, title: 24, large: 34,
  },
  borderRadius: { sm: 8, md: 12, lg: 16, full: 9999 },
}
```

## Components

```typescript
// components/ui/Button.tsx
export function Button({ title, variant = 'primary', onPress, loading }: Props) {
  return (
    <Pressable
      onPress={onPress}
      style={({ pressed }) => [
        styles.base, styles[variant], pressed && styles.pressed,
      ]}
      disabled={loading}
    >
      {loading ? <ActivityIndicator color="#fff" /> : <Text style={styles.text}>{title}</Text>}
    </Pressable>
  )
}

// components/ui/Card.tsx
export function Card({ title, subtitle, children, onPress }: Props) {
  return (
    <Pressable onPress={onPress} style={styles.card}>
      {title && <Text style={styles.title}>{title}</Text>}
      {subtitle && <Text style={styles.subtitle}>{subtitle}</Text>}
      {children}
    </Pressable>
  )
}
```

## State Management

```typescript
// hooks/useAuth.tsx
const AuthContext = createContext<AuthContextType>({})

export function AuthProvider({ children }) {
  const [user, setUser] = useState<User | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const session = await SecureStore.getItemAsync('session')
    if (session) setUser(JSON.parse(session))
    setLoading(false)
  }, [])

  const login = async (email, password) => { /* InsForge auth */ }
  const logout = async () => { /* clear */ }

  return <AuthContext.Provider value={{ user, loading, login, logout }}>{children}</AuthContext.Provider>
}

// hooks/useLeads.ts
export function useLeads() {
  const [leads, setLeads] = useState<Lead[]>([])
  const [loading, setLoading] = useState(true)

  const fetchLeads = async () => {
    const { data } = await insforge.from('leads').select('*').order('created_at', { ascending: false })
    setLeads(data)
    setLoading(false)
  }

  useEffect(() => { fetchLeads() }, [])
  return { leads, loading, refresh: fetchLeads }
}
```

## Validation

```bash
npx expo-doctor           # Health check
npx tsc --noEmit          # TypeScript check
npx expo lint             # ESLint
npx expo start            # Dev server
npx expo start --android  # Android emulator
npx expo start --ios      # iOS simulator
```
