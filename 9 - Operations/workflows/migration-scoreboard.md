# Migration Scoreboard

## Purpose

Keep migration visible, controlled, and honest.

This note exists so Betty Brain does not absorb external material chaotically.

## Status meanings

- **candidate** — worth evaluating, not yet reviewed deeply
- **reviewed** — inspected and classified
- **partial** — some value extracted, but not fully integrated
- **migrated** — durable value is already represented inside Betty Brain
- **deferred** — intentionally postponed
- **blocked** — waiting on a decision, dependency, or safety concern

## Current scoreboard

| Asset | Source path | Suggested target | Type | Status | Safety | Owner | Next action |
|---|---|---|---|---|---|---|---|
| Documents overview | `C:\Users\calli\Documents\README.md` | `7 - Resources/` or project-specific notes | reference/index | candidate | safe | Betty | review for any durable references worth importing |
| Claude MCP integration guide | `C:\Users\calli\Documents\02_Guides\Claude_MCP_Integration_Guide.md` | `9 - Operations/connectors/` and `7 - Resources/` | connector/reference | reviewed | safe | Betty | extract only durable operational guidance |
| content-repurposing skill | `C:\Users\calli\Documents\04_Skills\content-repurposing.md` | `9 - Operations/skills/content-repurposing-shared-sop.md` | skill/SOP | partial | safe | Betty | create or refine runtime wrappers from shared SOP |
| youtube-research skill | `C:\Users\calli\Documents\04_Skills\youtube-research.md` | `9 - Operations/skills/youtube-research-shared-sop.md` | skill/SOP | partial | safe | Betty | create or refine runtime wrappers from shared SOP |
| NotebookLM helper scripts | `C:\Users\calli\Documents\05_Scripts\add_sources.py` + related scripts | `scripts/` or project-scoped implementation notes | script/tooling | reviewed | medium | Betty + Claude Code | decide whether these are active Betty assets or external references |
| Betty/IMatch brand voice | `5 - Projects\IMatch\brand-voice.md` | already in repo | project asset | migrated | safe | Cally + Betty | leave deferred until IMatch becomes active again |

## Rules

- do not migrate secrets, auth files, or hidden runtime state
- do not migrate just because a file exists
- prefer extracting durable value over copying entire folders blindly
- record when something is intentionally deferred so it stops floating in ambiguity

## Next likely moves

1. decide whether the NotebookLM helper scripts belong in Betty or remain external references
2. create runtime wrappers for the shared content-repurposing and youtube-research SOPs
3. keep IMatch deferred until Betty Brain operations are more mature

## Related notes

- [[9 - Operations/workflows/shared-brain-migration]]
- [[9 - Operations/skills/skill-registry]]
- [[5 - Projects/Betty Brain]]
