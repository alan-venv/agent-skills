---
name: playwright-cli
description: Use playwright-cli to navigate, inspect, automate, and test web pages through a browser.
allowed-tools: Bash(playwright-cli:*)
---

# Playwright CLI

Use `playwright-cli` when you need a real browser to navigate, inspect, automate, and test web pages.

## Basic Workflow

```bash
playwright-cli open https://example.com
playwright-cli snapshot
playwright-cli click e3
playwright-cli fill e5 "text"
playwright-cli press Enter
playwright-cli snapshot
playwright-cli close
```

Prefer snapshot element refs like `e3`. Use CSS selectors or Playwright locators when refs are unavailable.

```bash
playwright-cli click "#submit"
playwright-cli click "getByRole('button', { name: 'Submit' })"
playwright-cli click "getByTestId('submit-button')"
```

## Common Commands

```bash
# browser and navigation
playwright-cli open
playwright-cli open https://example.com
playwright-cli goto https://example.com/page
playwright-cli reload
playwright-cli go-back
playwright-cli close

# interaction
playwright-cli snapshot
playwright-cli click e1
playwright-cli dblclick e1
playwright-cli hover e1
playwright-cli fill e2 "value"
playwright-cli fill e2 "value" --submit
playwright-cli type "text"
playwright-cli press Enter
playwright-cli select e3 "option-value"
playwright-cli check e4
playwright-cli uncheck e4
playwright-cli upload ./file.pdf

# inspection
playwright-cli eval "document.title"
playwright-cli eval "el => el.textContent" e1
playwright-cli eval "el => el.getAttribute('data-testid')" e1
playwright-cli console
playwright-cli requests

# output
playwright-cli screenshot --filename=page.png
playwright-cli screenshot e1 --filename=element.png
playwright-cli pdf --filename=page.pdf
playwright-cli --raw snapshot
```

## Sessions

Use named sessions for isolated browsers or multiple concurrent pages.

```bash
playwright-cli -s=auth open https://app.example.com
playwright-cli -s=auth snapshot
playwright-cli list
playwright-cli -s=auth close
playwright-cli close-all
```

Persist or restore browser state when needed.

```bash
playwright-cli open --persistent
playwright-cli state-save auth.json
playwright-cli state-load auth.json
playwright-cli cookie-list
playwright-cli localstorage-list
```

## Advanced Tools

```bash
# network mocking
playwright-cli route "**/api/**" --body='{"ok":true}' --content-type=application/json
playwright-cli route-list
playwright-cli unroute

# custom Playwright code
playwright-cli run-code "async page => await page.context().grantPermissions(['geolocation'])"
playwright-cli run-code --filename=script.js

# trace and video
playwright-cli tracing-start
playwright-cli tracing-stop
playwright-cli video-start video.webm
playwright-cli video-stop

# user annotation for UI review
playwright-cli show --annotate
```
