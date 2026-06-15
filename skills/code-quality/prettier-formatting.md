# Skill: Prettier Code Formatting

## Objective

Maintain consistent code formatting across the entire project. Prettier handles formatting, ESLint handles logic, TypeScript handles types.

## When to Use

- Before every commit
- When adding new files
- As part of `npm run validate`

## Agent Responsible

**QA & Code Quality Team** (Backend API Agent)

## Related Tools

- Prettier (formatting)
- ESLint (linting — see separate skill)

## Configuration

```json
{
  "semi": false,
  "singleQuote": true,
  "trailingComma": "es5",
  "printWidth": 100,
  "tabWidth": 2
}
```

## Commands

```bash
npm run format        # Format all files
npm run format:check  # Check format (CI)
```

## VS Code Integration

```json
{
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode"
}
```

## Validation

- [ ] `npm run format:check` passes
- [ ] Consistent spacing and quotes
- [ ] No diff noise from formatting changes
