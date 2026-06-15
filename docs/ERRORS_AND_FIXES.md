# Errors and Fixes

## Known Issues

### 1. ESLint 10.x Flat Config

**Symptom**: `defineConfig` import fails
**Fix**: Use plain array export: `export default [{ files: ['src/**/*.js'], ... }]`
**Agent**: Backend API

### 2. Jest ESM `await import`

**Symptom**: SyntaxError on `await import` in test
**Fix**: Make test callback async: `it('test', async () => { ... })`
**Agent**: Backend API

### 3. Express 5 `res.status()` requires explicit return

**Symptom**: `Cannot set headers after they are sent`
**Fix**: Always `return res.status(...).json(...)`
**Agent**: Backend API

### 4. InsForge query returns `{ data, error }`

**Symptom**: `result.map is not a function`
**Fix**: Access `result.data` not `result` directly
**Agent**: Backend API, InsForge

### 5. Groq API 401 on older tokens

**Symptom**: Invalid API key error
**Fix**: Regenerate key at console.groq.com, update .env
**Agent**: AI Provider

### 6. npm install slow (~6 bytes/s)

**Symptom**: Times out on large packages
**Fix**: Use `--prefer-offline`, retry at different time, or use pnpm
**Agent**: All

### 7. opencode.json backup before edit

**Symptom**: Config corruption
**Fix**: Always run `ocbackup` before editing opencode.json
**Agent**: MCP Operations, Security

### 8. GitHub token expired

**Symptom**: `remote: Invalid username or password`
**Fix**: Regenerate at GitHub Settings → Developer settings → Tokens
**Agent**: Security & Recovery

## Prevention Checklist

- [ ] Backup opencode.json before edits
- [ ] Run lint before commit
- [ ] Run tests before push
- [ ] Check .gitignore covers .env
- [ ] Never commit node_modules
- [ ] Always use .env.example for templates
