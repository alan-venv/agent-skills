---
name: agents-md
description: Create or overwrite the root AGENTS.md with context and instructions for AI coding agents.
---

# AGENTS.md

Write `AGENTS.md` at the repository root. Keep it short and focused on the context and recurring instructions agents need to work and verify results.

## Inspect the Project

1. Read the existing root `AGENTS.md`, if present.
2. Review the project documentation, configuration, automation, and existing practices.
3. Identify the project's purpose, development commands, and conventions that affect changes.
4. Verify commands against the project configuration. Do not invent commands, restrictions, or conventions.

Use the user's requirements and the project's existing practices. If essential information is missing and cannot be inferred from the files, ask a focused question.

## Write the Guide

Write the complete guide to the root `AGENTS.md`. If the file already exists, overwrite it. Use existing instructions as context and include only those that remain applicable.

Use the following sections:

- Project Overview: Briefly describe what the project contains and its purpose.
- Project Structure: Describe the relevant directories and their roles.
- Development Commands: Give exact commands to run from the repository root for installing dependencies, running the project, testing, linting, or building. Include necessary prerequisites.
- General Guidelines: Include the mandatory rules below. Describe project-wide behaviors and constraints that agents cannot infer from existing practices.

Use English unless the user requests another language.

## Mandatory General Guidelines

Include both rules in `AGENTS.md`:

- Do not add dependencies unless explicitly requested or authorized.
- After any code change, run `$TEST_COMMAND` and fix any failures before considering the task complete.

Replace `$TEST_COMMAND` with the project's verified test command. If no test command can be identified, ask the user for it before finalizing the file.

## Writing Rules

- Use direct instructions like: `Run ...`, `Edit ...`, `Do not ...`.
- Keep the file short and high-level. Describe behaviors and constraints rather than implementation details or code identifiers.
- Express general guidelines in terms of the work or its purpose. For example, use `Keep skills short and focused.` instead of `Keep SKILL.md focused; place detailed guidance in references/.`.
- Avoid file names, directory paths, and implementation details in general guidelines unless the exact reference is necessary to follow the rule.
- Avoid repeating implementation details or adding unsupported rules.
- Beyond the mandatory general guidelines, add only project-relevant instructions.
- Omit lengthy explanations; link to existing guidance when needed.

## Starting Structure

Adapt this structure to the project. Replace placeholders with verified information and retain both mandatory rules.

```md
# AGENTS.md

Context and instructions for AI coding agents.

## Project Overview

$PROJECT_DESCRIPTION

## General Guidelines

- Do not add dependencies unless explicitly requested or authorized.
- After any code change, run `$TEST_COMMAND` and fix any failures before considering the task complete.
- $PROJECT_INSTRUCTION

## Project Structure

- `$DIRECTORY/`: $DIRECTORY_ROLE.

## Development Commands

- run: `$COMMAND`.
- test: `$COMMAND`.
- lint: `$COMMAND`.
- build: `$COMMAND`.
```

## Review

Verify that the guide follows the structure above, includes both mandatory rules, and uses a verified test command. Remove remaining placeholders, redundant context, and unsupported claims. Replace unnecessary file, directory, and implementation references in general guidelines with direct instructions about the intended behavior before delivering the file.
