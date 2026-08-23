# Runner — Next.js + shadcn

Release gate is production mode:

```
next build
next start
playwright test --project=chromium
```

`next dev` is not the gate. Hydration and streaming differ.

Projects:

- chromium @ 390x844 light
- chromium @ 390x844 dark
- chromium @ 1280x720 light
- chromium @ 1280x720 dark
- keyboard-only @ 1280

Attach traces, screenshots, and console on failure. Treat `Warning: Extra attributes from the server` and hydration mismatch text as fails.

The plugin does not ship this runner. The product CI does.
