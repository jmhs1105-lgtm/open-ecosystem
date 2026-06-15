# Dev Environment — VS Code

## Role

VS Code is the visual editor. OpenCode is the AI builder.

```
VS Code:  View, edit, debug, terminal, extensions
OpenCode: Create, modify, validate, orchestrate, commit
```

## Workspace

Open `~/harnesses` as workspace folder.

## Recommended Extensions

Already configured in `.vscode/extensions.json`.

| Extension | Purpose |
|---|---|
| ESLint | Lint errors in editor |
| Prettier | Format on save |
| Error Lens | Inline error messages |
| GitLens | Git blame, history |
| Auto Rename Tag | JSX/HTML tag pairs |
| Auto Close Tag | Auto close JSX/HTML |
| React Native Tools | Debug + intellisense |
| REST Client | API testing |
| Thunder Client | GUI API testing |
| Docker | Container management |
| SQLite Viewer | .sqlite file viewer |

## Settings

Already configured in `.vscode/settings.json`:
- Format on Save: ON
- ESLint auto-fix: ON
- Node modules excluded from search
- Dist/build excluded from files

## Terminal

Use VS Code integrated terminal with zsh.
All scripts in `~/harnesses/scripts/` are available.

## Shortcuts

| Action | macOS |
|---|---|
| Command Palette | Cmd+Shift+P |
| Quick Open | Cmd+P |
| Toggle Terminal | Ctrl+` |
| Format Document | Shift+Option+F |
| Go to Definition | F12 |
| Find in Files | Cmd+Shift+F |

## Flow

```
1. OpenCode generates/modifies code
2. VS Code shows changes in editor
3. Review diffs in Source Control panel
4. Run lint/tests in terminal
5. Fix issues if any
6. Commit via OpenCode (not manual git)
```
