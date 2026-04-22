# Shared Memory Architecture

## Purpose

Define Betty's durable shared memory model across OpenClaw and Claude Code.

The shared repo should act as Betty's memory system, not just a documentation folder.

## Core principle

Memory should be:

- durable
- inspectable
- linkable
- synthesized
- update-safe
- shared across runtimes without depending on hidden tool state

## Memory layers

### 1. Canonical durable memory

Lives in the shared repo.

Includes:

- identity
- aspirations
- projects
- areas
- resources
- people
- north star
- operations docs
- curated live logs

This is the main source of truth.

### 2. Operational memory

Also lives in the shared repo, mainly under `9 - Operations/` and `2 - Live Logs/`.

Includes:

- run notes
- incident notes
- connector status
- capability changes
- assistant action history
- recurring workflow outputs

This is durable, but more runtime-oriented.

### 3. Local runtime state

Lives outside the shared repo.

Includes:

- auth
- caches
- sessions
- machine-specific config
- local MCP runtime state
- volatile app state

This should be documented when needed, but not treated as shared memory.

## Two key memory streams

### User/life/system memory

Stored through logs, project docs, areas, people, and identity-related pages.

### Assistant memory

Stored in `2 - Live Logs/ASSISTANT_ACTIONS_LOG.md` and related operational docs.

Betty should be able to answer:

- what has changed
- what work is underway
- what Betty has done
- what the system currently believes

## Memory strengthening workflows

Strong memory requires recurring maintenance, not just note creation.

Betty should preserve these Evolving Brain features:

- append-oriented logs
- synthesis into durable pages
- periodic maintenance
- dream-cycle style reconciliation
- operational visibility through workflows and runs

## Memory update rules

- raw signal should not stay raw forever if it matters
- important recurring patterns should be promoted into durable pages
- contradictions should be surfaced, not buried
- historical evidence should remain inspectable
- identity should change carefully, not automatically

## Relationship to runtimes

### OpenClaw

OpenClaw should be the primary memory steward:

- recurring review
- scheduling
- continuity
- operations state
- shared-brain upkeep

### Claude Code

Claude Code should contribute to memory by:

- producing high-quality technical outputs
- drafting updates
- diagnosing issues
- creating reusable artifacts

But Claude should not be the only place memory lives.

## Future additions

As the system matures, Betty may add:

- review docs under `8 - North Star/`
- people/project dossier patterns with stronger timelines
- inbox processing workflow
- briefing workflow
- weekly/monthly review workflow
- retrieval/indexing layer if needed

## Design stance

The goal is not just to store more notes.
The goal is to build a shared brain that gets better at understanding itself over time.
