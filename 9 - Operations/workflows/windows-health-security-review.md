# Windows Health and Security Review Workflow

## Purpose

Define a safe recurring review loop for the Windows OpenClaw instance that uses OpenClaw for orchestration and Claude Code for diagnosis.

## Ownership model

### OpenClaw owns

- schedule
- memory of prior checks
- read-only health/security checks
- escalation
- approval gating
- run logging

### Claude Code owns

- diagnostic interpretation of results
- likely root-cause analysis
- repair options
- patch/command drafting for review
- implementation only when explicitly approved

## Recommended cadence

### Daily

A lightweight daily review should:

1. run read-only OpenClaw checks
2. capture output
3. summarize status
4. ask Claude Code to classify issues and recommend next action

### Weekly

A deeper weekly review should:

- revisit repeated warnings
- review connector drift
- review update status
- review whether any known issue should be promoted into a permanent fix or doc update

## Daily workflow

### Step 1: OpenClaw runs read-only checks

Primary commands:

- `openclaw status`
- `openclaw security audit --deep`
- `openclaw update status`

Optional later additions:

- relevant Windows host checks
- gateway/service startup confirmation
- connector-specific status checks

### Step 2: Store a sanitized run note

Write a short run summary in:

- `9 - Operations/runs/`

The note should include:

- date/time
- commands run
- high-level findings
- severity
- whether user approval is needed

Do not store secrets or tokens.

### Step 3: Claude Code performs diagnostic review

Claude Code should:

- read the health/security findings
- explain likely cause
- classify severity
- recommend one of:
  - no action
  - doc update
  - safe manual review
  - fix proposal
  - urgent escalation

### Step 4: Guardrail check before action

Claude Code may automatically:

- summarize findings
- identify likely cause
- draft commands
- prepare diffs or repair plans

Claude Code must not auto-apply without approval when the change affects:

- firewall rules
- listening services
- startup/persistence behavior
- gateway config
- credentials/auth files
- scheduled tasks
- package/tool updates
- network exposure
- OS security settings

### Step 5: Human approval for sensitive fixes

If a fix is needed, present:

- issue
- impact
- exact proposed action
- rollback concept
- approval request

## Severity model

### Green

- no issue
- informational only
- no action required

### Yellow

- degraded but not dangerous
- should be reviewed soon
- no automatic sensitive change

### Orange

- meaningful operational risk
- likely requires prompt human approval

### Red

- active security or service failure risk
- escalate immediately
- do not silently attempt broad repairs

## Why this model

This gives Betty a daily review loop without unsafe autonomy.

OpenClaw remains the orchestrator and memory owner.
Claude Code acts as a bounded diagnostic and repair specialist.
