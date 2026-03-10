# Flux for Amazon Q

Amazon Q adaptation of the [Flux Compound Engineering Framework](https://github.com/carveragents/flux).

## Installation

```bash
# Copy prompts to Amazon Q directory
cp -R prompts/* ~/.aws/amazonq/prompts/

# Or on Windows
xcopy /E /I prompts %USERPROFILE%\.aws\amazonq\prompts
```

## Usage

### Initialize Repository
```
@repo-init [optional: repo description]
```

### Session Management
```
@session-start [goal description]
@session-update
@session-end
@session-current
@session-list
```

### Git Operations
```
@git-commit
@git-merge-cleanup [optional: target branch]
@git-merge-retain [optional: target branch]
```

## Key Differences from Claude Version

- No YAML frontmatter (Amazon Q doesn't use it)
- Simplified tool restrictions (Amazon Q has different permissions model)
- Adapted file paths and commands for cross-platform compatibility
- Instructions written for Amazon Q's interaction style

## Structure

```
prompts/
├── repo/
│   └── repo-init.md
├── session/
│   ├── session-start.md
│   ├── session-update.md
│   ├── session-end.md
│   ├── session-current.md
│   └── session-list.md
└── git/
    ├── git-commit.md
    ├── git-merge-cleanup.md
    └── git-merge-retain.md
```
