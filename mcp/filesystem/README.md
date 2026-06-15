# Filesystem MCP

## Purpose
Read and edit project files with controlled access.

## Status: 📋 Planned (disabled)

## Config
```json
{
  "filesystem": {
    "enabled": false,
    "type": "local",
    "command": ["npx", "-y", "@modelcontextprotocol/server-filesystem", "/Users/admin/harnesses"]
  }
}
```

## To Enable
```bash
npm install -g @modelcontextprotocol/server-filesystem
# Then set "enabled": true in opencode.json
```

## Security
- Sandboxed to `~/harnesses/` directory
- Never access system files outside the sandbox
- Use OpenCode's built-in read/write tools for primary file access
