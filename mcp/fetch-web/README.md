# Fetch/Web MCP

## Purpose
Fetch web content, documentation, and API responses.

## Status: 📋 Planned (disabled)

## Config
```json
{
  "fetch-web": {
    "enabled": false,
    "type": "local",
    "command": ["npx", "-y", "@modelcontextprotocol/server-fetch"]
  }
}
```

## To Enable
```bash
npm install -g @modelcontextprotocol/server-fetch
# Then set "enabled": true in opencode.json
```

## Security
- No downloads without permission
- URL allowlist recommended
- OpenCode's built-in `webfetch` tool is the primary web access method
