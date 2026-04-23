# Project Storage Model

Use this note to decide **where project things should live**.

## Core principle

Betty Brain is the shared operating brain.

It should store:

- durable project understanding
- decisions
- plans
- research notes
- workflow links
- important constraints
- references to external repos and deliverables

It should **not** automatically become the home of every shipped codebase or binary output.

## Split the world into two layers

### 1. Brain layer (inside Betty Brain repo)

Store in Betty Brain:

- project dossiers in `5 - Projects/`
- research in `7 - Resources/` when it is reusable beyond one narrow build step
- important reports in per-report folders under `7 - Resources/reports/` or `5 - Projects/<Project>/reports/`
- operational notes in `9 - Operations/`
- logs of major changes in `2 - Live Logs/`

Examples:

- project summary
- current status
- constraints and risks
- roadmap
- links to local repos / GitHub repos
- meeting notes after synthesis
- architecture decisions worth remembering

### 2. Product/build layer (outside Betty Brain repo unless explicitly intended)

Store outside Betty Brain when the work is the actual product/codebase:

- application source code
- package manifests
- build scripts
- test suites
- product assets
- deployment config
- generated binaries

This usually belongs in:

- a separate local project repository
- its own GitHub repository

## IMatch example

If Betty starts an `IMatch` project, the normal expectation is:

### In Betty Brain repo

- `5 - Projects/IMatch/` or equivalent dossier notes
- project context, goals, constraints, roadmap, research, decisions
- links to the actual implementation repo(s)
- reusable research or references when worth preserving

### In a separate project repo

- the real IMatch codebase
- app/product implementation files
- product-specific README, package.json, source tree, CI config, etc.

### In GitHub

- a GitHub repo for the actual IMatch product
- optionally also issues/projects/discussions tied to that codebase

## When to store something in `7 - Resources/`

Use `7 - Resources/` when the asset is reusable reference material, such as:

- market research
- domain notes
- comparative studies
- templates
- shared examples
- cross-project technical references

Do **not** use `7 - Resources/` as the default home for the actual product build.

## Report storage convention

For important reports, prefer a dedicated folder named after the report.

Examples:

- `7 - Resources/reports/agent-memory-youtube-study-2026-04-23/`
- `5 - Projects/IMatch/reports/market-validation-round-1/`

Inside the folder, prefer names like:

- `report.md` — canonical markdown summary
- `index.html` — renderable/shareable HTML version
- optional assets such as images, exported PDFs, graph data, or attachments

This keeps multi-file report outputs grouped and easier to version.

## When a project can live inside Betty Brain

A project may live inside Betty Brain itself when it is:

- a small internal script
- a vault-native artifact
- a documentation-only initiative
- a brain-maintenance tool intentionally coupled to this repo

If it becomes a serious standalone product, it usually deserves its own repo.

## Output placement rule

Ask:

- is this durable understanding about the project? -> Betty Brain
- is this reusable reference material? -> `7 - Resources/`
- is this the actual product/code/artifact? -> separate project repo

## Why this split matters

This keeps Betty Brain:

- coherent
- lighter
- easier to navigate
- focused on memory and orchestration

while the actual product repo stays focused on shipping the product.
