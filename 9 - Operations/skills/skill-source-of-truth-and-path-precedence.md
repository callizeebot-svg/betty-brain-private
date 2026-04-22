# Skill Source of Truth and Path Precedence

## Purpose

Define where Betty's skill logic should live, how runtime wrappers should be placed, and how to stay stable across app updates.

## Core rule

Betty should not rely on app-bundled skill files as the primary home of important custom logic.

Use three layers:

1. shared repo canonical logic
2. user- or project-level runtime wrappers
3. app-bundled skills as upstream/reference

## Layer 1: Canonical skill logic

### Location

- `C:\Users\calli\Repos\betty-brain-private\9 - Operations\skills\`
- related workflow docs under `9 - Operations\workflows\`

### Purpose

This is the source of truth for durable skill logic.

Store here:

- purpose
- trigger/use conditions
- inputs
- outputs
- quality checks
- guardrails
- classification
- ownership
- whether the skill is shared, Claude-specific, OpenClaw-specific, or local-only

## Layer 2: Runtime wrappers

Runtime wrappers should be thin.

They should contain only what is needed for a specific runtime to use the shared logic correctly.

### Claude Code global wrappers

Recommended path:

- `C:\Users\calli\.claude\skills\`

Use for:

- reusable personal Claude skills
- wrappers that should survive app updates
- persistent Claude-side execution adapters

### Claude Code project wrappers

Recommended path:

- `<project>\.claude\skills\`

Observed current example:

- `C:\Users\calli\Documents\Projects\.claude\skills\`

Use for:

- project-specific skills
- repo- or workspace-specific execution adapters
- wrappers that should not affect all Claude work globally

### OpenClaw user wrappers

Recommended path:

- OpenClaw user skill directory, not app-bundled install directories

Use for:

- Betty-specific runtime wrappers
- stable custom OpenClaw skills that should survive updates

## Layer 3: App-bundled skills

These should be treated as:

- upstream defaults
- built-in capabilities
- optional reference implementations

Do not treat app-bundled skills as the authoritative home for Betty-specific behavior.

Do not edit them in place unless there is a deliberate temporary debugging reason.

## Path precedence model

### Canonical logic precedence

1. shared repo canonical skill/workflow doc
2. runtime wrapper in Claude or OpenClaw user/project path
3. app-bundled skill/reference implementation

### Claude wrapper preference

For Claude Code:

1. project `.claude\skills\` when the behavior is project-specific
2. global `C:\Users\calli\.claude\skills\` for reusable personal wrappers
3. app/built-in or package-installed behavior as fallback/reference

## Maintenance rule after updates

When Claude Code or OpenClaw updates:

1. do not assume bundled skill behavior stayed the same
2. do not rewrite canonical logic into app folders
3. review whether any new bundled skill overlaps with Betty behavior
4. decide whether to:
   - ignore it
   - adopt it
   - reference it
   - wrap it
5. keep Betty-specific wrappers in user/project skill paths

## Recommended workflow for new skills

For each new meaningful skill:

1. classify it using `shared-vs-specific-skill-model.md`
2. define the canonical durable logic in the shared repo
3. place the runtime wrapper in the correct Claude/OpenClaw path
4. record the mapping in the skill registry
5. review after major app updates if the runtime environment changes

## Skill registry fields

For each important skill, record:

- skill name
- classification
- canonical doc path
- Claude wrapper path
- OpenClaw wrapper path
- project-specific path if any
- upstream/built-in dependency
- owner
- last reviewed date

## Why this model

This protects Betty from:

- update overwrite risk
- skill drift
- duplicated logic across runtimes
- confusion about which version is authoritative

It also makes future skill growth easier to manage.
