# Cloud Memory Schema — InsForge

## Overview

InsForge serves as the central backend: auth, database, storage, logs, leads, metrics, tasks, and cloud memory for agent persistence.

**Project**: `agents-insforge` (`pmyjdb5h.us-east.insforge.app`)

## Tables (12)

| # | Table | Purpose | Teams |
|---|---|---|---|
| 1 | `users` | User accounts + auth | Backend, Mobile |
| 2 | `projects` | Ecosystem projects | Orchestrator, Backend |
| 3 | `agents` | Registered AI agents | Orchestrator, all |
| 4 | `agents_logs` | Agent operation logs | Observability, Cloud |
| 5 | `agent_state` | Agent session persistence | Orchestrator, all |
| 6 | `memory_entries` | Persistent key-value memory | Orchestrator, all |
| 7 | `bot_messages` | Bot conversation history | Bots, Automation |
| 8 | `leads` | Lead capture + scoring | Bots, Affiliate |
| 9 | `tasks` | System tasks + to-dos | Orchestrator, all |
| 10 | `api_usage` | API usage + cost tracking | AI Provider, Cloud |
| 11 | `errors` | Error registry | Security, QA |
| 12 | `system_events` | Health, deploy, migrations | Cloud Runtime |
| 13 | `email_events` | Email delivery tracking | Email, Automation |
| 14 | `notifications` | Push/in-app notifications | Automation, Bots |

## Relationships

```
users ──1:N── projects
users ──1:N── leads (assigned_to)
users ──1:N── notifications
agents ──1:N── agents_logs
agents ──1:N── agent_state
agents ──1:N── memory_entries
leads ──1:N── bot_messages
leads ──1:N── email_events
tasks ──1:N── agents_logs
tasks ──1:N── api_usage
tasks ──1:N── errors
tasks ──N:1── tasks (parent_task_id)
projects ──1:N── tasks
```

## RLS Policies

All tables have RLS enabled. Notes:
- `users`: SELECT/UPDATE restricted to own row
- `notifications`: SELECT/UPDATE restricted to own row
- All other tables: open SELECT, open INSERT (for demo/dev)

Production should tighten RLS before exposing to real users.

## Indexes

Key indexes for performance:
- `users.email` - login lookup
- `agents_logs.created_at DESC` - recent log queries
- `bot_messages.chat_id, bot_type` - conversation history
- `leads.status, source, score` - lead filtering
- `tasks.status, agent_name` - task assignment
- `errors.created_at DESC, resolved` - error dashboard
- `api_usage.created_at DESC` - cost tracking

## Trigger

`update_updated_at()` — auto-sets `updated_at` on every UPDATE. Used by: agents, users, leads, tasks.
