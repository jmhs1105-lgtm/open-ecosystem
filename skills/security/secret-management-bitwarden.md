# Skill: Secret Management with Bitwarden

## Objective

Store all API keys, tokens, and credentials in Bitwarden vault. Never in code, never in docs, never in git.

## When to Use

- Storing a new API key (GROQ, GitHub, InsForge, SendGrid, etc.)
- Retrieving credentials for a new project setup
- Rotating a compromised token
- Auditing what secrets exist

## When NOT to Use

- Storing secrets in .env only (use Bitwarden as source of truth)
- Sharing secrets via chat or email
- Hardcoding keys in code

## Agent Responsible

**Security & Recovery Agent**

## Rules

1. Bitwarden is the source of truth for all secrets
2. .env files are local copies, never committed
3. .env.example has variable names only (no values)
4. Rotate tokens immediately if exposed
5. Never print tokens in logs, chat, or docs

## Credentials to Store

```
INSFORGE_API_KEY
GROQ_API_KEY
GITHUB_TOKEN
TELEGRAM_BOT_TOKEN
WHATSAPP_API_TOKEN
OPENROUTER_API_KEY
SENDGRID_API_KEY
RAILWAY_TOKEN
N8N_ENCRYPTION_KEY
```

## Workflow

```
1. Generate token on provider's dashboard
2. Store in Bitwarden (name: PROJECT_ENV_VAR)
3. Add to local .env (gitignored)
4. Add variable name to .env.example
5. Verify .gitignore covers .env
```

## Validation

- [ ] All secrets in Bitwarden, not just .env
- [ ] .env.example has all variable names
- [ ] .gitignore blocks .env
- [ ] No tokens in git history (verify with gitleaks)
