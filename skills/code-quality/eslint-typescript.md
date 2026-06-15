# Skill: ESLint + TypeScript Code Quality

## Objective

Ensure code quality with ESLint rules and TypeScript type checking. Prevent bugs, enforce consistent patterns, and catch issues before commit.

## When to Use

- Every commit in JS/TS projects
- Before merging to main
- When adding new files
- As part of CI pipeline

## Agent Responsible

**QA & Code Quality Team** (Backend API Agent)

## Related Tools

- ESLint (linting)
- TypeScript / tsc (type checking)
- Prettier (formatting — see separate skill)

## Configuration

```js
// eslint.config.js
export default [{
  files: ['src/**/*.{js,ts,tsx}'],
  rules: {
    'no-unused-vars': 'warn',
    'no-undef': 'error',
    'prefer-const': 'error',
    'no-var': 'error',
    'eqeqeq': 'error',
  },
}]
```

## Commands

```bash
npm run lint        # Check for issues
npm run lint -- --fix  # Auto-fix
npm run typecheck   # TypeScript check (if applicable)
```

## Validation Checklist

- [ ] `npm run lint` passes (0 errors)
- [ ] TypeScript compiles (0 errors)
- [ ] No `any` types without good reason
- [ ] No commented-out code
- [ ] No console.log in production code
