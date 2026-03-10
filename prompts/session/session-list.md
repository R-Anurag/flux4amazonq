# List All Sessions

Display all past and present session files.

## What This Does

Lists all development sessions with their basic information.

## Instructions

### Step 1: Read Sessions Directory

List all files in `.amazonq/.sessions/` directory (excluding `.current-session`).

If the directory doesn't exist or is empty, inform the user no sessions have been created yet.

### Step 2: Parse Session Files

For each session file, extract:
- Session ID (date/time)
- Session name
- Goal
- Status (active if matches `.current-session`, otherwise completed)

### Step 3: Display Sessions

Present in reverse chronological order (newest first):

```
📚 Development Sessions

🟢 ACTIVE
2024-01-15-1430-feat-user-auth
   Goal: Implement user authentication system

✅ COMPLETED
2024-01-14-0930-bugfix-memory-leak
   Goal: Fix memory leak in data processing

2024-01-13-1500-refactor-api-layer
   Goal: Refactor API layer for better maintainability

---
Total: [count] sessions
Use @session-current to see active session details
Use @session-start to begin a new session
```
