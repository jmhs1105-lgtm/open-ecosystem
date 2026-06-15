# SECURITY RULES — OpenCode Ecosystem (MacBook)

## Core Rules

1. **Never print secrets** — API keys, tokens, passwords must never appear in console, logs, or output.
2. **Never git push** without explicit user permission.
3. **Never deploy** without explicit user permission.
4. **Never delete files** without explicit user permission and backup.
5. **Never modify `~/.config/opencode/opencode.json`** without a timestamped backup first.
6. **Never install software** without user confirmation.
7. **Never copy broken configs** from Kali or anywhere else without validation.
8. **Never expose `$ANDROID_HOME`, `$INSFORGE_API_KEY`, or any secret** in output.
9. **Never run `adb install`, `adb uninstall`, or device-wiping commands** without confirmation.
10. **Never run `npm publish`, `git push`, `railway up`, or deploy commands** without explicit permission.
11. **Never navigate to sensitive sites** (banking, email, social) via Playwright without authorization.
12. **Never submit forms, make purchases, or perform irreversible actions** via Playwright.
13. **Never modify production databases** — mark invalid tasks as `invalid/skipped`, never DELETE rows.

## Validation Before Every Change

- Create a snapshot/backup before modifying any configuration.
- Validate JSON syntax after every config change.
- Verify OpenCode starts after config change.
- If validation fails: rollback immediately, explain the cause.

## Environment Variables Protection

- All API keys go in `.env` files (gitignored).
- `.env` files are never committed, never printed, never shared.
- Use `gitleaks` or manual review before any commit.

## Rollback Protocol

1. Stop all operations.
2. Explain the failure cause.
3. Restore from the last backup.
4. Report what went wrong and propose a safe alternative.
