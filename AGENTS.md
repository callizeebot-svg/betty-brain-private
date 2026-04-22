# AGENTS

## Purpose

This vault is Betty Brain: a shared markdown brain across OpenClaw, Claude Code, and future specialist agents.

The repo is the durable source of truth.

## Runtime roles

### OpenClaw

Primary orchestrator and memory steward.

Owns:

- continuity
- scheduling
- recurring workflows
- shared-brain upkeep
- operational awareness

### Claude Code

Technical specialist and fallback diagnostic worker.

Owns:

- code-heavy execution
- repair and debugging work
- project-specific execution wrappers
- technical documentation

### Obsidian

Primary human cockpit for reading, editing, navigating, and visualizing the vault.

## Reading order

When orienting to the brain, prefer this order:

1. `0 - Identity/IDENTITY.md`
2. `0 - Identity/SOUL.md`
3. `0 - Identity/USER.md`
4. `8 - North Star/NORTH STAR.md`
5. relevant project, area, or people dossiers
6. relevant entries in `2 - Live Logs/`
7. relevant docs in `9 - Operations/`

## Core rules

- The shared repo is the source of truth for durable memory.
- Do not migrate secrets, auth files, or hidden local runtime state into the repo.
- Append to live logs; do not silently rewrite historical events.
- Use the dossier pattern for durable pages: compiled truth on top, timeline below.
- Surface contradictions instead of silently resolving them.
- Keep runtime wrappers thin and canonical logic in the repo.

## Memory rules

### Assistant actions

When Betty completes a meaningful action, append it to:

- `2 - Live Logs/ASSISTANT_ACTIONS_LOG.md`

Log meaningful outcomes, not trivial reads or searches.

### User/system actions

Major developments should be reflected in:

- `2 - Live Logs/ACTIONS_LOG.md`

### Inbox capture

Raw material lands in `.inbox/` and should be processed via:

- `9 - Operations/workflows/inbox-processing.md`

## Workflow rules

Before running a workflow, read its file in:

- `9 - Operations/workflows/`

After a meaningful workflow run:

1. update any relevant durable docs
2. append to `9 - Operations/runs/YYYY-MM.md`
3. record important Betty actions in `ASSISTANT_ACTIONS_LOG.md`
4. refresh related registries if the architecture changed

## Skills rules

Use:

- `9 - Operations/skills/shared-vs-specific-skill-model.md`
- `9 - Operations/skills/skill-source-of-truth-and-path-precedence.md`
- `9 - Operations/skills/runtime-wrapper-split-model.md`
- `9 - Operations/skills/skill-registry.md`

to decide whether a skill is:

- shared
- Claude-specific
- OpenClaw-specific
- local-only

## Obsidian / Claude command layer

This vault includes:

- bundled Obsidian plugins in `.obsidian/plugins/`
- Claude command files in `.claude/commands/`

These improve usability, but the canonical brain still lives in markdown docs under the repo.

## Credentials

- `Vault/.env` is uncommitted and holds real secret values
- `Vault/.env.example` is the template
- `Vault/key-inventory.md` is the committed human-readable catalog

Never commit secrets.
