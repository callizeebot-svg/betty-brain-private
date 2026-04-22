# OpenClaw Failure Backstop with Claude Code

## Purpose

Define the secondary diagnostic role for Claude Code when the Windows OpenClaw instance is unhealthy, stalled, or not running.

This workflow does not replace OpenClaw's built-in health and security features.
It exists as a backstop for the failure case where OpenClaw cannot reliably inspect or repair itself.

## Core model

### Primary line of defense

OpenClaw should continue to use its own built-in:

- status checks
- security audit
- update status
- scheduled review workflow

These remain the primary and preferred health/security mechanisms.

### Secondary line of defense

Claude Code acts as:

- external observer
- diagnostic specialist
- repair planner
- bounded repair worker after approval

Claude Code is especially useful when:

- OpenClaw crashes
- the gateway stops running
- scheduled OpenClaw checks stop appearing
- a config or runtime change breaks OpenClaw behavior
- logs or local file state need interpretation

## Ownership split

### OpenClaw owns

- recurring built-in checks while healthy
- continuity and memory
- run history
- normal scheduling

### Claude Code owns

- out-of-band diagnosis when OpenClaw is degraded
- reading logs, configs, and file state
- proposing recovery actions
- making scoped repairs only with approval

## Trigger conditions for Claude backstop review

Use Claude Code when one or more are true:

- OpenClaw UI or gateway is unavailable
- expected scheduled checks stop firing
- OpenClaw health output cannot be obtained reliably
- startup/login-item behavior appears broken
- OpenClaw config changes caused regression
- the user requests an independent check

## Guardrails

Claude Code may:

- inspect logs and config
- inspect repo and local file state
- explain likely causes
- draft repair steps
- prepare patches or commands

Claude Code must not silently:

- weaken security settings
- disable important protections
- change firewall/network exposure
- change auth or credential files
- replace broad config without review
- invent recovery steps without evidence

## Safe repair pattern

1. Confirm the failure mode
2. Identify likely root cause
3. Present the smallest credible repair action
4. Explain rollback
5. Apply only after approval for sensitive actions
6. Re-check OpenClaw health after repair
7. Record the incident in the shared brain

## Persistence note

OpenClaw's built-in features should persist as long as:

- the OpenClaw installation remains intact
- the gateway/login-item startup remains configured
- config is not reset or replaced incorrectly
- the scheduled jobs remain present in the gateway scheduler

However, persistence should not be assumed blindly.

The system should periodically verify:

- gateway still starts
- cron jobs still exist
- expected healthcheck workflow still runs
- version/update changes have not broken behavior

## Recommended design stance

Use both layers:

- OpenClaw built-ins for normal ongoing health/security review
- Claude Code as the fallback repair specialist when OpenClaw itself is the subject of the problem

This gives Betty resilience without unsafe autonomy.
