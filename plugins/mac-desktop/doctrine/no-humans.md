# No humans in routine frontend testing

Humans define intent and new taste. Machines build, explore, assert, record, and gate.

Fully automated as a release gate:

- Build, install, launch
- Happy-path journeys
- Validation and error states
- Multi-device, locale, appearance
- Accessibility audit
- Crash and log collection
- Screenshot / semantic-tree diffs against an approved baseline

Mostly automated, medium gate quality until calibrated:

- Exploratory state discovery
- Whether a new UX is "good"

Not a machine decision:

- A new interaction model
- A new component primitive
- A new product character

Escalate those. Do not hide them in a critic comment.

The agent owns generation, repair, triage, and expansion of the frontend test artifact. CI owns go/no-go. Review owns production-code merges until the loop has earned trust.
