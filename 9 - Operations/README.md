# Operations

This folder is the operational layer of Betty Brain.

It exists to help OpenClaw, Claude Code, and future agents understand:

- how the system runs
- what workflows exist
- what connectors exist
- what capabilities each agent has
- how delegation decisions should be made
- what runtime assumptions and boundaries exist

## Purpose

Operations is not long-term personal memory.
It is the runtime and coordination layer.

## Start with these notes

- [[9 - Operations/schedule]]
- [[9 - Operations/workflows/README]]
- [[9 - Operations/workflows/capture-routing]]
- [[9 - Operations/workflows/inbox-processing]]
- [[9 - Operations/workflows/context-budgeting-and-session-strategy]]
- [[9 - Operations/workflows/versioning-and-sync]]
- [[9 - Operations/workflows/health-security-review]]
- [[9 - Operations/workflows/migration-scoreboard]]

## Key subfolders

- `skills/` — shared and agent-specific skill definitions or notes
- `workflows/` — repeatable operating flows
- `connectors/` — MCPs, integrations, and external system notes
- `capabilities/` — what each tool/agent can do
- `delegation/` — task-routing rules
- `runs/` — operational run history
- `upstream/` — pinned references to upstream sources

## Current practical focus

The current operations goal is not more abstraction.
It is making the most important workflows real and repeatable:

1. route new material correctly
2. process inbox items into durable memory
3. keep the schedule honest about what is live vs planned
4. build recurring health, review, and synthesis habits over time

## Rules

- do not store secrets here
- prefer stable documentation over noisy logs
- clearly separate shared logic from tool-specific wrappers
- update this area when an agent gains or loses important capability
- avoid claiming a workflow is live unless it is actually live
