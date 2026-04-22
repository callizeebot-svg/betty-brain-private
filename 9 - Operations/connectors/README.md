# Connectors registry

Every connector that feeds `.inbox/` or connects Betty Brain to an external system is documented here.

A connector is considered wired when it exists, is authenticated, and can run on demand or on schedule without ad-hoc manual work.

## Active

| Connector | Type | Source | Target | Schedule | Scope | Credentials | File |
|---|---|---|---|---|---|---|---|
| Claude Code local runtime | local runtime | Claude Code | Betty repo + local skills | on demand | workstation | local Claude config | [[9 - Operations/connectors/claude-code-current-state]] |
| Claude Code inventory | documentation | local machine | operational visibility | manual refresh | global | none | [[9 - Operations/connectors/claude-code-inventory]] |

## Planned / candidate

- OpenClaw cron-backed processors
- source-specific inbox capture connectors
- project-scoped technical connectors
- future IMatch ingestion connector

## What counts as a connector

- MCP server
- API poller
- watch folder
- shortcut / automation flow
- external app integration
- runtime bridge between tool ecosystems

## Rules

- do not put secrets in these files
- document where a connector runs
- document what it reads and writes
- document how to disable it
- note whether it is shared, local-only, or runtime-specific
