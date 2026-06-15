# Design Workflow — Penpot to Code

## Overview

Penpot serves as the open-source design tool for creating UI/UX before coding. It's the design source of truth. Code is generated from design, not the other way around.

## Workflow

```
1. Define user flow
2. Sketch wireframes
3. Design in Penpot (components, colors, spacing)
4. Export design tokens → code
5. Build React Native components from designs
6. Validate in mobile device
```

## Penpot Setup

- **Tool**: Penpot (penpot.app or self-hosted)
- **Format**: .penpot files
- **Export**: SVG for icons, PNG for previews, JSON for design tokens

## Design Token Export

```
Penpot File
  ↓
Design tokens extraction:
  - Colors (name, hex, opacity)
  - Typography (size, weight, lineHeight, font)
  - Spacing (xs, sm, md, lg, xl)
  - Border Radius (sm, md, lg, full)
  - Shadows (elevation 1-5)
  ↓
constants/theme.ts
```

## Screen Design Checklist

For each screen, define in Penpot before coding:

1. **Layout**: Grid, safe areas, scroll behavior
2. **States**: Loading, empty, error, success, edge cases
3. **Interactive elements**: Buttons, inputs, cards, tabs
4. **Typography**: Hierarchy (H1 → caption), readability
5. **Spacing**: Consistent rhythm, touch targets ≥ 44pt
6. **Colors**: Primary action, secondary, surfaces, semantic
7. **Animations**: Transitions, loading states, micro-interactions

## Component Design System

| Component | States | Penpot | Code |
|---|---|---|---|
| Button | default, hover(optional), pressed, disabled, loading | ✅ | `components/ui/Button.tsx` |
| Input | default, focused, error, disabled | ✅ | `components/ui/Input.tsx` |
| Card | default, pressed, selected | ✅ | `components/ui/Card.tsx` |
| Badge | info, success, warning, danger | ✅ | `components/ui/Badge.tsx` |
| Avatar | image, initials, fallback | ✅ | `components/ui/Avatar.tsx` |
| Modal | visible, hidden, gesture dismiss | ✅ | `components/ui/Modal.tsx` |
| ListItem | default, pressed, with icon, with trailing | ✅ | `components/ui/ListItem.tsx` |
| EmptyState | illustration, title, subtitle, action | ✅ | `components/ui/EmptyState.tsx` |

## Screen Designs (Priority Order)

1. **Login** — email + password + "Forgot password?" + "Create account"
2. **Create Account** — name + email + password + confirm + terms
3. **Home Dashboard** — KPI cards + recent leads + quick actions
4. **Leads List** — search + filter + sort + lead cards
5. **Lead Detail** — full info + status change + notes + actions
6. **Metrics** — charts (bar, line, pie) + date range filter
7. **Profile** — avatar + name + email + settings + logout
8. **Bot Settings** — toggle auto-respond + working hours + welcome message
9. **Notifications** — list of notifications + mark as read + actions
