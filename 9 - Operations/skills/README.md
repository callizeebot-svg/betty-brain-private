\# Skills



This folder tracks skills used by Betty Brain.



\## Skill types



\### Shared skills

These are:

\- tool-agnostic

\- reusable by multiple agents

\- written as SOPs, playbooks, or structured instructions

Examples:

\- YouTube research workflow

\- content repurposing workflow

\- architecture review workflow

\- project discovery workflow



\### Claude-specific skills

These depend on:

\- Claude-only command syntax

\- Claude sub-agent behavior

\- Claude-only MCPs or harness features



These should be documented here, but their implementation details may stay in Claude-specific locations.



\### OpenClaw-specific skills

These depend on:

\- OpenClaw heartbeats

\- cron jobs

\- OpenClaw session orchestration

\- OpenClaw runtime assumptions



\## Rules

\- shared skills should be written in tool-agnostic language where possible

\- tool-specific wrappers should be documented as wrappers, not mistaken for universal skills

\- do not assume Claude skills can run directly in OpenClaw

\- when a skill is duplicated across systems, identify one source of truth

