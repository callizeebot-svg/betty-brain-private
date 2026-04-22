\# Operations



This folder is the operational layer of Betty Brain.



It exists to help OpenClaw, Claude Code, and future agents understand:

\- how the system runs

\- what workflows exist

\- what connectors exist

\- what capabilities each agent has

\- how delegation decisions should be made

\- what runtime assumptions and boundaries exist



\## Purpose

Operations is not long-term personal memory.

It is the runtime and coordination layer.



\## Key subfolders

\- `skills/` — shared and agent-specific skill definitions or notes

\- `workflows/` — repeatable operating flows

\- `connectors/` — MCPs, integrations, and external system notes

\- `capabilities/` — what each tool/agent can do

\- `delegation/` — task-routing rules

\- `runs/` — optional logs of meaningful operations

\- `upstream/` — notes or pinned references to upstream sources



\## New foundation docs

\- `skills/shared-vs-specific-skill-model.md` — classification model for shared, Claude-specific, OpenClaw-specific, and local-only skills

\- `skills/skill-source-of-truth-and-path-precedence.md` — update-safe path and precedence model for canonical skill logic and runtime wrappers

\- `skills/skill-registry.md` — registry of canonical skill docs and runtime wrapper locations

\- `skills/youtube-research-shared-sop.md` — first shared canonical research workflow extracted from Claude-side implementation

\- `skills/content-repurposing-shared-sop.md` — shared canonical repurposing workflow extracted from Claude-side implementation

\- `skills/runtime-wrapper-split-model.md` — how shared canonical skills split into Claude and OpenClaw runtime wrappers

\- `connectors/claude-code-inventory.md` — current Claude Code paths, assets, role, and boundaries

\- `workflows/windows-health-security-review.md` — safe daily review model using OpenClaw + Claude Code

\- `workflows/claude-skill-intake-and-review.md` — intake path for future Claude skills

\- `workflows/shared-memory-architecture.md` — durable shared memory model across OpenClaw and Claude Code

\- `workflows/dream-cycle.md` — recurring memory-strengthening maintenance workflow

\- `workflows/openclaw-failure-backstop-with-claude-code.md` — fallback model for diagnosing or repairing OpenClaw when OpenClaw itself is degraded

\## Rules

\- do not store secrets here

\- prefer stable documentation over noisy logs

\- clearly separate shared logic from tool-specific wrappers

\- update this area when an agent gains or loses important capability

