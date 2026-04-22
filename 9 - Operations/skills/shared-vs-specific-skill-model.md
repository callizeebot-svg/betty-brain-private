# Shared vs Specific Skill Model

## Purpose

This document defines how Betty should classify skills as the shared brain grows.

The goal is to avoid confusion between:

- shared reusable workflows
- Claude Code-specific execution wrappers
- OpenClaw-specific orchestration skills
- local-only tools or auth-dependent setups

## Skill classes

### 1. Shared skills

These should be stored in the shared repo.

A skill is shared when it is:

- useful across more than one agent/runtime
- mostly tool-agnostic
- expressible as an SOP, playbook, checklist, or structured workflow
- safe to store without secrets or hidden local state

Examples:

- research workflow
- architecture review workflow
- document migration workflow
- content repurposing workflow
- project discovery workflow

Shared skills should describe:

- when to use the skill
- required inputs
- steps
- outputs
- quality checks
- storage location for results
- known risks or limits

### 2. Claude Code-specific skills

These should be documented in the shared repo, but their execution details may remain Claude-side.

A skill is Claude-specific when it depends on:

- Claude slash-command patterns
- Claude sub-agent behavior
- Claude-only MCP integrations
- Claude-specific auth/config state
- Claude-local helper scripts

Examples from current discovery:

- YouTube research skill in its current Claude form
- NotebookLM pipeline workflows
- MCP-heavy Google Workspace workflows

For these, share:

- purpose
- capability summary
- inputs/outputs
- limitations
- path to implementation

Do not assume the implementation runs in OpenClaw unchanged.

### 3. OpenClaw-specific skills

These should be documented in the shared repo and treated as orchestration/runtime skills.

A skill is OpenClaw-specific when it depends on:

- scheduled checks
- heartbeat behavior
- session routing
- reminders/cron
- memory maintenance flows
- multi-agent coordination

Examples:

- daily health/security review
- memory consolidation review
- recurring connector status review
- capability drift review

### 4. Local-only assets

These are not shared skills.

They include:

- auth-bearing setup scripts
- local MCP config
- credentials helpers
- machine-specific bootstrap scripts
- hidden tool state

These may be documented, but should not be treated as portable shared skills.

## Classification rule

When a new skill appears, classify it as one of:

- shared now
- shared after adaptation
- Claude-specific
- OpenClaw-specific
- local only
- do not migrate

## Current classification of known Claude assets

### `C:\Users\calli\Documents\04_Skills\content-repurposing.md`

Classification:

- shared after adaptation

Why:

- the core workflow is reusable
- current implementation assumes Claude sub-agents
- output paths are local and Claude-centric

Adaptation needed:

- convert to tool-agnostic SOP
- separate execution wrappers from shared logic
- move path assumptions into wrapper docs

### `C:\Users\calli\Documents\04_Skills\youtube-research.md`

Classification:

- shared after adaptation

Why:

- the workflow is valuable and reusable
- current version assumes Claude execution and local script/tool setup
- NotebookLM integration is environment-specific

Adaptation needed:

- extract shared research SOP
- treat yt-dlp and NotebookLM automation as tool/runtime wrappers
- document optional integrations separately

### `C:\Users\calli\Documents\02_Guides\Claude_MCP_Integration_Guide.md`

Classification:

- reference only / Claude-specific support document

Why:

- high-value operational knowledge
- heavily Claude- and MCP-specific
- includes environment-specific setup details

Use:

- as a source for distilled connector docs and setup notes
- not as a universal shared skill

### `C:\Users\calli\Documents\05_Scripts\*.py`

Classification:

- local only or shared after adaptation

Why:

- currently path-specific and environment-specific
- some depend on NotebookLM/local Python setup
- useful as reference implementations

Use:

- review for portable logic later
- do not migrate blindly

## Operating rule for future additions

When Claude Code creates or uses a new skill:

1. record the skill in the shared repo
2. classify it using this model
3. note whether it has hidden dependencies
4. extract shared SOP logic if appropriate
5. keep tool-specific wrappers separate

## Source of truth rule

For each durable skill, pick one source of truth:

- shared repo for shared SOPs
- Claude local skill path for Claude-only wrappers
- OpenClaw docs/workflows for orchestration-specific behavior

Do not keep duplicate evolving versions without saying which one is authoritative.
