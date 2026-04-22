# Betty Brain Private

Betty Brain is a shared evolving brain built around **markdown-first memory**.

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

If you open `Vault/` as the Obsidian vault, the graph will look tiny or broken because you are only looking at the credentials subfolder instead of the full brain.

---

## Start here

Open these in order:

1. [[BRAIN MAP]]
2. [[HOW BETTY BRAIN WORKS]]
3. [[0 - Identity/IDENTITY]]
4. [[0 - Identity/SOUL]]
5. [[0 - Identity/USER]]
6. [[8 - North Star/NORTH STAR]]
7. [[9 - Operations/README]]

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

## How Betty Brain is structured

### 1. Human layer: Obsidian

Obsidian is where you:

- read the brain
- navigate through links
- use backlinks and graph view
- open hub notes like [[BRAIN MAP]]
- work visually with Canvas / Excalidraw

### 2. Runtime layer: OpenClaw

OpenClaw runs the living system:

- recurring workflows
- memory maintenance
- scheduling and continuity
- daily briefing
- health/security review
- future dream-cycle and review automations

### 3. Specialist execution layer: Claude Code

Claude Code handles focused technical work:

- coding
- debugging
- technical investigation
- repo-local command entry points in `.claude/commands/`
- specialist wrappers around shared SOPs

---

## What the folders mean

- `0 - Identity/` — who Betty is and who she serves
- `1 - Aspirations/` — goals, active projects, habits, favorite problems
- `2 - Live Logs/` — append-only logs of actions, decisions, learning, emotions, reflections
- `3 - Daily Journal/` — daily notes / day-level working memory
- `4 - Meetings/` — meeting notes and related outputs
- `5 - Projects/` — project dossiers and durable project memory
- `6 - Areas/` — ongoing life/work areas
- `7 - Resources/` — reference material
- `8 - North Star/` — strategic metrics and review layer
- `9 - Operations/` — workflows, capabilities, connectors, schedules, runs, upstream references
- `.inbox/` — raw intake waiting to be processed into durable memory
- `Vault/` — credentials only, not the actual Obsidian vault root

---

## How memory is supposed to flow

### Raw capture → processing → durable memory

A good default mental model is:

1. something is captured into [[.inbox/README|.inbox]]
2. [[9 - Operations/workflows/inbox-processing]] processes it
3. important outputs are written into [[2 - Live Logs/README|Live Logs]], project pages, people pages, or area pages
4. synthesis workflows like [[9 - Operations/workflows/dream-cycle]] and [[9 - Operations/workflows/weekly-review]] strengthen and compress memory over time

### Example

If you say:

> "Remember that I want Betty to help with YouTube research and repurposing first, not IMatch yet."

The ideal long-term shape is:

- raw capture lands in `.inbox/`
- it gets processed into:
  - a live log entry
  - maybe a project or North Star note
  - maybe an update to a shared SOP or operations doc

That is the difference between a note dump and an evolving brain.

---

## Why the graph may look sparse right now

You should expect **some graph**, but not a huge magical galaxy yet.

Right now the repo has a strong **operating skeleton**:

- hub notes
- workflows
- README files
- identity files
- operations docs
- shared SOPs

What it does **not** have yet is a large amount of processed real-life material such as:

- lots of project pages
- lots of people pages
- lots of inbox captures turned into linked notes
- lots of daily notes and reviews

So the graph is real, but still early.

### What you should look at first

- **Local graph of [[BRAIN MAP]]** — this should show the clearest structure right now
- **Backlinks on [[HOW BETTY BRAIN WORKS]]**
- **Global graph** once more real notes are added and interlinked

### What will make the graph become useful

- more processed inbox material
- more project and people pages
- more wiki-style links between notes
- recurring reviews and synthesis

---

## What is already live vs planned

### Live now

- OpenClaw daily morning briefing at **07:00 Australia/Sydney**
- Obsidian vault config at repo root
- Claude command layer in `.claude/commands/`
- bundled Obsidian plugins in `.obsidian/plugins/`

### Planned next

- [[9 - Operations/workflows/dream-cycle]]
- [[9 - Operations/workflows/weekly-review]]
- [[9 - Operations/workflows/maintain]]
- [[9 - Operations/workflows/inbox-processing]] as a real recurring pipeline

See [[9 - Operations/schedule]].

---

## How to use Betty Brain day to day

### Morning

- open Obsidian
- open [[BRAIN MAP]]
- glance at [[9 - Operations/schedule]]
- check whether Betty surfaced anything from the morning briefing

### During the day

- capture ideas into `.inbox/` or by asking Betty to remember something
- let Betty turn raw notes into durable structure
- use Claude Code when you want technical execution

### Weekly

- review [[8 - North Star/NORTH STAR]]
- review [[2 - Live Logs/README]]
- run or read [[9 - Operations/workflows/weekly-review]]

---

## Obsidian setup checklist

1. Open Obsidian
2. Choose **Open folder as vault**
3. Select `C:\Users\calli\Repos\betty-brain-private`
4. Trust the vault and enable community plugins
5. Open [[BRAIN MAP]]
6. Open the left ribbon **Graph view**

Bundled plugins currently include:

- `internetvin-terminal`
- `agentfiles`
- `obsidian-excalidraw-plugin`

---

## Key operating docs

- [[HOW BETTY BRAIN WORKS]]
- [[BRAIN MAP]]
- [[MASTER PLAN]]
- [[9 - Operations/README]]
- [[9 - Operations/schedule]]
- [[9 - Operations/workflows/README]]
- [[9 - Operations/skills/README]]
- [[Onboarding/README]]

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
What grows next is the actual memory content.
