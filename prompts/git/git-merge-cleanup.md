# Git Merge and Cleanup

Merge work branch into target branch, push to origin, and delete the work branch.

## What This Does

1. Merges current branch into target branch (default: main)
2. Pushes changes to remote
3. Deletes the work branch locally and remotely

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

### Step 4: Delete Work Branch

```bash
# Delete local branch
git branch -d [work-branch]

# Delete remote branch
git push origin --delete [work-branch]
```

### Step 5: Confirm Completion

Inform the user:
- Work has been merged into [target]
- Changes pushed to remote
- Work branch [work-branch] has been deleted
- Currently on [target] branch
