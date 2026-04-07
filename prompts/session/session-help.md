# Session Management Help

Show help for the session management system.

## Session Management Commands

The session system documents development work for future reference and builds a knowledge base across sessions.

### Available Commands

- `@session-start [goal]` - Start a new session with the stated goal
- `@session-update` - Update current session with summary of recent activities
- `@session-end` - End session with comprehensive summary and lesson capture
- `@session-current` - Show current session status and recent updates
- `@session-list` - List all session files
- `@session-help` - Show this help

### How It Works

1. Sessions are markdown files stored in `.amazonq/.sessions/`
2. Files use `YYYY-MM-DD-HHMM-session-name.md` format
3. Only one session can be active at a time, tracked via `.current-session`
4. Sessions accumulate progress, decisions, problems, and solutions
5. At session end, lessons are distilled into `docs/LESSONS.md` for future sessions

### Best Practices

- Start a session before beginning any significant work
- Update regularly, especially at important checkpoints or decisions
- End with a thorough summary — future sessions (and future you) will benefit
- Review `docs/LESSONS.md` before starting work on a familiar problem area

### Example Workflow

```
@session-start refactor the auth flow for better code reuse
@session-update
...
@session-update
@session-end
```
