# Flux for Amazon Q - Usage Guide

Complete guide for using the Flux framework with Amazon Q.

## Quick Start

### 1. Install
```bash
# Windows
install.bat

# Unix/Linux/macOS
chmod +x install.sh
./install.sh
```

### 2. Initialize Your Project
```
@repo-init describe your project here
```

### 3. Start a Session
```
@session-start implement user authentication
```

### 4. Work and Update
Do your development work, then periodically:
```
@session-update
```

### 5. Commit Your Work
```
@git-commit
```

### 6. End Session
```
@session-end
```

## Detailed Workflow

### Repository Initialization (One-Time)

When starting with a new repository:

```
@repo-init web application for task management
```

This creates:
- `AMAZONQ.md` - Guidance file for Amazon Q
- `docs/README.md` - Reference documentation
- `docs/LESSONS.md` - Captured learnings
- `.amazonq/.sessions/` - Session tracking directory

### Session-Based Development

Every development task should be a session:

**Start Session:**
```
@session-start fix memory leak in data processor
```

This will:
- Load relevant context from docs and lessons
- Create a Git branch (e.g., `bugfix-memory-leak-data-processor`)
- Initialize session tracking file
- Prime you with relevant information

**During Development:**

Work normally, then capture progress:
```
@session-update
```

Describe what you've done, decisions made, problems encountered.

**Check Status:**
```
@session-current
```

Shows active session info, duration, recent updates.

**End Session:**
```
@session-end
```

This will:
- Generate comprehensive summary
- Extract and save lessons learned
- Update project documentation
- Close the session

### Git Operations

**Smart Commits:**
```
@git-commit
```

Analyzes your changes and creates well-formatted commits with:
- Conventional commit format
- Appropriate emoji
- Atomic commits (splits large changes if needed)

**Merge and Cleanup:**
```
@git-merge-cleanup main
```

Merges to target branch, pushes, and deletes work branch.

**Merge and Continue:**
```
@git-merge-retain main
```

Merges to target branch but keeps work branch for continued development.

### Session Management

**List All Sessions:**
```
@session-list
```

Shows all past and present sessions.

**View Current Session:**
```
@session-current
```

Shows active session details and recent progress.

**Get Help:**
```
@session-help
```

Shows all available session commands and best practices.

## Best Practices

### Session Goals

Be specific:
- ✅ "implement JWT authentication for API endpoints"
- ❌ "work on auth"

### Regular Updates

Update after significant progress:
- Completing a feature
- Solving a problem
- Making an important decision
- Before taking a break

### Honest Recording

Capture what didn't work:
- Failed approaches help future sessions
- Document why something didn't work
- Record the solution that eventually worked

### Commit Frequently

Use `@git-commit` often:
- After completing a logical unit of work
- Before switching contexts
- At the end of each session

### Review Lessons

Before starting a session, check if relevant lessons exist:
- Read `docs/LESSONS.md`
- The framework will surface relevant ones automatically

## File Structure

After initialization, your project will have:

```
your-project/
├── .amazonq/
│   └── .sessions/
│       ├── .current-session
│       ├── 2024-01-15-1430-feat-user-auth.md
│       └── 2024-01-14-0930-bugfix-memory-leak.md
├── docs/
│   ├── README.md
│   ├── LESSONS.md
│   └── [other documentation]
├── AMAZONQ.md
└── [your code]
```

## Tips

1. **Start Small**: Begin with short sessions to get comfortable
2. **Be Descriptive**: Good session names help future you
3. **Capture Context**: Note why decisions were made, not just what
4. **Use Git Integration**: The git commands understand your session context
5. **Review Sessions**: Periodically review past sessions for patterns

## Troubleshooting

**No active session error:**
- Start a session with `@session-start`

**Git branch conflicts:**
- Ensure you're on the correct branch
- Check `git status` before starting a session

**Missing context:**
- Run `@repo-init` if you haven't already
- Ensure `docs/README.md` and `docs/LESSONS.md` exist

## Differences from Claude Version

- No YAML frontmatter (not needed for Amazon Q)
- Simplified tool restrictions
- Cross-platform compatible paths
- Adapted for Amazon Q's interaction model
- Uses `@prompt-name` syntax instead of `/command:name`
