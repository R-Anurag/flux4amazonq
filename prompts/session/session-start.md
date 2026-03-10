# Start Development Session

Prime context and start a new development session to track work progress.

## What This Does

1. Generates a session name from your goal
2. Loads relevant codebase context and lessons
3. Creates an isolated Git branch for the work
4. Initializes a session tracking file

## Instructions

### Step 1: Validate Session Goal

If no session goal was provided, STOP and ask the user to specify the session goal. DO NOT PROCEED without it.

Once the session goal is specified, generate a `session_name` by creating a succinct descriptor.

Examples:
- "fix bugs in data identifier generation" → `bugfix-data-identifiers`
- "implement feature for crawling arbitrary sources" → `feat-arbitrary-crawl-sources`
- "refactor authentication module" → `refactor-auth-module`

### Step 2: Load Context

Execute the following to understand the codebase:

1. Run `git ls-files` to see repository structure
2. Read `docs/README.md` if it exists
3. Read `docs/LESSONS.md` if it exists
4. If `docs/README.md` doesn't exist, read all documents in `docs/` folder

Summarize your understanding, noting:
- Documentation and code related to the session goal
- Lessons learned relevant to this work
- Where to find additional information when needed

If conflicts exist between documentation and code, prioritize the code.

### Step 3: Create Working Branch

Create a new Git branch for this session:
```bash
git checkout -b [session_name]
```

### Step 4: Initialize Session File

Generate a `session_id` using format: `YYYY-MM-DD-HHMM` (e.g., `2024-01-15-1430`)

Create session file at `.amazonq/.sessions/[session_id]-[session_name].md` with:

```markdown
# [Session Name] - [Timestamp]

## Session Overview
- **Started**: [timestamp]
- **Goal**: [session goal]
- **Branch**: [session_name]

## Goals
[List specific, measurable goals - ask user if not clear]

## Progress

### [Timestamp] - Session Started
Context loaded and ready to begin work.

```

Create or update `.amazonq/.sessions/.current-session` with the session filename.

### Step 5: Confirm and Wait

Confirm the session has started and remind the user:
- Update progress with `@session-update`
- End session with `@session-end`

**NEVER** start working on the session goal automatically. Wait for explicit instruction.
