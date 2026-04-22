# Runtime Wrapper Split Model

## Purpose

Define how a shared canonical skill should split into runtime-specific wrappers for Claude Code and OpenClaw.

## Core idea

A skill should have:

1. a shared canonical SOP in the repo
2. a Claude wrapper if Claude executes it
3. an OpenClaw wrapper if OpenClaw orchestrates or runs it

## Canonical layer

The shared SOP should contain:

- purpose
- when to use it
- inputs
- outputs
- workflow logic
- quality checks
- guardrails

It should not depend on one specific runtime.

## Claude wrapper layer

The Claude wrapper should contain only Claude-specific execution details, such as:

- local tools used
- helper scripts
- project-local paths
- Claude-specific sub-agent or workflow behavior

## OpenClaw wrapper layer

The OpenClaw wrapper should contain only OpenClaw-specific behavior, such as:

- orchestration and delegation rules
- scheduling hooks
- follow-up reminders
- memory updates after completion
- when to escalate to Claude Code

## Good split

- shared repo answers: what the skill is
- runtime wrapper answers: how this runtime uses it

## Bad split

Do not duplicate the full workflow three times.

That creates drift and confusion.

## Current application

This split should be applied next to:

- `youtube-research`
- `content-repurposing`

## Maintenance rule

If the canonical SOP changes, update the wrapper only where runtime-specific behavior also needs to change.
