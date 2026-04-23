# Health and Security Review

## Purpose

This is the simple entry point for Betty's health/security review workflow.

## Current canonical implementation

For the current environment, the authoritative detailed workflow is:

- [[9 - Operations/workflows/windows-health-security-review]]

That file is the current source of truth because Betty is presently centered on a Windows OpenClaw instance.

## Current state

- **Documented:** yes
- **Live recurring automation:** yes, via the weekly Windows review cadence
- **Current live schedule:** Sunday 05:00 Australia/Sydney

## Ownership model

- **OpenClaw:** orchestration, scheduling, memory of prior checks, read-only checks, escalation
- **Claude Code:** diagnosis, interpretation, repair planning, technical follow-up

## Suggested cadence

- light review: daily or near-daily
- deeper review: weekly

## Where results should go

- `9 - Operations/runs/`
- relevant project or operations notes when a repeated issue becomes durable knowledge

## Rules

- prefer read-only checks first
- do not silently apply sensitive system fixes
- present exact changes for approval when a repair would alter config, exposure, startup behavior, auth, or scheduling

## Related notes

- [[9 - Operations/workflows/windows-health-security-review]]
- [[9 - Operations/workflows/openclaw-failure-backstop-with-claude-code]]
- [[9 - Operations/schedule]]
