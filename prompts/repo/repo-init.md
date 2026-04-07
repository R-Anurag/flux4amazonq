# Repository Initialization

Initialize a new repository with Flux framework structure for session-based development.

## What This Does

1. Creates required boilerplate files and folders
2. Analyzes the codebase to understand its purpose
3. Generates comprehensive documentation
4. Sets up the foundation for session-based development

## Instructions

### Step 1: Create Boilerplate Structure

Create the following structure:

```
docs/
├── README.md (empty for now)
└── LESSONS.md
.amazonq/
└── .sessions/
AMAZONQ.md
```

Create `docs/LESSONS.md` with:
```markdown
# SESSIONS

# LESSONS
```

Create `AMAZONQ.md` in the repository root with:
```markdown
# AMAZONQ.md

This file provides guidance to Amazon Q when working with code in this repository.

**NEVER** update this file during a working session. Use other files to track project learnings and documentation.

## Project Overview

{{TBD}}

## Important Reference Files

- Project documentation: [docs/README.md](docs/README.md)
- Lessons learned and pitfalls: [docs/LESSONS.md](docs/LESSONS.md)

## Development Workflow

**ALWAYS**:
1. Start a session with `@session-start` before beginning any significant work
2. Provide the session goal clearly so context can be primed appropriately
3. Run `@session-update` at meaningful checkpoints during development
4. Use `@git-commit` to create well-formatted atomic commits
5. End every session with `@session-end` to capture learnings

## Development Guidelines

- Always review code changes before committing
- Update session progress regularly
- Capture learnings in LESSONS.md at session end
- Follow existing code patterns and architecture
```

### Step 2: Analyze the Codebase

If a repository description was provided, use it as guidance.

1. Read files in the codebase to understand functionality
2. Read existing documentation if available
3. Prioritize codebase over documentation if conflicts exist

### Step 3: Generate Documentation

Update the following:

1. **AMAZONQ.md**: Update "Project Overview" with 2-3 lines describing the codebase purpose

2. **docs/**: Create well-structured documentation covering:
   - System architecture
   - Design patterns
   - Development process
   - How to run the code
   - Testing methodology
   - Other relevant information

3. **docs/README.md**: Create a reference-style document that:
   - Acts as a pointer to information in documentation
   - Does NOT duplicate documentation content
   - Provides jumping-off points for anyone working on the project
   - Orients developers to quickly find needed information

### Step 4: Confirm Completion

Report what was created and provide a brief summary of the project understanding.
