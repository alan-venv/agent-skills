---
name: git-workflow-scripts
description: Use this skill when users ask to run reusable Git automation scripts bundled in this skill's `scripts/` directory, including maintenance, cleanup, and history operations.
---

# Git Workflow Scripts

## Overview

This skill is a wrapper for Git scripts stored in `scripts/` folder.
Use it whenever the user asks for recurring Git operations through project scripts.

## Quick Start

Run scripts from repository root:

```bash
bash skills/git-workflow-scripts/scripts/clear-local-structure.sh
bash skills/git-workflow-scripts/scripts/clear-branch-history.sh
```

## Scripts

### `clear-local-structure.sh`
Performs local cleanup.

### `clear-branch-history.sh`
Purges commit history of current branch.

## Safety Rules

- Confirm with the user before running destructive commands.
- For history rewrites and force-pushes, warn about team impact before execution.
- Prefer preview/read-only checks before delete or rewrite operations.
