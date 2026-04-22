\# Skill Classification



\## Purpose



This document explains how skills should be classified inside Betty Brain.



\## Skill categories



\### Shared skills

Definition:

\- valuable to multiple agents

\- written in tool-agnostic language

\- reusable as SOPs or playbooks



Examples:

\- content repurposing workflow

\- YouTube research workflow

\- project discovery workflow

\- architecture review workflow



\### Claude-specific skills

Definition:

\- depend on Claude command syntax

\- depend on Claude sub-agents

\- depend on Claude-only MCP or harness behavior



These should be documented, but not assumed to run elsewhere unchanged.



\### OpenClaw-specific skills

Definition:

\- depend on OpenClaw sessions

\- depend on heartbeats or cron

\- depend on OpenClaw runtime assumptions

\- support orchestration and continuity



\## Rules

\- each skill should have one source of truth

\- shared logic should be separated from tool-specific wrappers

\- duplicated skills should be consolidated over time

\- do not migrate hosted or hidden skills as if they are portable local assets

