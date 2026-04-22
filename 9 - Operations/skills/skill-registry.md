# Skill Registry

## Purpose

Track the authoritative path and runtime wrapper placement for important Betty skills.

## Fields

For each skill, record:

- name
- classification
- canonical doc path
- Claude wrapper path
- OpenClaw wrapper path
- project-specific path if any
- upstream dependency
- owner
- last reviewed
- notes

## Current entries

### Firecrawl

- classification: Claude-specific runtime skill / reference for wrapper pattern
- canonical doc path: [not yet mirrored into Betty shared repo]
- Claude wrapper path: `C:\Users\calli\.claude\skills\firecrawl\SKILL.md`
- OpenClaw wrapper path: [not applicable currently]
- project-specific path: none observed
- upstream dependency: Firecrawl skill package
- owner: Claude runtime environment
- last reviewed: 2026-04-22
- notes: example of a persistent global Claude skill installed outside app-bundled project files

### content-repurposing

- classification: shared after adaptation
- canonical doc path: `C:\Users\calli\Repos\betty-brain-private\9 - Operations\skills\content-repurposing-shared-sop.md`
- Claude wrapper path: [not yet established as global wrapper]
- OpenClaw wrapper path: [not yet established]
- project-specific path: `C:\Users\calli\Documents\Projects\.claude\skills\content-repurposing.md`
- upstream dependency: none known
- owner: Betty shared brain after adaptation
- last reviewed: 2026-04-22
- notes: shared canonical SOP now exists; next step is wrapper split

### youtube-research

- classification: shared after adaptation
- canonical doc path: `C:\Users\calli\Repos\betty-brain-private\9 - Operations\skills\youtube-research-shared-sop.md`
- Claude wrapper path: [not yet established as global wrapper]
- OpenClaw wrapper path: [not yet established]
- project-specific path: `C:\Users\calli\Documents\Projects\.claude\skills\youtube-research.md`
- upstream dependency: yt-dlp / optional NotebookLM-local workflow
- owner: Betty shared brain after adaptation
- last reviewed: 2026-04-22
- notes: shared canonical SOP now exists; next step is wrapper split
