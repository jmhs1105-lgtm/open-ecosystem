# InsForge — Database Schema & Integration Plan

## Connection

```env
# ~/harnesses/projects/insforge/.env
INSFORGE_API_KEY=your_api_key_here
INSFORGE_URL=https://your-project.insforge.io
INSFORGE_PROJECT=opencode-ecosystem
```

## Tables

### 1. users
```sql
CREATE TABLE users (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email         TEXT UNIQUE NOT NULL,
  username      TEXT UNIQUE,
  role          TEXT DEFAULT 'user' CHECK (role IN ('admin', 'dev', 'user', 'bot')),
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now(),
  updated_at    TIMESTAMPTZ DEFAULT now()
);
```
- Stores ecosystem users and bot identities
- RLS: users can read own row, admins can read all

### 2. projects
```sql
CREATE TABLE projects (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name          TEXT NOT NULL,
  type          TEXT CHECK (type IN ('android', 'expo', 'backend', 'bot', 'script', 'other')),
  description   TEXT,
  repo_url      TEXT,
  path_local    TEXT,
  status        TEXT DEFAULT 'active' CHECK (status IN ('active', 'archived', 'paused')),
  owner_id      UUID REFERENCES users(id),
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now(),
  updated_at    TIMESTAMPTZ DEFAULT now()
);
```
- Tracks all projects in the ecosystem
- RLS: team members can read, owner can write

### 3. agents_logs
```sql
CREATE TABLE agents_logs (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  agent_name    TEXT NOT NULL,
  session_id    TEXT,
  action        TEXT NOT NULL,
  status        TEXT DEFAULT 'info' CHECK (status IN ('info', 'success', 'warning', 'error')),
  message       TEXT,
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now()
);
```
- Audit log for all agent actions
- Immutable: INSERT only, no UPDATE/DELETE

### 4. bot_messages
```sql
CREATE TABLE bot_messages (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  bot_type      TEXT NOT NULL CHECK (bot_type IN ('telegram', 'whatsapp')),
  chat_id       TEXT NOT NULL,
  user_id       TEXT,
  direction     TEXT CHECK (direction IN ('incoming', 'outgoing')),
  message_type  TEXT DEFAULT 'text',
  content       TEXT,
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now()
);
```
- Message log for Telegram and WhatsApp bots
- Tracks conversation flow

### 5. leads
```sql
CREATE TABLE leads (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  source        TEXT NOT NULL CHECK (source IN ('telegram', 'whatsapp', 'web', 'referral', 'manual')),
  name          TEXT,
  email         TEXT,
  phone         TEXT,
  status        TEXT DEFAULT 'new' CHECK (status IN ('new', 'contacted', 'qualified', 'converted', 'lost')),
  score         INTEGER DEFAULT 0,
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now(),
  updated_at    TIMESTAMPTZ DEFAULT now()
);
```
- Lead tracking for affiliate and sales automation
- RLS: sales team can read/write

### 6. tasks
```sql
CREATE TABLE tasks (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title         TEXT NOT NULL,
  description   TEXT,
  status        TEXT DEFAULT 'pending' CHECK (status IN ('pending', 'in_progress', 'completed', 'failed', 'cancelled', 'invalid')),
  priority      TEXT DEFAULT 'medium' CHECK (priority IN ('low', 'medium', 'high', 'critical')),
  assignee_id   UUID REFERENCES users(id),
  project_id    UUID REFERENCES projects(id),
  due_date      TIMESTAMPTZ,
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now(),
  updated_at    TIMESTAMPTZ DEFAULT now()
);
```
- Task management across all projects
- Status `invalid` for skipped/corrupted tasks (never DELETE)

### 7. api_usage
```sql
CREATE TABLE api_usage (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  provider      TEXT NOT NULL,
  model         TEXT,
  endpoint      TEXT,
  tokens_input  INTEGER DEFAULT 0,
  tokens_output INTEGER DEFAULT 0,
  cost          DECIMAL(10,6) DEFAULT 0,
  duration_ms   INTEGER,
  status        TEXT DEFAULT 'success' CHECK (status IN ('success', 'error', 'timeout')),
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now()
);
```
- Tracks AI API usage and costs
- Read-only for most users, INSERT only

### 8. sessions
```sql
CREATE TABLE sessions (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id       UUID REFERENCES users(id),
  agent_name    TEXT,
  context       JSONB DEFAULT '{}',
  status        TEXT DEFAULT 'active' CHECK (status IN ('active', 'closed', 'expired')),
  token_count   INTEGER DEFAULT 0,
  started_at    TIMESTAMPTZ DEFAULT now(),
  ended_at      TIMESTAMPTZ
);
```
- Tracks OpenCode sessions and context
- RLS: user owns their sessions

### 9. memory_entries
```sql
CREATE TABLE memory_entries (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  key           TEXT NOT NULL,
  value         JSONB NOT NULL,
  namespace     TEXT DEFAULT 'default',
  ttl           INTERVAL,
  metadata      JSONB DEFAULT '{}',
  created_at    TIMESTAMPTZ DEFAULT now(),
  updated_at    TIMESTAMPTZ DEFAULT now(),
  UNIQUE(key, namespace)
);
```
- Persistent key-value memory for agents
- Supports TTL for auto-expiration

### 10. automation_runs
```sql
CREATE TABLE automation_runs (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  workflow      TEXT NOT NULL,
  trigger       TEXT CHECK (trigger IN ('schedule', 'event', 'manual', 'webhook')),
  status        TEXT DEFAULT 'running' CHECK (status IN ('running', 'completed', 'failed', 'skipped')),
  input         JSONB DEFAULT '{}',
  output        JSONB,
  error         TEXT,
  started_at    TIMESTAMPTZ DEFAULT now(),
  completed_at  TIMESTAMPTZ
);
```
- Tracks automation workflow executions
- Failed runs log error details without data loss

## Security Rules

- ❌ No DELETE operations on any table
- ❌ Mark invalid tasks as `status: 'invalid'`, never delete
- ❌ No DROP TABLE without explicit permission and backup
- ❌ Never print INSFORGE_API_KEY
- ✅ Use parameterized queries (no SQL injection)
- ✅ RLS enabled on all tables
- ✅ Audit via agents_logs for all write operations

## Quick Reference

```bash
# Check connection (example)
curl -H "Authorization: Bearer $INSFORGE_API_KEY" $INSFORGE_URL/health

# Apply schema (when ready)
psql $DATABASE_URL < schema.sql
```
