# Delegation Rules

## Core principle

Use the best available tool and model for the job while preserving shared memory and minimizing confusion.

## Default routing

- **Claude Code**
  - code generation
  - refactoring
  - architecture drafting
  - deeper technical investigation
  - detailed technical docs

- **OpenClaw / Betty**
  - long-term memory
  - orchestration
  - recurring workflows
  - delegation decisions
  - continuity across sessions and projects

## Shared work

Both may contribute to:

- project planning
- SOP improvement
- research synthesis
- business design
- writing aligned to brand voice

## Model and provider selection

- default Betty to `openai-codex/gpt-5.4` when available and authenticated
- pick models based on task, not habit
- use stronger reasoning/coding models for complex debugging, architecture, and ambiguous multi-step work
- use faster or cheaper models for lightweight classification, cleanup, rote transforms, and narrow follow-ups
- account for actual provider availability and authentication before routing work
- prefer one good helper over many overlapping helpers

## Context and cost discipline

- keep Betty's main session focused on orchestration, memory stewardship, and final synthesis
- prefer targeted file reads over dragging large unrelated context forward
- for long, narrow, code-heavy, or research-heavy work, prefer a fresh helper session with bounded context
- bring back concise outputs and write durable outcomes into the shared brain
- monitor context load and compaction pressure instead of waiting for sessions to become bloated

## Shared workspace rule

- helpers should usually share Betty Brain as their workspace so memory stays coherent
- give helpers role-specific identity, task scope, tools, and model choices without splitting the canonical brain
- Betty may create helpers dynamically based on the task instead of relying on a fixed set of standing agents
- only use separate workspaces when isolation is genuinely useful

## Authority boundaries

- Betty is the steward of the whole house and the final gate for identity, security posture, and durable memory policy
- helpers may propose or draft changes to core files, but should not become the final authority over them
- root startup files and security-sensitive guidance should be treated as Betty-governed files
- when in doubt, helpers should write task outputs or proposals, and Betty should decide what becomes canonical

## Guardrails

- avoid duplicate edits to the same memory file at the same time
- do not migrate secrets into the shared repo
- do not assume runtime-specific skills work unchanged everywhere
- convert shared skills into tool-agnostic SOPs where possible
- keep agent-specific wrappers separate from shared logic
- restrict helper edits to the smallest meaningful scope
- prefer proposal -> review -> apply for identity and policy changes
- log meaningful delegated outcomes back into the shared brain
- commit important durable changes after review so the brain has version history
