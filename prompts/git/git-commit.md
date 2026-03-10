# Smart Git Commit

Create well-formatted commits with conventional commit messages and emoji.

## What This Does

1. Checks staged files with `git status`
2. Auto-stages all changes if nothing is staged
3. Reads current session history for context
4. Analyzes changes with `git diff`
5. Determines if changes should be split into multiple commits
6. Creates conventional commit messages with emoji

## Commit Message Format

Use: `<emoji> <type>: <description>`

### Types and Emoji

- ✨ `feat`: New feature
- 🐛 `fix`: Bug fix
- 📝 `docs`: Documentation
- 💄 `style`: Formatting/style
- ♻️ `refactor`: Code refactoring
- ⚡️ `perf`: Performance improvements
- ✅ `test`: Tests
- 🔧 `chore`: Tooling, configuration
- 🚀 `ci`: CI/CD improvements
- 🗑️ `revert`: Reverting changes
- 🚨 `fix`: Fix compiler/linter warnings
- 🔒️ `fix`: Fix security issues
- 🚚 `refactor`: Move or rename resources
- 🏗️ `refactor`: Architectural changes
- ➕ `chore`: Add dependency
- ➖ `chore`: Remove dependency
- 🩹 `fix`: Simple fix for non-critical issue
- 🥅 `fix`: Catch errors
- 🔥 `fix`: Remove code or files
- 🎨 `style`: Improve structure/format
- 🚑️ `fix`: Critical hotfix
- 💚 `fix`: Fix CI build
- 🦺 `feat`: Add validation
- ♿️ `feat`: Improve accessibility
- 🔊 `feat`: Add logs
- 🔇 `fix`: Remove logs

## Instructions

### Step 1: Check Git Status

Run `git status` to see what's staged.

- If 0 files staged: run `git add .` to stage all changes
- If files are staged: only commit those files

### Step 2: Understand Context

1. Read `.amazonq/.sessions/.current-session` to get active session file
2. Read the session file to understand what work is being done
3. Run `git diff --staged` to see the actual code changes

### Step 3: Analyze Changes

Determine if changes should be split based on:
- Different concerns (unrelated parts of codebase)
- Different types (features vs fixes vs refactoring)
- File patterns (source code vs documentation)
- Logical grouping (easier to understand separately)
- Size (very large changes)

### Step 4: Create Commits

For each logical commit:

1. If splitting, stage only relevant files with `git add [files]`
2. Generate commit message following format
3. Execute `git commit -m "[emoji] [type]: [description]"`
4. Confirm what was committed

### Best Practices

- Keep first line under 72 characters
- Use present tense, imperative mood ("add feature" not "added feature")
- Each commit should be atomic (single purpose)
- DO NOT add co-authorship footers

### Examples

Good commit messages:
- ✨ feat: add user authentication system
- 🐛 fix: resolve memory leak in rendering process
- 📝 docs: update API documentation with new endpoints
- ♻️ refactor: simplify error handling logic in parser
- 🚨 fix: resolve linter warnings in component files
- 🩹 fix: address minor styling inconsistency in header
- 🚑️ fix: patch critical security vulnerability in auth flow
- 🦺 feat: add input validation for user registration form
- 🔒️ fix: strengthen authentication password requirements
- ♿️ feat: improve form accessibility for screen readers
