---
paths:
  - "src/ui/**"
---

# UI Code Rules

- UI must NEVER own or directly modify game state — display only, use commands/events to request changes
- All UI text must go through the localization system — no hardcoded user-facing strings
- Support both keyboard/mouse AND gamepad input for all interactive elements
- All animations must be skippable and respect user motion/accessibility preferences
- UI sounds trigger through the audio event system, not directly
- UI must never block the game thread
- Scalable text and colorblind modes are mandatory, not optional
- Test all screens at minimum and maximum supported resolutions
- Apply the shared experience principles from `.agents/shared/experience-values.md`
- Prefer gradual revelation for complex flows (show next-most-relevant action only)
- Transitions must preserve orientation (avoid disjoint state jumps)
- Design non-happy states explicitly: loading, empty, error, partial, success
- Keep interaction feedback subtle and informative (hover/focus/pressed states)
