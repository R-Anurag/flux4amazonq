# Git Merge and Retain

Merge work branch into target branch, push to origin, and switch back to work branch.

## What This Does

1. Merges current branch into target branch (default: main)
2. Pushes changes to remote
3. Switches back to the work branch (keeps it for continued work)

## Instructions

### Step 1: Verify Current State

Run `git status` to ensure:
- Working directory is clean
- All changes are committed

If there are uncommitted changes, inform the user and suggest using `@git-commit` first.

### Step 2: Determine Target Branch

If no target branch was specified, use `main` as default.

Common targets: `main`, `master`, `develop`

### Step 3: Merge to Target

Execute the following:

```bash
# Get current branch name
git branch --show-current

# Switch to target branch
git checkout [target]

# Pull latest changes
git pull origin [target]

# Merge work branch
git merge [work-branch]

# Push to remote
git push origin [target]
```

### Step 4: Return to Work Branch

```bash
# Switch back to work branch
git checkout [work-branch]
```

### Step 5: Confirm Completion

Inform the user:
- Work has been merged into [target]
- Changes pushed to remote
- Switched back to [work-branch] for continued work
- Work branch retained for future updates
