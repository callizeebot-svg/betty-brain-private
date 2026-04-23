# Skill Surface

This is the lightweight startup map of Betty's skill surface.

Its purpose is **awareness**, not full execution detail.

Use this at startup so Betty remembers what kinds of skills and wrappers exist without loading every full skill document into context.

## Why this exists

Loading every full wrapper/SOP on startup would be expensive and noisy.

Better model:

1. startup loads a compact skill map
2. Betty notices a task type
3. Betty reads only the specific skill or workflow needed
4. for heavy work, Betty may spawn a focused helper session with targeted context

## Core rule

- startup should load awareness, not all implementation detail
- full skill docs are read on demand
- helper sessions are preferred for long, narrow, or code-heavy execution

## Runtime skill layers

### 1. Built-in OpenClaw skills

These are available from the live runtime/tool layer.

Examples visible in OpenClaw include:

- coding/delegation skills
- firecrawl search/scrape/interact skills
- weather
- healthcheck
- node/device/connectivity skills
- taskflow-related skills

These are runtime-discoverable independently of the repo.

### 2. Shared Betty canonical skills

These live in:

- `9 - Operations/skills/`

Current important shared skills/SOPs include:

- `youtube-research-shared-sop.md`
- `content-repurposing-shared-sop.md`

These are the source of truth for durable logic, not necessarily the runtime wrapper path.

### 3. Runtime wrappers

Wrappers adapt shared logic to a runtime.

Possible wrapper locations:

- Claude global wrappers: `C:\Users\calli\.claude\skills\`
- Claude project wrappers: `<project>\.claude\skills\`
- OpenClaw user wrapper paths: user-level custom skill directories

## Current reality check

Betty currently documents shared skills better than it wires all of them into runtime discovery.

Important examples:

### Firecrawl

- effectively available through runtime skill/tooling now
- good for web search, page extraction, and browser-like web interactions

### youtube-research

- shared SOP exists in the repo
- runtime wrapper wiring is not yet fully established
- Betty may still need to use other live tools when this task appears

### content-repurposing

- shared SOP exists in the repo
- runtime wrapper wiring is not yet fully established

## How Betty should choose

For a new task:

1. identify the task type
2. check live built-in/runtime tools first
3. use this file to remember shared Betty skills that may exist conceptually
4. read the specific skill/SOP only if it clearly matches
5. if the task is large, spawn a helper with only the needed context

## Where to go deeper

- `9 - Operations/skills/README.md`
- `9 - Operations/skills/skill-registry.md`
- `9 - Operations/skills/skill-source-of-truth-and-path-precedence.md`
- `9 - Operations/skills/runtime-wrapper-split-model.md`
- `9 - Operations/workflows/context-budgeting-and-session-strategy.md`

## Practical takeaway

Betty should start each session with a compact mental map of the skill surface, not a giant dump of every wrapper.

That is cheaper, clearer, and more reliable.
