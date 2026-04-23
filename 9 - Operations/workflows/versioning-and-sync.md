# Versioning and Sync

Use this workflow when Betty changes important setup, identity, operations, or durable memory.

## Goal

Give Betty an inspectable history.

Important changes should not live only in chat history or only on one machine.

## What should usually be versioned

- root startup files
- durable memory updates
- operations/workflow docs
- project-state changes that materially affect direction
- important schedule or delegation changes
- capability/config notes that matter later

## What should not be committed casually

- secrets
- auth tokens
- machine-local runtime state
- noisy local UI layout files
- caches
- accidental generated junk

## Default workflow

1. make the intended file changes
2. review the diff
3. stage only the intended files
4. commit with a clear message
5. push to the private remote when appropriate and safe
6. record meaningful actions in live logs when warranted

## Commit message style

Prefer messages that say what changed and why.

Examples:

- `docs: clarify daily journal vs live logs`
- `ops: add context budgeting and session strategy`
- `memory: record Betty workspace and versioning rules`
- `config: align Betty startup files with repo root workspace`

## Push rule

For this private repo, important setup and durable memory changes should normally be pushed soon after commit so the brain has a backed-up version history.

If push is blocked by:

- auth issues
- network issues
- uncertainty about sensitive content

then stop and resolve that before pushing blindly.

## Review rule

Do not use "commit everything" as a shortcut.

Always check for:

- accidental secret exposure
- local-only `.obsidian` noise
- unrelated generated files
- half-finished edits not meant to be published

## Frequency rule

Do not create a commit for every tiny typo.

But do create commits when the change is meaningfully about:

- setup
- memory
- policy
- workflow
- capability
- structure

## Success condition

Betty's important changes are:

- visible
- reversible
- backed up
- attributable
- easier to trust later
