# Inbox Processing

## Purpose

Process raw incoming material from `.inbox/` into Betty's durable memory system.

This workflow preserves the Evolving Brain principle that raw captures should be synthesized, not merely filed.

## Goals

- turn raw captures into useful memory
- extract meaningful actions, decisions, and research findings
- connect incoming material to projects, areas, people, and operations
- keep the inbox from becoming a graveyard

## Inputs

Typical inputs include:

- onboarding imports
- meeting notes
- research dumps
- pasted context from the user
- project documents dropped for review
- raw notes from external tools

## Outputs

Depending on the material, create or update:

- `2 - Live Logs/ACTIONS_LOG.md`
- `2 - Live Logs/ASSISTANT_ACTIONS_LOG.md` when Betty acted
- project current-state notes
- area notes
- people notes
- operations docs
- a processing note in `9 - Operations/runs/` if useful

## Processing steps

1. Read the inbox item and identify what kind of signal it contains
2. Extract the parts that are actually worth keeping
3. Identify links to existing projects, areas, people, or operations context
4. Append meaningful events or findings to live logs
5. Promote stable knowledge into durable pages where warranted
6. Leave a clear trace of what was processed
7. Mark or move the raw material according to the chosen inbox convention later

## Classification prompts

When processing, ask:

- is this raw evidence, a durable fact, or a transient note?
- does it belong in logs, a project page, an area page, or a person page?
- does it change what Betty currently believes?
- does it suggest a follow-up action or review?

## Rules

- do not preserve everything equally
- prefer synthesis over copying large blobs into durable memory
- preserve attribution and evidence when the source matters
- do not auto-promote weak or noisy material into identity-level claims
- keep the raw item available until processing confidence is good enough

## Recommended cadence

- on demand while the system is still being built
- later: scheduled several times per day if inbox volume warrants it
