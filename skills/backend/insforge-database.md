# Skill: InsForge Database

## Objective

Design and manage InsForge database schemas, RLS policies, indexes, and cloud memory tables for agent persistence and application data.

## When to Use

- Creating a new table for the ecosystem
- Adding RLS policies for security
- Designing relationships between tables
- Running migrations
- Backing up schema

## When NOT to Use

- Testing in production (use staging)
- Deleting data without backup
- Changing schema without migration plan

## Agent Responsible

**InsForge Agent**

## Tables (14)

| Table | Purpose |
|---|---|
| users | Auth + profile |
| projects | Ecosystem projects |
| agents | Registered AI agents |
| agent_state | Session persistence |
| memory_entries | Key-value cloud memory |
| agents_logs | Operation logs |
| bot_messages | Chat history |
| leads | Lead tracking |
| tasks | Task management |
| api_usage | API cost tracking |
| errors | Error registry |
| system_events | Lifecycle events |
| email_events | Email delivery |
| notifications | Push/in-app alerts |

## RLS Rules

- `users`, `notifications`: SELECT/UPDATE own-row only
- All others: Open SELECT + INSERT (dev)
- Production: Tighten RLS before public access

## Commands

```bash
insforge db push     # Apply schema changes
insforge db dump     # Export database
insforge db diff     # Show pending changes
```

## Validation

- [ ] Schema designed in .sql file before applying
- [ ] RLS policies defined
- [ ] Indexes on frequent query columns
- [ ] No DROP TABLE without backup
