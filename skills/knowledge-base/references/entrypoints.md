# Entrypoints

List every point where code execution starts, so agents know how the project is triggered.

## Inspect the Project

1. Find HTTP routes in routers, controllers, and framework route definitions.
2. Find scheduled jobs in scheduler code, crontabs, and deployment or CI configuration.
3. Find any other triggers, such as CLI commands, queue consumers, webhooks, or binaries.

## Write the File

- Group entry points by type, one section per type, such as HTTP Endpoints, Scheduled Jobs, CLI Commands, or Queue Consumers. Omit types the project does not have.
- Use one bullet per entry point with its identifier and purpose.
- Use an identifier that fits the type, such as `GET /users/{id}` for an HTTP endpoint or `cleanup-sessions (0 3 * * *)` for a scheduled job.
- If the project has a machine-readable API specification, link it and list the route groups instead of each endpoint.

## Starting Structure

```md
# Entrypoints

Points where code execution starts.

## $ENTRYPOINT_TYPE

- `$IDENTIFIER`: $PURPOSE.
```

## Review

- Every entry point found in the project is listed, or covered by a linked specification.
- Each bullet has a verified identifier and purpose.
- No empty sections or placeholders remain.
