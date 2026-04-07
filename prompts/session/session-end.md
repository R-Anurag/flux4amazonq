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

Update `docs/LESSONS.md`:

- If `docs/LESSONS.md` does not exist, create it with two empty sections: `# SESSIONS` and `# LESSONS`
- Append the active session label under `# SESSIONS`
- For the `# LESSONS` section:
  - Extract lessons from this session: problems encountered, solutions found, user corrections/guidance during the session
  - Select AT MOST 3 lessons. Prefer lessons:
    - Where the user intervened to guide direction or correct a mistake
    - That apply across projects, not just this one
  - Read the existing `# LESSONS` section thoroughly and compare each candidate lesson against existing ones
  - For each candidate:
    - If similar to an existing lesson → merge/enhance the existing entry with new details
    - If completely unique → add it
  - Each lesson must be concise: one sentence each for "Problem", "Mitigation", and "Lesson learned"
  - Replace the entire `# LESSONS` section with the consolidated result — do NOT just append

### Step 5: Update docs/README.md

- The README must be a reference-style document: a pointer to information in `docs/`, not a duplicate of it
- If `docs/README.md` does not exist:
  - Read all documents under `docs/` and subfolders
  - Create `docs/README.md` referencing all of them
- If `docs/README.md` already exists:
  - Check for any new or updated files under `docs/` since the last session
  - If changes exist: find the relevant section and update it, or create a new section if none exists
  - Do not duplicate content — only add pointers

### Step 6: Clear Active Session

Empty the contents of `.amazonq/.sessions/.current-session` (do not delete the file).

### Step 7: Confirm Completion

Inform the user:
- Session has been closed
- Summary and lessons have been captured
- They can review the session file
- Remind them to commit their work if not already done
