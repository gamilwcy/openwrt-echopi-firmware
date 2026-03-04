---
name: commit-message
description: Generate and use a detailed git commit message in a fixed Chinese template, then commit changes
license: MIT
compatibility: opencode
---

# Commit Message Template

Use this skill whenever creating a git commit for project changes.

## Workflow

1. Inspect staged and unstaged changes with `git status --short` and `git diff --stat`
2. Summarize what changed, why it changed, impact scope, and testing evidence
3. Build commit message strictly with this format:

```
<type>(<scope>): <subject>

【修改内容】
- ...

【修改原因】
- ...

【影响范围】
- ...

【测试情况】
- ...
```

4. Keep each bullet concrete and verifiable; avoid empty placeholders
5. If a section has no items, write `- 无` instead of leaving it blank
6. Commit using multi-line message with proper newline parsing:

```bash
git commit -m "<type>(<scope>): <subject>" \
  -m $'【修改内容】\n- ...\n\n【修改原因】\n- ...\n\n【影响范围】\n- ...\n\n【测试情况】\n- ...'
```

## Commit Convention

- `type` values: `feat`, `fix`, `refactor`, `perf`, `test`, `docs`, `chore`
- `scope` should be module or directory name, e.g. `devices`, `mqtt`, `auth`, `ui`
- `subject` should be one concise sentence, no trailing period

## Quality Bar

- Modification bullets must mention key files or behavior changes
- Reason bullets must explain root cause, requirement, or risk mitigation
- Impact bullets must indicate affected modules/users/APIs/data paths
- Test bullets must list executed tests/commands; if not run, clearly state not run
