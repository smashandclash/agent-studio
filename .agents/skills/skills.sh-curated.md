# Skills.sh Curated Extensions

Source: `https://skills.sh/`

These are optional add-ons that complement Agent Studio workflows without
replacing the canonical `.agents/skills/` system.

## Recommended Categories

- Discovery
  - `vercel-labs/skills/find-skills`
- Web/UI quality
  - `anthropics/skills/frontend-design`
  - `vercel-labs/agent-skills/web-design-guidelines`
  - `vercel-labs/agent-skills/vercel-react-best-practices`
- Browser validation
  - `vercel-labs/agent-browser/agent-browser`

## Install Pattern

Use the skills.sh installer CLI:

```bash
npx skills add <owner/repo>
```

Then choose/install the desired skills from the catalog.

## Integration Guidance

- Keep project-specific game workflow in `.agents/skills/`.
- Use skills.sh extensions as specialized helpers for UI/web quality and discovery.
- Document newly adopted external skills in `README.md` to keep team behavior consistent.
