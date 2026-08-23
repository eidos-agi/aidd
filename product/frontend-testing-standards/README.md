# frontend-testing-standards

A trustworthy surface. Journeys, accessibility, visual states, interaction contracts.

Not screenshots of the current champion. Contracts a challenger must still honor.

| Surface | What you freeze |
| --- | --- |
| Journeys | Money path and recovery path. Retry after timeout. Return from a redirect. |
| Accessibility | Keyboard, name, contrast, reduced motion. |
| Visual states | Empty, loading, error, permission denied, stale. |
| Interaction contracts | Idempotent submit. Destructive confirm. Focus return. |

A rebuild that drops the skip link is a failed surface, not a visual refresh.

Native Apple surfaces do not stop at journeys. Copy the plugin that matches the device:

- macOS → `plugins/mac-desktop/`
- iPhone → `plugins/iphone/`
- iPad → `plugins/ipad/`
- Next.js + shadcn → `plugins/nextjs-shadcn/`

Do not collapse them. Phone-on-tablet and tablet-on-phone are both fails. A 390px Chrome viewport is not iPhone. The builder does not approve its own UI.

See `templates/journey.yaml`.
