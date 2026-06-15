# InsForge Backend Plan

## Overview

InsForge is the central backend for the entire ecosystem: auth, database, storage, cloud memory, logs, and event tracking.

**Project**: `agents-insforge` | **URL**: `pmyjdb5h.us-east.insforge.app`

## Architecture

```
OpenCode Agents → Backend API → InsForge (Postgres REST)
                              → InsForge Auth (JWT)
                              → InsForge Storage (S3)
Bots → Webhooks → Backend API → InsForge DB
Mobile App → InsForge SDK → InsForge Auth + DB
n8n → HTTP → Backend API → InsForge DB
```

## Connection

```js
import { createAdminClient } from '@insforge/sdk'

const insforge = createAdminClient({
  baseUrl: process.env.INSFORGE_BASE_URL,
  apiKey: process.env.INSFORGE_API_KEY,
})
```

## Tables (14)

| Table | Purpose | RLS |
|---|---|---|
| `users` | Auth + profile | Own-row |
| `projects` | Ecosystem projects | Open |
| `agents` | AI agents | Open |
| `agent_state` | Session persistence | Open |
| `memory_entries` | Key-value memory | Open |
| `agents_logs` | Operation logs | Open |
| `bot_messages` | Chat history | Open |
| `leads` | Lead capture | Open |
| `tasks` | Task tracking | Open |
| `api_usage` | API cost tracking | Open |
| `errors` | Error registry | Open |
| `system_events` | Lifecycle events | Open |
| `email_events` | Email delivery | Open |
| `notifications` | Push/in-app | Own-row |

## Auth Flow

```
1. User signs up → InsForge auth.users
2. JWT token returned → stored in SecureStore (mobile) / session (web)
3. RLS policies use auth.uid() for row-level access
4. Admin operations use API key (server only)
```

## Storage

```
Backend API → InsForge Storage:
  - Agent session snapshots
  - Bot media files (images, audio)
  - Email attachments
  - Report exports

RLS: Public read, authenticated write
```

## Functions (Edge)

Potential edge functions:
1. `classify-intent` — AI intent classification for bots
2. `generate-report` — Daily/weekly report generation  
3. `process-webhook` — Validate and route incoming webhooks
4. `send-email` — SendGrid email dispatch

## Environment Variables

```
INSFORGE_BASE_URL=pmyjdb5h.us-east.insforge.app
INSFORGE_API_KEY=
```

## Migration Strategy

1. Design schema locally (SQL files)
2. Test with InsForge CLI: `insforge db push`
3. Validate RLS policies
4. Seed test data
5. Connect backend API

## Backup

- InsForge provides automatic snapshots
- Manual export via CLI: `insforge db dump`
- Schema backups in Git repo
