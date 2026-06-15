# Monitoring and Logs

## Logging Architecture

```
App → Winston/Pino → stdout → Railway/VPS logs
                  → InsForge agents_logs
                  → InsForge errors
                  → InsForge system_events
```

## Log Levels

| Level | Use | Example |
|---|---|---|
| `debug` | Development details | "Query took 45ms" |
| `info` | Normal operations | "Server started on :3000" |
| `warn` | Recoverable issues | "InsForge retry 1/3" |
| `error` | Errors that need attention | "DB connection failed" |
| `critical` | System-down events | "API unreachable" |

## InsForge Log Tables

### agents_logs
Every agent action is logged:
```sql
INSERT INTO agents_logs (agent_name, level, message, metadata)
VALUES ('backend-api', 'info', 'Health check passed', '{}');
```

### errors
All errors tracked:
```sql
INSERT INTO errors (source, error_type, message, stack_trace, context)
VALUES ('backend', 'recoverable', 'InsForge timeout', '...', '{}');
```

### system_events
System lifecycle events:
```sql
INSERT INTO system_events (event_type, component, status, message)
VALUES ('deploy', 'api', 'success', 'v1.2.0 deployed');
```

## Monitoring Dashboard

Build from InsForge tables:

| Metric | Query |
|---|---|
| New leads today | `COUNT(*) FROM leads WHERE created_at > today()` |
| Conversion rate | `COUNT(*) FROM leads WHERE status='converted'` / total |
| API costs | `SUM(cost_estimate) FROM api_usage WHERE created_at > today()` |
| Error count | `COUNT(*) FROM errors WHERE created_at > today()` |
| Active agents | `COUNT(*) FROM agents WHERE status='active'` |

## Alerts

| Condition | Alert Channel |
|---|---|
| API health fails 3x | Email + Telegram |
| Critical error logged | Email |
| Daily cost > $1 | Daily report |
| Bot unresponsive > 5min | Telegram |
| InsForge unreachable | Log + retry |

## Retention

| Table | Retention |
|---|---|
| agents_logs | 30 days |
| errors | 90 days |
| system_events | 90 days |
| bot_messages | 180 days |
| api_usage | 365 days |
