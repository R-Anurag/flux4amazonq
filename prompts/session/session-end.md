# End Development Session

Complete the current session with comprehensive summary and knowledge capture.

## What This Does

1. Summarizes the session work
2. Captures lessons learned
3. Updates project documentation
4. Closes the session tracking

## Instructions

### Step 1: Verify Active Session

Read `.amazonq/.sessions/.current-session` to get the active session filename.

If no active session exists, inform the user there's no session to end.

### Step 2: Read Session History

Read the complete session file to understand all work performed.

### Step 3: Generate Session Summary

Add a final summary section to the session file:

```markdown
## Session Summary

### Completed
[What was accomplished]

### Challenges
[Problems encountered and how they were solved]

### Decisions
[Key decisions made and rationale]

### Incomplete
[What remains to be done, if anything]

### Duration
[Calculate time from start to end]

---
Session ended: [timestamp]
```

### Step 4: Capture Lessons Learned

Review the session for valuable learnings. Update `docs/LESSONS.md`:

Under the `# SESSIONS` section, add:
```markdown
## [Session Name] - [Date]
[Brief summary of what was done]
```

Under the `# LESSONS` section, add any new lessons:
```markdown
## [Lesson Title]
**Context**: [When this applies]
**Issue**: [What problem was encountered]
**Solution**: [How it was resolved]
**Prevention**: [How to avoid in future]
```

Only add lessons that would be valuable for future sessions. Not every session needs new lessons.

### Step 5: Clear Active Session

Delete or clear the `.amazonq/.sessions/.current-session` file.

### Step 6: Confirm Completion

Inform the user:
- Session has been closed
- Summary and lessons have been captured
- They can review the session file
- Remind them to commit their work if not already done
