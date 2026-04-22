# YouTube Research - Shared SOP

## Classification

- shared after adaptation

## Purpose

Research a topic using YouTube as a source of discovery and evidence.

This workflow is for:

- topic exploration
- market/problem research
- practitioner insight gathering
- voice-of-customer or field-language discovery
- collecting source material for later synthesis or repurposing

## When to use

Use this workflow when:

- the user wants research on a topic and YouTube is a relevant source
- video transcripts, talks, interviews, or explainers are likely to contain useful signal
- qualitative discovery matters more than academic exhaustiveness
- the result should be stored and reused later

Do not use this workflow when:

- the task requires only a quick factual web lookup
- the source must be scholarly or official only
- the user already has the exact source set and does not need discovery

## Inputs

Required:

- research topic or question

Optional:

- number of videos to inspect
- date window
- sort preference
- whether to gather transcripts
- whether to send materials into downstream analysis tools
- desired output format

## Outputs

At minimum, produce:

- a ranked list of relevant videos
- basic metadata per video
- a concise synthesis of themes and takeaways
- links back to the original sources

Optional outputs:

- cleaned transcripts
- extracted quotes
- content gaps or trend observations
- a structured brief for repurposing or strategy work
- handoff package for deeper analysis tools

## Core workflow

### 1. Clarify the research goal

Identify:

- what question is being answered
- whether the user wants discovery, summary, transcript extraction, or downstream content use
- how broad or narrow the topic should be

### 2. Gather candidate videos

Search for relevant videos using the best available tool/runtime.

Collect enough candidates to:

- find recurring themes
- identify obvious duplicates or low-quality noise
- compare different voices or perspectives

### 3. Rank and filter

Prioritize candidates by factors like:

- relevance to the topic
- authority or usefulness of the speaker/source
- engagement as a rough signal only
- recency when that matters
- likely transcript quality

Remove obvious low-value items.

### 4. Extract evidence

For selected videos, collect:

- title
- channel
- URL
- date if available
- duration
- views or engagement if useful
- transcript or partial transcript where possible
- notable quotes or claims

### 5. Synthesize findings

Produce a useful synthesis, such as:

- key themes
- recurring ideas
- disagreements or tension between sources
- surprising findings
- language patterns worth preserving
- content or product gaps

### 6. Store results consistently

Store outputs in the agreed research location.

The storage pattern should be documented by the runtime wrapper or project convention.

### 7. Prepare follow-on use if needed

If the research is meant to feed another workflow, prepare a clean handoff for:

- content repurposing
- strategic planning
- product/project research
- NotebookLM or another analysis tool

## Quality checks

Before considering the workflow done, confirm:

- the topic is still the one the user actually cares about
- source URLs are included
- weak or noisy results are filtered out
- the summary is not just a list of links
- claims are not overstated beyond the evidence
- downstream handoff materials are organized if requested

## Guardrails

- do not download or redistribute full video files unless explicitly appropriate and allowed
- do not fabricate transcript content
- do not over-trust engagement metrics as a proxy for quality
- flag uncertain or weak transcript extraction
- preserve attribution when quoting speakers
- keep tool-specific auth and local setup out of the shared canonical workflow

## Runtime wrapper notes

### Claude Code wrapper

Claude-specific execution may use:

- yt-dlp
- NotebookLM
- local helper scripts
- project-local output conventions

These belong in Claude wrappers, not in this canonical SOP.

### OpenClaw wrapper

OpenClaw may use this workflow to:

- decide whether to handle lightly or delegate to Claude Code
- schedule follow-up synthesis
- record the result in the shared brain
- connect the research to project memory

## Known current implementation references

- `C:\Users\calli\Documents\Projects\.claude\skills\youtube-research.md`
- local helper scripts under `C:\Users\calli\Documents\05_Scripts\`

## Future adaptation goals

Later, split this into:

- a reusable shared SOP layer
- a Claude execution wrapper
- an OpenClaw orchestration wrapper
- an optional downstream analysis adapter
