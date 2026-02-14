# Agent Skills

Skills are folders containing instructions, scripts, and resources that agents can discover and use to perform specific tasks more effectively, they are loaded on demand so agents can list available skills and retrieve the full content only when needed.

## How skills work

Skills use **progressive disclosure** to manage context efficiently:

1. **Discovery**: At startup, agents load only the name and description of each available skill.
2. **Activation**: When a task matches a skill’s description, the agent reads the full instructions into context.
3. **Execution**: The agent follows the instructions, optionally loading referenced files or scripts as needed.

This approach keeps agents fast while giving them access to more context on demand.

## Directory Structure

```
skills/
  {skill-name}/           # kebab-case directory name
    SKILL.md              # Required: skill definition
    scripts/              # Optional: executable code
    references/           # Optional: documentation
```

## Where to save skills

Agents commonly scan these locations:

**Codex CLI:**
```bash
mkdir -p {project-path}/.agents/skills/
cp -r skills/{skill-name} {project-path}/.agents/skills/
```

**Claude Code:**
```bash
mkdir -p {project-path}/.claude/skills/
cp -r skills/{skill-name} {project-path}/.claude/skills/
```
