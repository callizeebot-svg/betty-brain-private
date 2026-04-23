# Capture Routing

## Purpose

Remove the daily hesitation of:

> where does this go?

This note defines the default routing rules for Betty Brain.

## Fastest rule

**When unsure, put it in `.inbox/` first.**

A slightly messy inbox is better than losing useful signal.

## Default routing table

| If the thing is... | Put it here | Why |
|---|---|---|
| raw, unsorted, imported, or not yet understood | `.inbox/` | safe landing zone before synthesis |
| a day-specific note, scratchpad, or daily working context | `3 - Daily Journal/` | tied to a particular day |
| a dated action, decision, learning, reflection, or notable event | `2 - Live Logs/` | append-only memory trail |
| durable project context | `5 - Projects/` | current best understanding of a project |
| durable ongoing life/work domain context | `6 - Areas/` | long-lived responsibility or theme |
| reference material or supporting docs | `7 - Resources/` | useful, but not active memory by itself |
| strategic direction, targets, or scorekeeping | `8 - North Star/` | keeps the brain pointed somewhere |
| runtime rules, workflows, connectors, schedules, capability notes | `9 - Operations/` | operating system layer, not personal memory |
| credentials or key catalog | `Vault/` | secrets/config only |

## Concrete examples

### Example 1

A rough copied chat export or pasted research dump:

- route to `.inbox/`
- then let [[9 - Operations/workflows/inbox-processing]] decide what survives

### Example 2

"Today I decided the next Betty priority is inbox processing, not more framework notes."

- route to `2 - Live Logs/ACTIONS_LOG.md`
- possibly also update [[5 - Projects/Betty Brain]]

### Example 3

A stable description of how the Betty Brain project currently works:

- route to [[5 - Projects/Betty Brain]]

### Example 4

A note about how OpenClaw should schedule a workflow:

- route to `9 - Operations/`

## Promotion rule

A raw item should move upward only when it becomes clearer.

Typical path:

`raw capture -> .inbox -> live log or dossier -> review/synthesis`

## Rules

- do not force perfect sorting up front
- prefer preserving signal over premature cleanup
- avoid writing the same fact into five places
- if the item changes current understanding, update the relevant durable page
- if the item is just evidence, keep the durable summary concise and link back to the evidence

## Related notes

- [[.inbox/README]]
- [[2 - Live Logs/README]]
- [[9 - Operations/workflows/inbox-processing]]
- [[Onboarding/DAILY-USE]]
