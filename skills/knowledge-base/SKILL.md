---
name: knowledge-base
description: Use only when explicitly invoked by the user. Manages knowledge base files for AI coding agents in the current directory.
disable-model-invocation: true
---

# Knowledge Base

Create or overwrite every file listed below in the agent's current working directory, following the instructions in its reference.

## Files

- `AGENTS.md`: `references/agents-md.md`.
- `.knowledge/index.md`: `references/index.md`.
- `.knowledge/entrypoints.md`: `references/entrypoints.md`.
- `.knowledge/architecture.md`: `references/architecture.md`.
- `.knowledge/glossary.md`: `references/glossary.md`.

## Shared Rules

- Base every statement on the project files or the user's instructions. Do not invent content.
- If essential information is missing and cannot be inferred from the files, ask a focused question.
- Use existing versions of the files as context and keep only what remains accurate.
- Do not repeat information that belongs to another file in the list.
- Use English unless the user requests another language.
