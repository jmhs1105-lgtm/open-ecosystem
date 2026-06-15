# RECOVERY — System Recovery Protocol

## Backup Locations

| Type | Path |
|---|---|
| Full backups | `~/harnesses/backups/` |
| Old desktop backups | `~/opencode_desktop_backups/` |
| Old full backup | `~/opencode_FULL_BACKUP_20260614-200622/` |

## Recovery Steps

### If OpenCode fails to start:
1. Check `~/.config/opencode/opencode.json` for JSON validity: `python3 -m json.tool ~/.config/opencode/opencode.json`
2. Restore from last backup: `cp ~/harnesses/backups/opencode.json.* ~/.config/opencode/opencode.json`
3. Check opencode schema: `$schema` URL must be valid
4. Remove incompatible keys: `providers`, malformed `agent`, `mcpServers` with wrong format

### If scripts fail:
1. Check shebang: `head -1 <script>` should be `#!/bin/bash` or `#!/usr/bin/env zsh`
2. Check permissions: `chmod +x <script>`
3. Check PATH: ensure `~/harnesses/scripts` is in PATH

### If MCP fails:
1. Check if MCP process is running: `ps aux | grep mcp`
2. Check config syntax
3. Restart OpenCode

### If backup needed before config change:
```bash
cp ~/.config/opencode/opencode.json ~/harnesses/backups/opencode.json.$(date +%Y%m%d-%H%M%S)
```

## Rollback Command
```bash
# Restore last config
cp ~/harnesses/backups/$(ls -t ~/harnesses/backups/opencode.json.* | head -1) ~/.config/opencode/opencode.json
```