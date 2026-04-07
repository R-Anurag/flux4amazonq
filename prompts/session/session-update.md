# Update Session Progress

Append a progress update to the active development session.

## What This Does

Captures current progress, decisions, and discoveries in the active session file.

## Instructions

### Step 1: Verify Active Session

Read `.amazonq/.sessions/.current-session` to get the active session filename.

If no active session exists, inform the user and suggest starting one with `@session-start`.

### Step 2: Gather Update Information

Summarize recent activities from the current conversation context. Include:
- What was accomplished since the last update
- Decisions made and rationale
- Problems encountered and solutions found
- Next steps

If the user provides explicit update notes, use those. Otherwise auto-summarize from context.

### Step 3: Append to Session File

Add a new progress entry to the session file:

```markdown
### [Timestamp] - [Brief Title]

**Summary**: [What was accomplished]

**Git Changes**:
- [List modified/added/deleted files from `git status --porcelain`]
- Current branch: [branch] (last commit: [short hash])

**Details**: [Decisions, problems, solutions, next steps]
```

### Step 4: Confirm

Confirm the update was recorded and remind the user they can:
- Continue working
- Add more updates with `@session-update`
- End the session with `@session-end`
