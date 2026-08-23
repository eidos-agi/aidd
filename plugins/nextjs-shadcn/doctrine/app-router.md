# App Router

Server Components are the default. `"use client"` is declared surface. It pays the simplicity tax.

A page that fetches in a client effect to avoid thinking about the server boundary is a fail.

Required files for a user-facing route segment, unless the screen contract says otherwise:

- `page.tsx`
- `loading.tsx`
- `error.tsx`
- `not-found.tsx` at a grain that can actually 404

Soft navigation (`next/link`, `router.push`) is the journey. Full reloads are not the test. Back and forward must restore scroll and form intent where the job requires it.

Hydration must be silent. A mismatch is a mechanical miss, not a console warning.

Route handlers and server actions are part of the surface. They get the data-testing-standards gates too. This plugin owns the UI contract around them: pending, error, success, idempotent submit.

Search params are state. They must be shareable and restorable for any job that a URL should capture.
