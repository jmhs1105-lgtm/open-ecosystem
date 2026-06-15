# UI Components Guide

## Component Architecture

```
components/
├── ui/           # Primitive: Button, Input, Card, Text
├── layout/       # Structure: Container, SafeArea, ScrollView
├── features/     # Domain: LeadCard, MetricChart, BotToggle
└── screens/      # Full screen compositions
```

## UI Primitives

### Button

```tsx
<Button
  title="Sign In"
  variant="primary" | "secondary" | "outline" | "ghost" | "danger"
  size="sm" | "md" | "lg"
  loading={false}
  disabled={false}
  icon={<Icon />}
  onPress={() => {}}
/>
```

### Input

```tsx
<Input
  label="Email"
  placeholder="you@email.com"
  value={email}
  onChangeText={setEmail}
  keyboardType="email-address"
  autoCapitalize="none"
  error="Invalid email"  // shows red border + message
  disabled={false}
  secureTextEntry={false}
/>
```

### Card

```tsx
<Card
  title="Leads Today"
  subtitle="5 new leads"
  onPress={() => navigate('leads')}
>
  <Text>+12% vs yesterday</Text>
</Card>
```

### Badge

```tsx
<Badge variant="success">Converted</Badge>
<Badge variant="warning">Pending</Badge>
<Badge variant="danger">Lost</Badge>
<Badge variant="info">New</Badge>
```

### EmptyState

```tsx
<EmptyState
  icon="inbox-outline"
  title="No leads yet"
  subtitle="Leads captured by your bots will appear here"
  action={{ title: "Setup Bot", onPress: () => navigate('bots') }}
/>
```

### LoadingState

```tsx
<LoadingState type="card" />   // Shimmer card placeholder
<LoadingState type="list" />   // Shimmer list rows
<LoadingState type="full" />   // Full screen spinner
```

### ErrorState

```tsx
<ErrorState
  message="Couldn't load leads"
  onRetry={() => refreshLeads()}
/>
```

## Layout Components

```tsx
// Safe area wrapper
<Container>
  <ScrollView>
    <Section title="Overview">
      <Row>
        <MetricCard title="Leads" value="42" trend="+8%" />
      </Row>
    </Section>
  </ScrollView>
</Container>
```

## Design System Rules

1. **Touch targets**: Minimum 44x44 points (Apple HIG)
2. **Spacing**: Multiples of 4 (4, 8, 12, 16, 20, 24, 32)
3. **Typography**: System font (San Francisco on iOS, Roboto on Android)
4. **Colors**: Semantic names, not visual names (primary, danger, success)
5. **States**: Every interactive element must handle: default, pressed, disabled, loading
6. **Feedback**: Haptic on important actions, animations on transitions
7. **Dark mode**: All components must support light + dark contexts
