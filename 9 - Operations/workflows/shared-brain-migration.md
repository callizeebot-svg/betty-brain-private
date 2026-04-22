\# Shared Brain Migration Workflow



\## Purpose

This workflow controls how existing files, skills, scripts, guides, and useful documents are migrated into Betty Brain.



The goal is to migrate carefully, not blindly.



\## Migration principles

\- preserve what already works

\- do not migrate secrets

\- do not migrate tool internals

\- prefer copy and review before delete or replace

\- classify each asset before moving it

\- keep one source of truth for each durable document



\## Asset classification

Each asset should be marked as one of:

\- shared now

\- shared after adaptation

\- reference only

\- local only

\- do not migrate



\## Default review questions

Before migrating an asset, ask:

1\. Is it safe to store in the shared repo?

2\. Is it useful to both OpenClaw and Claude Code?

3\. Does it contain secrets, auth state, or machine-specific values?

4\. Is it tool-agnostic or tool-specific?

5\. Should it be copied, adapted, referenced, or ignored?



\## Migration order

1\. identity documents

2\. high-signal guides

3\. shared skills/SOPs

4\. scripts after path cleanup

5\. curated project and research outputs

6\. memory and project state notes

7\. optional automations and richer integrations later



\## Current stance

At this stage, Betty Brain structure exists, but migration should remain deliberate and file-by-file.

