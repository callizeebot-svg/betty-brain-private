# Betty Brain Master Plan

## Purpose

Adapt the Evolving Brain Template into a durable shared brain across:

- OpenClaw on Windows
- Claude Code on Windows
- future specialist agents where useful

The shared repo should become Betty's source of truth for memory, operations, skill logic, and project continuity.

## Core architecture

### Shared repo

The repo is the durable brain.

It should hold:

- identity
- aspirations
- live logs
- projects, areas, resources, people
- operations docs
- shared skill logic
- workflow definitions
- curated assistant memory

### OpenClaw

OpenClaw should become the primary orchestrator and memory steward.

It should own:

- continuity
- scheduling
- recurring workflows
- health/status review while healthy
- shared-brain maintenance
- delegation decisions

### Claude Code

Claude Code should become the technical specialist and fallback diagnostic worker.

It should own:

- code-heavy execution
- technical documentation
- debugging and repair work
- selective migration assistance
- project- or runtime-specific execution wrappers

## Memory goals

Preserve the strongest Evolving Brain features:

- durable markdown memory
- append-oriented live logs
- assistant action memory
- recurring synthesis into durable pages
- dream-cycle style maintenance
- operational visibility through workflows and run logs

## Skill goals

- keep canonical skill logic in the shared repo
- keep runtime wrappers thin
- use persistent user/project skill paths for Claude and OpenClaw wrappers
- treat app-bundled skills as upstream/reference, not source of truth

## Near-term phases

### Phase 1 — Foundation stabilization

- define shared memory architecture
- define skill path precedence
- inventory Claude Code assets
- establish health/security and fallback workflows
- preserve dream-cycle concept

### Phase 2 — Shared skill extraction

- convert priority Claude skills into shared canonical SOPs ✅
- create wrapper split model for Claude and OpenClaw ✅
- start using skill registry as the control surface ✅

### Phase 3 — Memory engine buildout

- add inbox processing model ✅
- add briefing/review workflows ✅
- strengthen project and area dossier patterns ✅
- expand assistant action memory and run logging ✅

### Phase 4 — Operational maturity

- establish scheduled checks and memory maintenance loops
- refine failure-backstop workflow with Claude Code
- improve capability awareness and routing decisions
- prepare for incoming IMatch context and future projects

## Explicit cautions

- do not migrate secrets, auth, or hidden local tool state into the shared repo
- do not assume Claude-specific skills are portable without adaptation
- do not let app install directories become the only home of important custom logic
- do not lose the dream-cycle and memory-strengthening features while simplifying the system

## Design stance

Betty should not just accumulate files.
Betty should become a shared memory system that stays coherent, inspectable, and update-safe over time.
