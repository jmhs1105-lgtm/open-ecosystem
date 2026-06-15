# UI/UX Pro Max Workflow

## Methodology

Professional design process applied to every screen before coding.

## Phase 1: Research

- Who is the user? (bot owner, affiliate manager, lead viewer)
- What problem does this screen solve?
- What's the primary action? (one per screen)
- What are the secondary actions? (max 3)

## Phase 2: User Flow

Map the path the user takes:
```
Login → Home → Leads → Lead Detail → Status Change → Back
```

Document for each flow:
- Entry point
- Steps (max 5 per flow)
- Decision points
- Success state
- Error paths

## Phase 3: Wireframes

Quick low-fidelity sketches:
- Layout structure (header, content, footer)
- Content hierarchy
- Navigation elements
- No colors, no fonts — just structure

## Phase 4: Prototypes

Interactive mockup in Penpot:
- Clickable buttons
- Screen transitions
- Modal/dialog flows
- Form validation states

## Phase 5: Visual Design

Apply design tokens:
- Colors with semantic meaning
- Typography hierarchy
- Spacing rhythm
- Iconography (Ionicons / SF Symbols)
- Illustrations (empty states, onboarding)

## Phase 6: Component Mapping

```
Penpot Design  →  React Native Component
─────────────────────────────────────────
Button         →  <Button variant="primary" />
Input Field    →  <Input label="Email" />
Card           →  <Card title="..." subtitle="..." />
List Item      →  <ListItem leftIcon={...} title="..." />
Bottom Sheet   →  <Modal presentationStyle="pageSheet" />
Tab Bar        →  <Tabs.Screen name="..." />
```

## Phase 7: States Matrix

Every screen must design for:

| State | Visual | Example |
|---|---|---|
| **Loading** | Shimmer / Skeleton / Spinner | Fetching leads... |
| **Empty** | Illustration + message + CTA | "No leads yet" |
| **Error** | Icon + message + retry button | "Network error" |
| **Success** | Brief confirmation / animation | "Lead saved!" |
| **Edge case** | Long text, special chars, offline | Name: "A very long name that..." |
| **Permission** | Request + explain why | "Allow notifications?" |

## Phase 8: Accessibility

- Color contrast ratio ≥ 4.5:1
- Touch targets ≥ 44pt
- Screen reader labels on all interactive elements
- Don't rely on color alone for meaning
- Support dynamic text sizes (accessibility)
- Keyboard navigation (Tab order)

## Phase 9: Conversion Design

For screens that drive action (signup, lead capture):
- Single clear CTA (call to action)
- Remove distractions (max 3 elements above fold)
- Social proof where applicable
- Reduce friction (fewer fields, smart defaults)
- Clear value proposition in title

## Phase 10: Handoff to Code

Deliverable package:
1. Penpot file with final designs
2. Design tokens export (theme.ts)
3. Component spec sheet (variants + states)
4. User flow diagram
5. States matrix for every screen

## Rules

1. No programar pantalla importante sin user flow
2. No crear UI sin objetivo definido
3. No usar colores al azar (siempre del theme)
4. No copiar diseños protegidos
5. No priorizar belleza sobre claridad
6. Cada pantalla debe tener una acción principal clara
7. Siempre diseñar estados: loading, empty, error, success
