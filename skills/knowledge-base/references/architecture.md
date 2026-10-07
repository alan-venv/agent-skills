# Architecture

Describe the overall architecture of the project and the external services it depends on.

## Inspect the Project

1. Identify the architectural style and how the main parts of the project relate.
2. Identify external integrations, such as databases, queues, caches, and third-party APIs.

## Write the File

- Summarize the architecture in a short overview. Do not list directories; Project Structure in `AGENTS.md` already covers them.
- Include the rationale for decisions only when it is documented in the project or given by the user.
- Keep it high-level; omit implementation details that agents can read in the code.

## Starting Structure

```md
# Architecture

Overall architecture of the project and its external integrations.

## Overview

$ARCHITECTURE_SUMMARY

## External Integrations

- $SERVICE: $PURPOSE.
```

## Review

- The overview and every integration are verified in the project.
- No directory listing duplicates Project Structure in `AGENTS.md`.
- No undocumented rationale or placeholders remain.
