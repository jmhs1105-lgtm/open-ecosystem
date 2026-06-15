# Safe-Terminal MCP

## Purpose
Execute terminal commands with safety guards.

## Status: 📋 Planned (disabled)

## Config
```json
{
  "safe-terminal": {
    "enabled": false,
    "type": "local",
    "command": ["bash", "/Users/admin/harnesses/mcp/safe-terminal/mcp-wrapper.sh"]
  }
}
```

## Security Rules
- Blocks: `rm -rf`, `dd`, `mkfs`, `fdisk`, `format`, direct device writes, shutdown, reboot
- All commands require confirmation via OpenCode permission system
- Falls back to OpenCode's built-in `bash` tool with `"ask"` permission

## Note
OpenCode's built-in `bash` tool with `permission: "ask"` already provides safe terminal behavior. This MCP is a secondary guard for when direct bash access is needed outside OpenCode's tool system.
