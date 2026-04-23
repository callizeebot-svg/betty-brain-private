# Betty Brain Private

Betty Brain is a shared evolving brain built around **markdown-first memory**.

The repo root is also Betty's **runtime workspace** for startup identity, memory, heartbeat guidance, and local operational notes.

It combines:

- **[[9 - Operations/capabilities/openclaw-windows|OpenClaw on Windows]]** as the primary orchestrator and memory steward
- **[[9 - Operations/capabilities/claude-code|Claude Code on Windows]]** as the specialist executor and repair backstop
- **Obsidian** as the human-facing cockpit for reading, editing, backlinks, and graph view

---

## The single most important setup detail

**The Obsidian vault is the repo root:**

`C:\Users\calli\Repos\betty-brain-private`

**Do not select:**

`C:\Users\calli\Repos\betty-brain-private\Vault`

That `Vault/` folder is only for credentials like `Vault/.env` and `Vault/key-inventory.md`.
It is **not** the brain itself.

---

## Start here

Open these in order:

1. [[BRAIN MAP]]
2. [[HOW BETTY BRAIN WORKS]]
3. [[Onboarding/DAILY-USE]]
4. [[Onboarding/HOW TO USE BETTY BRAIN - SIMPLE]]
5. [[5 - Projects/Betty Brain]]
6. [[8 - North Star/NORTH STAR]]
7. [[9 - Operations/schedule]]

## Runtime startup files

These root files are the runtime-facing startup and continuity layer for OpenClaw:

- `AGENTS.md`
- `SOUL.md`
- `USER.md`
- `IDENTITY.md`
- `MEMORY.md`
- `HEARTBEAT.md`
- `TOOLS.md`
- `memory/`

They should stay lightweight, current, and aligned with the deeper Betty docs.

---

## What this repo is for

This repository is the shared source of truth for:

- identity
- memory
- aspirations
- projects
- operations
- capabilities
- delegation logic
- reusable shared skills

The repo is meant to survive tools changing.
OpenClaw can change, Claude can change, plugins can change — the repo remains the durable brain.

---

## What is live vs planned

### Live now

- Obsidian vault configuration and bundled plugins
- repo-local Claude commands
- shared workflow and operations docs
- OpenClaw daily morning briefing at **07:00 Australia/Sydney**
- OpenClaw weekly health/security review at **Sunday 05:00 Australia/Sydney**

### Planned next

- inbox processing as a practical repeated habit and later automation
- weekly review as a recurring rhythm
- health/security review as a recurring check
- dream cycle once there is enough memory material to synthesize

See [[9 - Operations/schedule]].

---

## The practical mental model

Betty Brain works best when you think in this flow:

`capture -> route -> process -> log -> strengthen`

### If you do not know where something should go

Open:

- [[9 - Operations/workflows/capture-routing]]

### Short version

- raw / unsorted thing -> `.inbox/`
- dated action / decision / learning -> `2 - Live Logs/`
- durable project understanding -> `5 - Projects/`
- operational rule / schedule / workflow -> `9 - Operations/`

---

## How the hybrid setup works

### OpenClaw

Runs the living system:

- recurring workflows
- memory maintenance
- health/security review
- scheduling and continuity

### Claude Code

Handles focused execution:

- coding work
- deep debugging
- technical investigation
- specialist wrappers around shared SOPs

### Obsidian

Gives the human a readable and explorable interface:

- notes and editing
- backlinks
- graph view
- bundled plugins

---

## Key folders

- `2 - Live Logs/` — evolving logs and memory traces
- `5 - Projects/` — durable project dossiers
- `8 - North Star/` — strategic metrics and review layer
- `9 - Operations/` — workflows, connectors, capabilities, runs, upstream references
- `.inbox/` — raw intake waiting to be processed
- `.obsidian/` — human-facing vault configuration and bundled plugins
- `.claude/commands/` — Claude command entry points
- `Vault/` — credentials only, not the actual Obsidian vault root

---

## What to expect from the graph right now

You should expect **a real but still early graph**.

Right now the vault has a strong operating skeleton:

- hub notes
- workflows
- project scaffolds
- operations docs
- shared SOPs

What it still needs is more lived-in content:

- real captures
- processed inbox items
- richer project notes
- people and area pages
- recurring reviews and synthesis

Best first views:

- local graph of [[BRAIN MAP]]
- local graph of [[HOW BETTY BRAIN WORKS]]
- then the global graph later

---

## Useful operating notes

- [[BRAIN MAP]]
- [[HOW BETTY BRAIN WORKS]]
- [[Onboarding/DAILY-USE]]
- [[Onboarding/HOW TO USE BETTY BRAIN - SIMPLE]]
- [[9 - Operations/workflows/capture-routing]]
- [[9 - Operations/workflows/inbox-processing]]
- [[9 - Operations/workflows/context-budgeting-and-session-strategy]]
- [[9 - Operations/workflows/versioning-and-sync]]
- [[9 - Operations/workflows/migration-scoreboard]]
- [[9 - Operations/workflows/health-security-review]]
- [[5 - Projects/Betty Brain]]

---

## Important rules

- Do not commit secrets.
- Keep real values in `Vault/.env` only.
- Put canonical logic in repo docs, not hidden tool state.
- Keep runtime wrappers thin.
- Prefer append-only logs for historical events.
- Treat the repo root as the vault, not `Vault/`.

---

## Short version

Betty Brain is not just an Obsidian vault.
It is:

- a **repo** that stores durable memory
- an **OpenClaw runtime** that keeps the brain alive
- a **Claude Code layer** for specialist execution
- an **Obsidian interface** for human navigation and graph-based sensemaking

The structure is now in place.
The next important step is turning that structure into lived memory practice.
