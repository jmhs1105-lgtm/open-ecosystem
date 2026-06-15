# SKILL ROADMAP — OpenCode Ecosystem

**Last Updated**: 2026-06-15

---

## Nivel 1 — Críticas (25 skills)

Must work before anything else. These skills prevent data loss, security breaches, and system failures.

| # | Skill | Agent | Category |
|---|---|---|---|
| 1 | safety-gate | orchestrator-ai-master | Core |
| 2 | rollback-planning | orchestrator-ai-master | Core |
| 3 | opencode-config-backup | security-recovery | Security |
| 4 | opencode-json-validation | security-recovery | Security |
| 5 | incompatible-key-detection | security-recovery | Security |
| 6 | secret-scanner | security-recovery | Security |
| 7 | env-protection | security-recovery | Security |
| 8 | snapshot-before-change | security-recovery | Security |
| 9 | rollback-from-backup | security-recovery | Security |
| 10 | no-delete-policy | security-recovery | Security |
| 11 | dangerous-command-review | security-recovery | Security |
| 12 | kali-import-audit | security-recovery | Security |
| 13 | disaster-recovery-runbook | security-recovery | Security |
| 14 | mcp-inventory | mcp-operations | MCP |
| 15 | mcp-config-audit | mcp-operations | MCP |
| 16 | mcp-health-check | mcp-operations | MCP |
| 17 | mcp-risk-review | mcp-operations | MCP |
| 18 | web-navigation-safety | mcp-operations | MCP |
| 19 | form-submission-confirmation | mcp-operations | MCP |
| 20 | no-sensitive-login-policy | mcp-operations | MCP |
| 21 | adb-device-diagnostics | android-architect | Android |
| 22 | gradle-build-debug | android-architect | Android |
| 23 | logcat-error-analysis | android-architect | Android |
| 24 | env-safe-config | react-native-expo | Expo |
| 25 | expo-doctor-check | react-native-expo | Expo |

---

## Nivel 2 — Desarrollo (core workflow skills)

Skills needed for daily development work across all platforms.

### Android (12 skills)
- adb-authorization-fix
- apk-install-debug
- app-installed-not-visible-debug
- android-sdk-check
- java-gradle-compatibility
- kotlin-project-structure
- jetpack-compose-ui
- material3-design
- room-sqlite-local-db
- mvvm-architecture
- redmi-miui-debugging
- debug-build-validation

### Expo (12 skills)
- expo-project-bootstrap
- typescript-mobile-structure
- ios-style-ui-screen
- create-account-flow
- auth-form-validation
- react-navigation-setup
- expo-router-setup
- insforge-mobile-auth
- insforge-mobile-database
- api-client-layer
- android-preview-build
- reusable-components-system

### Backend (12 skills)
- node-api-bootstrap
- express-api-structure
- fastify-api-structure
- route-controller-service-pattern
- json-validation
- auth-middleware
- error-handler
- health-check-endpoint
- bot-webhook-endpoint
- insforge-service-layer
- env-safe-loading
- production-readiness-check

### InsForge (12 skills)
- insforge-auth-design
- insforge-database-schema
- insforge-storage-structure
- users-table-design
- projects-table-design
- agents-logs-table-design
- bot-messages-table-design
- leads-table-design
- tasks-table-design
- memory-entries-table-design
- insforge-health-check
- safe-migration-plan

### Telegram Bot (12 skills)
- telegram-bot-bootstrap
- telegram-command-router
- telegram-affiliate-flow
- lead-capture-flow
- insforge-leads-sync
- telegram-error-handling
- webhook-vs-polling-decision
- railway-bot-deploy-plan
- bot-health-check
- no-spam-policy
- token-safe-handling
- conversation-flow-design

### Cloud Runtime (12 skills)
- railway-runtime-plan
- vps-runtime-plan
- node-worker-structure
- process-manager-plan
- restart-policy
- health-checks
- env-vars-safe-setup
- telegram-bot-24-7
- whatsapp-bot-24-7
- deploy-checklist
- rollback-deploy-plan
- cost-control-plan

### AI Provider (12 skills)
- openrouter-provider-management
- gemini-provider-management
- groq-provider-management
- ollama-local-models
- model-fallback-routing
- model-speed-vs-quality
- api-key-safe-validation
- provider-health-check
- coding-model-selection
- cheap-model-strategy
- premium-model-escalation
- cerebras-provider-management

### Orchestrator (7 skills)
- task-routing
- multi-agent-planning
- project-memory-sync
- harness-health-review
- provider-fallback-strategy
- kali-to-mac-migration-control
- mcp-capability-routing

---

## Nivel 3 — Expansión

Skills for advanced features, bots, research, and observability.

### WhatsApp Bot (16 skills)
- whatsapp-flow-design
- whatsapp-webhook-architecture
- lead-qualification-flow
- conversation-state-machine
- backend-integration
- message-template-planning
- whatsapp-policy-safety
- no-spam-automation
- crm-style-lead-sync
- insforge-contact-storage
- human-handoff-flow
- error-retry-design
- logs-and-audit
- 24-7-runtime-plan
- provider-comparison
- whatsapp-testing-checklist

### Software Architect (16 skills)
- clean-architecture-planning
- modular-folder-structure
- frontend-backend-separation
- bot-service-separation
- repository-pattern
- service-layer-design
- domain-modeling
- api-contract-design
- database-schema-review
- scalability-review
- refactor-plan
- technical-roadmap
- documentation-architecture
- decision-records
- dependency-boundaries
- project-readiness-review

### Research (16 skills)
- official-docs-research
- technology-comparison
- open-source-alternatives
- pricing-and-limits-research
- model-benchmark-research
- github-repo-evaluation
- library-risk-review
- compatibility-check
- trend-monitoring
- tutorial-synthesis
- implementation-plan-from-docs
- source-citation-discipline
- no-hallucination-rule
- changelog-review
- mcp-ecosystem-research
- ai-agent-tools-research

### Observability (6 skills)
- log-drain-plan
- uptime-monitoring
- background-jobs
- cron-jobs
- logs-review
- cache-reset-safe

### Advanced MCP (4 skills)
- chromium-dedicated-browser
- localhost-browser-testing
- mcp-troubleshooting
- mcp-permission-model

---

## Execution Order

```
Phase 1: Nivel 1 Críticas (25 skills) ← START HERE
Phase 2: Nivel 2 Android + Expo + Backend (36 skills)
Phase 3: Nivel 2 InsForge + Telegram + Cloud + AI (48 skills)
Phase 4: Nivel 2 Orchestrator (7 skills)
Phase 5: Nivel 3 WhatsApp + Architecture + Research (48 skills)
Phase 6: Nivel 3 Observability + Advanced MCP (10 skills)
Phase 7: Remaining skills (44 skills)
```

---

## Validation After Each Phase

```bash
~/harnesses/scripts/ocskills-check
~/harnesses/scripts/ocagents-check
~/harnesses/scripts/ocharness-check
```
