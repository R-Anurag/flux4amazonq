# Update Session Progress

Append a progress update to the active development session.

## What This Does

Captures current progress, decisions, and discoveries in the active session file.

## Instructions

### Step 1: Verify Active Session

Read `.amazonq/.sessions/.current-session` to get the active session filename.

If no active session exists, inform the user and suggest starting one with `@session-start`.

### Step 2: Gather Update Information

Ask the user what progress to record. Include:
- What was accomplished
- Decisions made
- Problems encountered
- Solutions discovered
- Next steps

### Step 3: Append to Session File

Add a new progress entry to the session file:

```markdown
### [Timestamp] - [Brief Title]
[Detailed progress description]
```

### Step 4: Confirm

Confirm the update was recorded and remind the user they can:
- Continue working
- Add more updates with `@session-update`
- End the session with `@session-end`
