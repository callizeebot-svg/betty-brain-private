# Claude Code Inventory

## Purpose

This document records the currently known Claude Code environment, useful paths, and boundaries.

Claude Code should be treated as a specialist environment inside Betty Brain, not the primary memory owner.

## Known useful paths

### Main knowledge/work area

- `C:\Users\calli\Documents\`

### Notable subfolders

- `01_Setup_Scripts`
- `02_Guides`
- `03_Research`
- `04_Skills`
- `05_Scripts`
- `Projects`

## Currently observed assets

### Guides

- `C:\Users\calli\Documents\02_Guides\Claude_MCP_Integration_Guide.md`

Status:

- useful
- environment-specific
- source material for future distilled connector docs

### Skills

- `C:\Users\calli\Documents\04_Skills\content-repurposing.md`
- `C:\Users\calli\Documents\04_Skills\youtube-research.md`

Status:

- valuable
- not yet shared as-is
- require classification and likely adaptation

### Scripts

- `C:\Users\calli\Documents\05_Scripts\add_sources.py`
- `C:\Users\calli\Documents\05_Scripts\notebooklm_pipeline.py`
- `C:\Users\calli\Documents\05_Scripts\parse_results.py`

Status:

- useful reference implementations
- path-specific
- environment-specific
- not ready to treat as shared portable assets

## Observed constraints

- Claude internal memory is believed to be mostly blank
- useful working knowledge is mostly in `Documents`
- some integrations are MCP/auth-dependent
- some existing skill behavior assumes Claude-specific execution features
- `.claude` inside the shared repo currently appears minimally populated

## Role in Betty Brain

Claude Code should currently be used as:

- coding specialist
- diagnostic and repair specialist
- structured documentation worker
- migration assistant for carefully selected assets

Claude Code should not currently be used as:

- the primary durable memory owner
- an autonomous fixer of sensitive host/security settings
- the default source of truth for cross-tool operating policy

## Sharing boundary

Share into Betty Brain:

- capability summaries
- connector notes
- distilled SOP logic
- sanitized diagnostics
- carefully adapted skills

Do not share directly:

- credentials
- auth-bearing configs
- local MCP state
- hidden runtime internals
- machine-specific helper state unless intentionally documented
