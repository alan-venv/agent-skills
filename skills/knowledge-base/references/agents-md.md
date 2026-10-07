# AGENTS.md

Tailor the guide to the project and keep it short, focused on the context and recurring instructions agents need to work and verify results.

## Scope

Include only project-specific context and instructions needed to develop, maintain, and verify the code in the current directory.

For each instruction, check whether it directly affects work on this project. If it applies equally to unrelated projects, omit it unless it is a mandatory guideline.

## Inspect the Project

1. Read the existing `AGENTS.md`, if present.
2. Review the project documentation, configuration, automation, and existing practices.
3. Identify the project's purpose, development commands, and conventions that affect changes.
4. Verify commands against the project configuration. Do not invent commands, restrictions, or conventions.

Use the user's project-specific requirements and the project's existing practices.

## Write the Guide

Write the complete guide. Use existing instructions as context and include only those that remain applicable and satisfy the scope above.

Use the following sections:

- Project Overview: Briefly describe what the project contains and its purpose.
- General Guidelines: Include the mandatory guidelines. Describe behaviors and constraints relevant to the current directory that agents cannot infer from existing practices.
- Project Structure: Describe each relevant directory and its role in a separate bullet. Use exactly one directory per bullet; do not list individual files or group directories on the same line.
- Development Commands: Give exact commands for installing dependencies, running, testing, linting, or building. Do not add introductory text, parenthetical notes, or trailing explanations.

## Writing Rules

- Use direct, imperative instructions.
- Keep the file short and high-level. Omit lengthy explanations; link to existing guidance when needed.
- In general guidelines, describe behaviors and constraints in terms of the work or its purpose. Avoid implementation details, code identifiers, file names, and paths unless the exact reference is necessary to follow the rule.
- Do not add unsupported or repeated rules.

## Starting Structure

Keep the title, introductory sentence, section order, and bullet formats below. Adapt the placeholder content to the project.

The first three General Guidelines bullets are the mandatory guidelines. Keep them as written, replacing only `$TEST_COMMAND`.

```md
# AGENTS.md

Context and instructions for AI coding agents.

## Project Overview

$PROJECT_DESCRIPTION

## General Guidelines

- Do not add dependencies unless explicitly requested or authorized.
- After any code change, run `$TEST_COMMAND` and fix any failures before considering the task complete.
- Use `.knowledge/index.md` to find project knowledge relevant to the task.
- $PROJECT_INSTRUCTION

## Project Structure

- `$DIRECTORY/`: $DIRECTORY_ROLE.

## Development Commands

- $DESCRIPTION: `$COMMAND`.
```

### Placeholder rules

- Replace placeholders with verified information.
- Replace `$DESCRIPTION` with a single lowercase action word representing the command.
- Replace `$TEST_COMMAND` with the project's verified test command. If no test command can be identified, ask the user for it before finalizing the file.

## Review

Before delivering the file, verify each requirement:

- The introductory sentence appears between the title and Project Overview.
- All four sections appear in the template order.
- All three mandatory guidelines are present, with a verified test command.
- Each Project Structure bullet contains exactly one directory and its role, with no individual files.
- Development Commands contains only bullets, with a single lowercase action word and no extra text.
- No placeholders, redundant context, or unsupported claims remain.
- Every General Guidelines rule other than the mandatory guidelines applies exclusively to this project.
