# Agent Memory YouTube Study (2026-04-23)

## Purpose

Review strong recent YouTube material on agent memory and compare the dominant patterns with Betty Brain.

## Method

Merged and reviewed YouTube search-result clusters for:

- `agent memory ai agents`
- `llm agent memory`
- `memory for ai agents`

Selection favored recurring high-ranking results, then compared them by topic fit rather than raw hype.

## Most useful videos for Betty Brain

1. [Google Cloud Tech — Memory in AI agents](https://www.youtube.com/watch?v=UF230UuclZM)
2. [Microsoft Developer — AI Agent Memory: Building Self-Improving Agents](https://www.youtube.com/watch?v=QrYbHesIxpw)
3. [Google Cloud Tech — How memory makes AI agents more effective](https://www.youtube.com/watch?v=52xTxeqT4ws)
4. [Prof. Ghassemi — AI Agents 6: Memory, Learning, and Adaptation](https://www.youtube.com/watch?v=fRaYh3ma2Rc)
5. [IBM Technology — What Is Agentic Storage?](https://www.youtube.com/watch?v=TjvT9sI5mLE)
6. [Google Cloud Tech — Sessions & State Explained](https://www.youtube.com/watch?v=vfVcDUCucSs)
7. [LangChain — Memory for agents](https://www.youtube.com/watch?v=JTL0yp85FsE)
8. [rah app — Build Your Own AI Memory System](https://www.youtube.com/watch?v=YyUCGigZIZE)
9. [OpenAI — Build Hour: Agent Memory Patterns](https://www.youtube.com/watch?v=WsGVXiWzTpI)
10. [AWS Events — How to Build Intelligent Agent Memory](https://www.youtube.com/watch?v=asWTC3oc-SA)

## Recurring patterns across the set

- split short-term, working, and long-term memory explicitly
- use external persistent memory instead of relying on prompt context alone
- summarize, compact, and inject context deliberately
- separate raw event trails from structured state / notes
- treat memory safety and write-governance as architecture, not an afterthought
- make memory retrieval cheaper over time by writing durable abstractions

## Betty Brain strengths relative to the video set

- already uses an external user-owned memory substrate
- memory is inspectable in markdown and easier to audit than many managed systems
- git gives Betty unusually strong versioned memory history
- the layered model (journal, logs, projects, MEMORY, operations) is conceptually strong
- helper/session strategy aligns with the best context-budgeting advice in the set

## Betty Brain gaps relative to the video set

- semantic retrieval/indexing is not yet a fully verified live memory path
- short-term runtime state is not yet as explicitly tooled as sessions/events/state models shown in ADK examples
- memory compaction and write triggers are documented better than they are operationalized
- recurring synthesis workflows exist, but not all are live and habitual yet
- skill wrapper/runtime wiring is still less complete than the conceptual repo model

## Best next upgrades suggested by the study

1. formalize short-term runtime state more explicitly
2. add retrieval/write triggers for memory operations
3. make compaction/context summarization more operational
4. strengthen semantic retrieval on top of the markdown brain
5. continue using git-backed memory governance as a differentiator

## Related artifact

A NotebookLM-style HTML study page with report, tables, and knowledge graph was also generated for direct viewing in OpenClaw Control UI.
