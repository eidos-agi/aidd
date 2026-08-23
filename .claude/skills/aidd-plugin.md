# /aidd-plugin

Aidd has plugins. Legs are universal. Plugins are optional surfaces.

1. Read `plugins/README.md` and `plugins/contract.yaml`.
2. Copy the plugins for surfaces the product actually ships. Mac → `plugins/mac-desktop/`. iPhone → `plugins/iphone/`. iPad → `plugins/ipad/`. Next.js + shadcn → `plugins/nextjs-shadcn/`. Do not collapse Apple into one plugin. Do not treat a 390px browser as `iphone`.
3. Do not invent a plugin to rename a leg. Complexity reduction is `simplicity-standards`, not a plugin.
4. A plugin may extend a leg. It may not weaken one.
5. Put held-out plugin fixtures in `plugin-evals/<id>/`.
6. Do not edit plugin gates, critic rubrics, or held-out baselines in the same run that authors the product.
