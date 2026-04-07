# Show Current Session

Display the active session's status, duration, and recent updates.

## What This Does

Shows information about the currently active development session.

## Instructions

### Step 1: Check for Active Session

Read `.amazonq/.sessions/.current-session` to get the active session filename.

If no active session exists, inform the user and suggest starting one with `@session-start`.

### Step 2: Read Session File

Read the complete session file.

### Step 3: Display Session Information

Present the following:

```
📋 Active Session: [Session Name]
🎯 Goal: [Session goal]
🌿 Branch: [Branch name]
⏱️  Started: [Start timestamp]
⏳ Duration: [Calculate elapsed time]

Recent Updates:
[Show last 2-3 progress entries]

---
Use @session-update to add progress
Use @session-end to complete the session
```

Calculate duration from the start timestamp recorded in the session file to the most recent update timestamp. Note that this is approximate based on recorded timestamps.
