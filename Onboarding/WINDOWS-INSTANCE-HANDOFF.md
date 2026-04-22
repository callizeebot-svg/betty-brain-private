\# Windows Instance Handoff



\## Purpose

This file gives the new Windows OpenClaw instance enough context to continue setup of Betty Brain without re-deriving everything from scratch.



\## Current state summary

A private shared repo exists at:



`C:\\Users\\calli\\Repos\\betty-brain-private`



Remote:

`https://github.com/callizeebot-svg/betty-brain-private.git`



Windows OpenClaw has been installed and the gateway is now running locally.

The shared brain is being structured around the Evolving Brain Template model, adapted for:

\- OpenClaw on Windows

\- Claude Code on Windows

\- future shared memory and skill coordination



\## What has already been done



\### OpenClaw Windows setup

\- OpenClaw installed on Windows

\- gateway installed and made reachable

\- local runtime working enough to continue setup

\- earlier gateway config issue was fixed by adding `gateway.mode = local`

\- there was also an onboarding bug related to “Skip for now” in channel setup



\### Shared brain repo

Repo created and initialized:

\- `betty-brain-private`



Structure created:

\- `.inbox`

\- `0 - Identity`

\- `1 - Aspirations`

\- `2 - Live Logs`

\- `3 - Daily Journal`

\- `5 - Projects`

\- `6 - Areas`

\- `7 - Resources`

\- `8 - North Star`

\- `9 - Operations`

\- `People`

\- `Onboarding`

\- `Vault`

\- `Archive`

\- `.obsidian`

\- `.claude`

\- `scripts`

\- `templates`



Operations subfolders created:

\- `9 - Operations/workflows`

\- `9 - Operations/connectors`

\- `9 - Operations/skills`

\- `9 - Operations/runs`

\- `9 - Operations/upstream`

\- `9 - Operations/capabilities`

\- `9 - Operations/delegation`



\### Core files already populated

Identity:

\- `0 - Identity/IDENTITY.md`

\- `0 - Identity/SOUL.md`

\- `0 - Identity/USER.md`

\- `0 - Identity/brand-voice.md`



Operations:

\- `9 - Operations/README.md`

\- `9 - Operations/skills/README.md`

\- `9 - Operations/workflows/README.md`

\- `9 - Operations/connectors/README.md`

\- `9 - Operations/capabilities/claude-code.md`

\- `9 - Operations/capabilities/openclaw-windows.md`

\- `9 - Operations/delegation/delegation-rules.md`

\- `9 - Operations/workflows/shared-brain-migration.md`

\- `9 - Operations/skills/skill-classification.md`

\- `9 - Operations/connectors/claude-code-current-state.md`



Inbox / onboarding:

\- `.inbox/README.md`

\- `Onboarding/README.md`



\### Voice hierarchy already created

Core:

\- `0 - Identity/brand-voice.md`



Area:

\- `6 - Areas/NDIS/brand-voice.md`

Project:

\- `5 - Projects/IMatch/brand-voice.md`



\## Important design decisions already made

\- We are using the Evolving Brain Template as the target architecture, but adapting it for shared OpenClaw + Claude Code usage.

\- We are not blindly copying Claude internal folders into the shared brain.

\- Shared skills, Claude-specific skills, and OpenClaw-specific orchestration should remain conceptually distinct.

\- Migration should happen carefully, file by file.

\- Secrets, auth files, `.env`, and internal tool state must not be committed.

\- Core voice, area voice, and project voice should be hierarchical:

&#x20; - project overrides area

&#x20; - area overrides core

&#x20; - core is fallback

\## Claude Code discovery findings already known

From Claude Code discovery:

\- useful working knowledge is mostly in `C:\\Users\\calli\\Documents\\`

\- not in Claude’s own internal memory store

\- Claude internal memory is effectively blank

\- important candidate assets include:

&#x20; - `C:\\Users\\calli\\Documents\\Projects\\brand-voice.md`

&#x20; - `C:\\Users\\calli\\Documents\\README.md`

&#x20; - `C:\\Users\\calli\\Documents\\04\_Skills\\`

&#x20; - `C:\\Users\\calli\\Documents\\05\_Scripts\\`

&#x20; - `C:\\Users\\calli\\Documents\\02\_Guides\\Claude\_MCP\_Integration\_Guide.md`

\- some skills are duplicated between `.claude/skills` and `04\_Skills`

\- several marketing MCPs in Claude are auth-failed/broken

\- Claude-specific internals should not be treated as portable shared assets



\## What should happen next

Priority next steps:

1\. continue setup from the new Windows OpenClaw browser UI

2\. inspect the current repo contents and understand what has already been created

3\. create project context docs for IMatch:

&#x20;  - `5 - Projects/IMatch/README.md`

&#x20;  - `5 - Projects/IMatch/current-state.md`

&#x20;  - `5 - Projects/IMatch/vision.md`

4\. review candidate migration assets carefully, starting with high-value safe assets

5\. create a proper migration plan for:

&#x20;  - selected guides

&#x20;  - selected shared skills

&#x20;  - selected scripts

6\. later, update Claude Code paths or wrappers only after the shared source of truth is stable



\## Constraints / cautions

\- Do not duplicate or migrate Claude internals blindly.

\- Do not migrate secrets or auth-bearing setup files.

\- Do not assume Claude-specific skills run in OpenClaw unchanged.

\- Prefer shared SOP logic in the shared repo and keep tool-specific wrappers separate.

\- Preserve what already works before refactoring.



\## Desired role of the Windows instance

The Windows OpenClaw instance should become:

\- the primary orchestrator

\- the continuity and memory owner

\- the coordinator of Claude Code capabilities

\- the agent that understands what Claude can do, what OpenClaw can do, and how work should be routed



\## Immediate ask for the new instance



Please continue from this state rather than restarting from zero.

First inspect the current repo and summarize:

\- what already exists

\- what is missing

\- what the next 3 best setup actions are



