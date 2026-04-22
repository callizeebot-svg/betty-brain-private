# Content Repurposing - Shared SOP

## Classification

- shared after adaptation

## Purpose

Turn one strong source asset into multiple derivative content outputs while preserving the source intent, evidence, and voice.

This workflow is for:

- repurposing transcripts
- repurposing articles or blog posts
- turning research into platform-native content
- turning one high-value source into a reusable content package

## When to use

Use this workflow when:

- there is a meaningful source asset worth multiplying
- the user wants multiple platform-specific outputs
- the source material is rich enough to support adaptation
- voice consistency matters

Do not use this workflow when:

- the source material is too thin
- factual confidence is weak
- the user only needs a single minor rewrite

## Inputs

Required:

- source content

Optional:

- target platforms or output types
- brand voice guidance
- audience notes
- word-count or format constraints
- desired CTA style

## Outputs

Potential outputs include:

- short-form post variants
- thread or multi-post sequence
- newsletter section
- blog post draft
- short video scripts
- quote graphics text
- executive summary or brief

Actual outputs should match the user request and the source quality.

## Core workflow

### 1. Understand the source asset

Identify:

- main thesis
- key insights
- strongest quotes or claims
- audience
- tone
- time-sensitive details

### 2. Choose output set

Decide which outputs make sense based on:

- the user goal
- source depth
- audience
- brand voice
- likely channel fit

### 3. Adapt, do not merely copy

Each output should:

- stand on its own
- fit the target format
- preserve intent
- avoid fabricated claims
- reflect the relevant voice

### 4. Preserve evidence fidelity

Carry forward:

- accurate claims
- real quotes where used
- correct attribution
- nuance where the original meaning depends on it

### 5. Package outputs cleanly

Store outputs in the agreed content/research/project location and keep the source relationship visible.

### 6. Prepare for review

Flag:

- weak claims needing fact check
- time-sensitive content
- any output that needs human polish before publishing

## Quality checks

Before done, confirm:

- outputs fit the target platform norms
- claims were not invented
- the source intent remains intact
- voice is coherent
- attribution is preserved where needed
- output set is actually useful, not just large

## Guardrails

- do not fabricate statistics or quotes
- do not over-compress nuance into misleading certainty
- do not treat all platforms as interchangeable
- do not publish directly from raw output without human judgment when stakes are high
- keep local tool assumptions out of the shared canonical SOP

## Runtime wrapper notes

### Claude Code wrapper

Claude-specific execution may use:

- project-local skill behavior
- sub-agents or parallel drafting
- local templates and output folder conventions

These belong in the Claude wrapper, not in this canonical SOP.

### OpenClaw wrapper

OpenClaw may use this workflow to:

- decide when repurposing is appropriate
- route the work to Claude Code
- store results and summaries in the shared brain
- connect outputs back to research or project context

## Known current implementation references

- `C:\Users\calli\Documents\Projects\.claude\skills\content-repurposing.md`

## Future adaptation goals

Later, split this into:

- shared canonical logic
- Claude execution wrapper
- OpenClaw orchestration wrapper
- optional brand-voice-aware project adapters
