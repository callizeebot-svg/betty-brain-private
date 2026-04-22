\# Operations



This folder is the operational layer of Betty Brain.



It exists to help OpenClaw, Claude Code, and future agents understand:

\- how the system runs

\- what workflows exist

\- what connectors exist

\- what capabilities each agent has

\- how delegation decisions should be made

\- what runtime assumptions and boundaries exist



\## Purpose

Operations is not long-term personal memory.

It is the runtime and coordination layer.



\## Key subfolders

\- `skills/` — shared and agent-specific skill definitions or notes

\- `workflows/` — repeatable operating flows

\- `connectors/` — MCPs, integrations, and external system notes

\- `capabilities/` — what each tool/agent can do

\- `delegation/` — task-routing rules

\- `runs/` — optional logs of meaningful operations

\- `upstream/` — notes or pinned references to upstream sources



\## Rules

\- do not store secrets here

\- prefer stable documentation over noisy logs

\- clearly separate shared logic from tool-specific wrappers

\- update this area when an agent gains or loses important capability

