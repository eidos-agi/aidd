# /aidd

The method.

Read `README.md` and `doctrine/principles.md` first. Then:

1. Name the champion.
2. Name the frozen evaluator. If there is none, stop and extract contracts before generating code.
3. Name the four legs. If `ai-users/`, `frontend-testing-standards/`, `data-testing-standards/`, or `validation-personas/` are missing, copy templates from this forge.
4. Name the plugins the surface needs. Native Apple UI → `plugins/mac-desktop/`. See `/aidd-plugin`.
5. Do not start a rebuild because the code is ugly. Check `doctrine/rebuild-triggers.md`.
6. Speak in generations, not versions. `next` until it earns a release.

Do not edit `product-evals/`, `plugin-evals/`, `validation-personas/`, or plugin gates in the same run that authors a candidate.
