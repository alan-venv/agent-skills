# AGENTS.md Guides

All an agent needs is a clear task, access to relevant files, and a way to verify the result.

There is no universal set of required files but `AGENTS.md` is a useful convention for recording context and recurring instructions.

## What to include

Include only what applies to the project:

1. A brief map: what the repository contains and where its relevant parts are. Link to existing documentation instead of copying it.
2. Verifiable commands: how to install dependencies and run tests, lint, or builds.
3. Local rules: conventions and restrictions that affect changes, especially those the agent cannot infer from nearby files.

## How to write it

- Use direct instructions: `Run ...`, `Edit ...`, `Do not change ...`.
- Keep the file short. Put lengthy explanations in other documents and link to them.
- Avoid repeating the `README.md`, describing details already apparent from the code, or adding rules that are not followed.
- Keep the file lean and high-level: describe behaviors and constraints; avoid implementation details and code identifiers.

## Example

```md
# AGENTS.md

Context and instructions for AI coding agents

## Project Overview

A minimal starter template for building client-side web applications with Rust and Yew.

## General Guidelines

- Do not add dependencies unless explicitly requested.
- After any code change, run `cargo test --quiet` and fix any failures before considering the task complete.

## Project Structure

- `src/`: application code, pages, components, and routing.
- `style/`: application stylesheets.
- `static/`: static assets.
- `docs/`: project documentation and notes.
- `docker/`: production container and server configuration.
- `index.html`: Trunk entrypoint.

## Development Commands

- run: `trunk serve --open`
- test: `cargo test --quiet`
- lint: `cargo clippy --fix`
- build: `trunk build --release`
```
