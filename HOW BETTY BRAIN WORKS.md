# How Betty Brain Works

This note explains the actual operating model of Betty Brain in plain language.

Related notes:

- [[README]]
- [[BRAIN MAP]]
- [[MASTER PLAN]]
- [[9 - Operations/README]]
- [[9 - Operations/schedule]]

---

## 1. Betty Brain is three things at once

### A markdown knowledge base

The repo stores the durable memory.
That means the long-term truth should end up in files, not hidden inside any one runtime.

### An operating system for memory

The workflows in [[9 - Operations/workflows/README]] define how memory gets captured, processed, reviewed, and strengthened.

### A multi-runtime setup

Different tools play different roles:

- [[9 - Operations/capabilities/openclaw-windows|OpenClaw]] = orchestration and continuity
- [[9 - Operations/capabilities/claude-code|Claude Code]] = specialist execution
- Obsidian = human reading, editing, graphing

---

## 2. The most important concept: raw notes are not the brain

A real brain is not just a pile of notes.
It needs a flow.

### The intended flow

`raw capture -> inbox -> processing -> logs/dossiers -> review -> synthesis`

That means:

1. something new gets captured
2. it lands in `.inbox/`
3. Betty processes it using [[9 - Operations/workflows/inbox-processing]]
4. important parts get written into durable places
5. review workflows revisit and strengthen what matters

---

## 3. Where information should go

### `.inbox/`

Temporary intake.
Use it for new raw material.

Example:

- rough ideas
- copied chat exports
- dumped notes
- source material to be processed later

### `2 - Live Logs/`

Append-only memory traces.
Use it for what happened.

Example:

- actions taken
- decisions made
- lessons learned
- reflections worth preserving

### `5 - Projects/`, `6 - Areas/`, `People/`

Durable structured memory.
Use these for the current best understanding of a thing.

Example:

- a project page with goals, status, risks, next actions
- a people page with relationship context and timeline notes
- an area page for something ongoing like health, finance, content, or systems

### `8 - North Star/`

Strategic direction.
Use it to judge whether the system is making life and work better.

### `9 - Operations/`

The runtime layer.
This is where the brain learns how to run itself.

---

## 4. What OpenClaw does

OpenClaw is the primary steward of the living system.

It should own things like:

- recurring schedules
- briefings
- maintenance loops
- health checks
- continuity across sessions
- the first pass of memory stewardship

### Example

A daily morning briefing cron wakes Betty at 07:00.
Betty reads [[9 - Operations/workflows/briefing]] and checks what matters.
If there is nothing worth interrupting you for, Betty stays quiet.
If there is something useful, Betty surfaces it.

That is very different from just keeping a static note vault.

---

## 5. What Claude Code does

Claude Code is the specialist worker.

It is best used for:

- technical execution
- code changes
- deeper investigation
- repo-local command flows in `.claude/commands/`
- being the repair backstop when OpenClaw is unhealthy

### Example

If Betty needs to:

- refactor a script
- debug an integration
- create a new workflow wrapper
- compare upstream template changes

Claude Code is often the right specialist.

---

## 6. What Obsidian does

Obsidian is the human cockpit.

It is where you:

- browse the brain
- open hub notes
- use backlinks
- use local graph and global graph
- sketch relationships visually

### What Obsidian is not

Obsidian is not the sole source of truth by itself.
The source of truth is the repo content.
Obsidian is the best current interface to that content.

---

## 7. Why the graph is not huge yet

Right now Betty Brain has strong architecture but limited lived-in content.

That means the graph is currently strongest around:

- [[BRAIN MAP]]
- [[HOW BETTY BRAIN WORKS]]
- [[9 - Operations/README]]
- [[9 - Operations/schedule]]
- workflow notes
- README hub notes

The graph becomes much more valuable when these increase:

- processed inbox notes
- project pages
- people pages
- review notes
- explicit wiki-style links between concepts

### Good expectation right now

Expect a **skeleton graph**.
Not a mature galaxy yet.

### Good expectation later

Once Betty is processing real material regularly, the graph should become much richer and more interesting.

---

## 8. Concrete examples

### Example A: idea capture

You say:

> “I want Betty to prioritize YouTube research and content repurposing before IMatch.”

Good outcome:

- raw note captured in `.inbox/`
- [[2 - Live Logs/ACTIONS_LOG]] or another relevant log gets a dated entry
- the relevant planning note reflects the decision
- maybe a shared SOP or project note gets updated

### Example B: project onboarding

You drop project docs into `.inbox/`.
Betty processes them.
Then:

- a project page appears in `5 - Projects/`
- useful facts are linked to areas or people
- the ops layer records how that project should be handled

### Example C: weekly review

Betty reads:

- [[8 - North Star/NORTH STAR]]
- recent live logs
- current projects

Then Betty summarizes:

- what moved
- what is stuck
- what should be dropped
- what should be prioritized next

---

## 9. Current live state

### Already done

- shared repo structure is in place
- core operations docs exist
- shared memory architecture exists
- dream-cycle concept is preserved
- Obsidian config and plugins are present
- Claude command layer is present
- first OpenClaw cron exists: daily morning briefing

### Not fully alive yet

- recurring inbox processing
- dream cycle as a live automation
- weekly review as live automation
- lots of real processed memory content

---

## 10. The exact vault to open

Open this folder as the Obsidian vault:

`C:\Users\calli\Repos\betty-brain-private`

Do **not** open:

`C:\Users\calli\Repos\betty-brain-private\Vault`

That subfolder is only for credentials and setup support.

---

## 11. Best first things to click in Obsidian

1. [[BRAIN MAP]]
2. [[HOW BETTY BRAIN WORKS]]
3. [[9 - Operations/schedule]]
4. [[9 - Operations/workflows/README]]
5. [[8 - North Star/NORTH STAR]]
6. local graph of [[BRAIN MAP]]

---

## 12. The real next step

The setup is no longer the main blocker.
The main blocker now is **feeding Betty real material and processing it into durable linked notes**.

That is what turns this from a nice repo into a real evolving brain.
