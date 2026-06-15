# InsForge MCP

Connects OpenCode to the InsForge platform for database, storage, and auth operations.

## Status
⏸️ Disabled (enable in `opencode.json`)

## Command
```bash
npx @insforge/cli link --project-id 70768240-ee58-4dcd-9653-308b9aa72dff
```

## Package Required
```bash
npx @insforge/cli
```
(no install needed — npx auto-downloads)

## Security
- Never expose `project-id` in output
- Never modify production data without confirmation
- All InsForge operations follow the rules in `SECURITY_RULES.md`
