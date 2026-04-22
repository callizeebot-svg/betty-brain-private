# Claude Skill Intake and Review Workflow

## Purpose

Define how new Claude Code skills should be reviewed as Betty Brain grows.

The goal is to let Claude remain productive while keeping the shared brain clean and intentional.

## Trigger

Run this workflow when:

- a new Claude skill is created
- an existing Claude skill becomes important to repeated work
- a user asks whether a Claude skill should become shared
- a duplicated skill is discovered across locations

## Intake steps

### 1. Record the asset

Capture:

- file path
- skill name
- purpose
- inputs
- outputs
- dependencies
- known tool assumptions

### 2. Check for hidden dependencies

Review whether the skill depends on:

- Claude slash-command behavior
- Claude sub-agents
- MCP integrations
- local auth
- local helper scripts
- machine-specific paths

### 3. Classify the skill

Classify as one of:

- shared now
- shared after adaptation
- Claude-specific
- OpenClaw-specific
- local only
- do not migrate

### 4. Decide the source of truth

Choose one:

- shared repo
- Claude local skill path
- OpenClaw workflow doc
- reference-only note

### 5. Extract what is reusable

If the skill has shared value:

- extract the tool-agnostic SOP
- keep local wrapper details separate
- document outputs and quality checks

### 6. Update inventory

Update:

- `9 - Operations/skills/`
- `9 - Operations/connectors/claude-code-inventory.md`
- relevant capability or delegation docs if the skill changes routing decisions

## Current near-term candidates

- `content-repurposing.md`
- `youtube-research.md`

Both appear to be:

- valuable
- not portable as-is
- good candidates for shared-SOP extraction later

## Decision rule

Default to caution.

Do not promote a Claude skill into shared status until:

- it is clearly reusable
- its dependencies are understood
- its sensitive/local state is separated from the durable shared logic
