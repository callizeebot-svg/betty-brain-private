# Skills registry

This folder tracks the skills Betty Brain expects across OpenClaw, Claude Code, and Obsidian.

## Skill layers

Startup-safe overview:

- [[SKILL SURFACE]]

### 1. Shared canonical skills

These are the durable SOPs and playbooks that belong in the repo.

Key docs:

- [[9 - Operations/skills/skill-registry]]
- [[9 - Operations/skills/shared-vs-specific-skill-model]]
- [[9 - Operations/skills/skill-source-of-truth-and-path-precedence]]
- [[9 - Operations/skills/runtime-wrapper-split-model]]
- [[9 - Operations/skills/youtube-research-shared-sop]]
- [[9 - Operations/skills/content-repurposing-shared-sop]]

### 2. Runtime-specific wrappers

These adapt canonical skills to a particular runtime:

- **OpenClaw wrappers** for cron, heartbeats, session orchestration, and tool usage
- **Claude Code wrappers** for slash commands, MCPs, and project-local execution behavior

### 3. Human-facing skill surface

Obsidian is part of the skill layer too because it changes how the brain is explored and operated.

## Bundled Obsidian plugins

| Plugin | What it does | Version | Required |
|---|---|---|---|
| `internetvin-terminal` | Terminal inside Obsidian | 1.1.2 | yes |
| `agentfiles` | Browse and edit agent files from Obsidian | 0.7.2 | yes |
| `obsidian-excalidraw-plugin` | Visual thinking and diagrams | 2.22.0 | yes |

See [[ATTRIBUTION]] and `scripts/install-plugins.ps1` / `scripts/install_plugins.sh`.

## Claude command layer

Repo-local command prompts live in:

- `.claude/commands/`

These are entry points, not the source of truth. The source of truth remains the workflow and skill markdown in this repo.

## Rules

- shared logic lives in the repo
- wrappers stay thin
- do not treat Claude-only behavior as portable by default
- do not rely on app-bundled paths as the canonical source of truth
- never store secrets in skill docs
