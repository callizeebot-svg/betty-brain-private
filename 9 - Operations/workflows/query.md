# Query

## Purpose

Answer a question from Betty Brain using the shared repo as the source of truth.

## Goals

- retrieve the best current context
- separate durable facts from recent signal
- answer using linked evidence where possible
- expose uncertainty instead of bluffing

## Inputs

- user question
- relevant memory docs
- live logs
- project/area/people notes
- operations docs

## Outputs

- direct answer
- supporting context
- links to the most relevant parts of the brain
- note of uncertainty if the brain is incomplete or contradictory

## Steps

1. Identify what kind of memory is needed
2. Read the most relevant durable docs first
3. Check recent logs for newer changes
4. Resolve or surface contradictions
5. Answer concisely and with context

## Rules

- do not confuse recent raw signal with stable truth
- check both durable pages and fresh logs when recency matters
- say when the brain is incomplete
- prefer inspectable evidence over confident guessing

## Recommended cadence

- on demand
