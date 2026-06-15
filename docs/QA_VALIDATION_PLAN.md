# QA Validation Plan

## Scripts

```json
{
  "scripts": {
    "lint": "eslint src/",
    "format": "prettier --write src/",
    "format:check": "prettier --check src/",
    "typecheck": "tsc --noEmit",
    "test": "jest",
    "validate": "npm run lint && npm run test"
  }
}
```

## Quality Gates

Every commit must pass:

| Gate | Command | Type |
|---|---|---|
| Lint | `npm run lint` | JS/TS |
| Format Check | `npm run format:check` | All |
| Type Check | `npm run typecheck` | TS only |
| Tests | `npm test` | All |
| Validate | `npm run validate` | Combined |

## ESLint Rules

```js
rules: {
  'no-unused-vars': 'warn',
  'no-undef': 'error',
  'no-console': 'warn',  // warn in production
  'prefer-const': 'error',
  'no-var': 'error',
  'eqeqeq': 'error',
  'curly': 'error',
}
```

## Prettier Config

```json
{
  "semi": false,
  "singleQuote": true,
  "trailingComma": "es5",
  "printWidth": 100,
  "tabWidth": 2
}
```

## Test Requirements

- Each endpoint must have at least 1 test
- Services must have unit tests
- Integration tests for InsForge connections
- Test coverage target: ≥ 60%

## Build Validation

### Backend API
- `node src/index.js` starts without errors
- Health endpoint responds
- All routes registered

### Expo
- `npx expo-doctor` passes
- `npx tsc --noEmit` passes
- Builds for Android without errors

### Android
- `./gradlew assembleDebug` succeeds
- APK installs on device

## No-Deploy Rule

- No deploy to Railway/VPS without passing all gates
- No production changes without approval
- No email sends without sandbox test first
