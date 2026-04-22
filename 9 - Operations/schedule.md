# Schedule

Calendar-style view of what is actually live in OpenClaw right now, plus the next recommended schedules.

## Live recurring schedules

| Status | Day | Time | Workflow | Schedule | File |
|---|---|---|---|---|---|
| Live | Daily | 07:00 | Briefing | `0 7 * * *` | [[briefing]] |

## Defined but not live yet

| Status | Day | Time | Workflow | Suggested schedule | File |
|---|---|---|---|---|---|
| Planned | Daily | 03:00 | Dream cycle | `0 3 * * *` | [[dream cycle]] |
| Planned | Daily (every 3h) | 00, 03, 06, 09, 12, 15, 18, 21 | Inbox processing | `0 */3 * * *` | [[inbox processing]] |
| Planned | Monday | 06:00 | Sync upstream | `0 6 * * MON` | [[sync upstream]] |
| Planned | Monday | 09:00 | Weekly review | `0 9 * * MON` | [[weekly review]] |
| Planned | Sunday | 04:00 | Maintain | `0 4 * * SUN` | [[maintain]] |

## On-demand workflows

- [[query]] — answer a specific question from the vault
- [[migrate]] — import data from another tool into `.inbox/onboarding/`
- [[generate wiki]] — build the Wikipedia-style static site
- [[journal processing]] — process daily journal entries
- [[briefing]] — also available on demand via `/brain-brief`
- [[onboarding processing]] — one-time run during initial setup

## On-capture workflows

- [[meeting processing]] — triggered by inbox processor when a meeting file is captured

## Recommended next additions

1. [[dream cycle]]
2. [[weekly review]]
3. [[maintain]]
4. [[inbox processing]]

## Notes

- The first live cron is the daily morning briefing.
- Planned schedules are design targets, not active automations, until explicitly created.
- This file should be updated whenever a cron job is added, removed, or materially changed.
