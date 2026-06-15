# Skill: Penpot to React Native

## Objective

Convert Penpot designs into production-ready React Native components using Expo and TypeScript.

## When to Use

- Designing a new screen → design in Penpot first
- Adding a feature → design the UI before coding
- Reviewing UI → compare Penpot vs running app
- Creating design system → build component library from Penpot

## When NOT to Use

- Quick bug fixes (visual only)
- Simple text changes
- Backend-only changes
- When design already exists and is approved

## Agent Responsible

**Team Skills Architect** + **React Native Expo Agent**

## Related Teams

- Design & UI Team
- Mobile & Android Team

## Related Tools

- Penpot (penpot.app)
- Expo / React Native
- TypeScript
- VS Code with React Native Tools

## Design Tokens Export

```typescript
// Extract from Penpot → constants/theme.ts
export const colors = {
  primary: '#007AFF',
  primaryLight: '#E3F2FF',
  background: '#F2F2F7',
  surface: '#FFFFFF',
  text: '#000000',
  textSecondary: '#8E8E93',
  // ...
}
```

## Component Mapping

```
Penpot Component     →  React Native
─────────────────────────────────────
Frame (Button)       →  <Pressable> or <TouchableOpacity>
Rectangle (Card)     →  <View> with borderRadius + shadow
Text layer           →  <Text> with matching style
Input field          →  <TextInput>
Icon                 →  <Ionicons> or custom <Svg>
Image                →  <Image> or <FastImage>
Auto Layout (flex)   →  flexDirection + alignItems + gap
```

## Checklist

- [ ] Design exists in Penpot before coding
- [ ] Design tokens extracted to theme.ts
- [ ] All component states handled (default, pressed, disabled, loading)
- [ ] Spacing matches design (use theme.spacing)
- [ ] Colors match design (use theme.colors)
- [ ] Typography matches design (use theme.fontSize)
- [ ] Component is responsive (flex, % widths)
- [ ] Dark mode compatible (if applicable)

## Risks

1. Design ≠ Code — always validate on device
2. Inconsistent spacing — use predefined scale
3. Missing states — always design empty/error/loading
4. Pixel-perfect trap — aim for 95% accuracy, not 100%
