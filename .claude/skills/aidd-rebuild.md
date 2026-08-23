# /aidd-rebuild

Open `product-vN` against frozen evals. Do not bash in the champion.

1. Confirm a trigger in `doctrine/rebuild-triggers.md`. Calendars are not triggers.
2. Freeze the evaluator in the champion. Record its version in `templates/run-manifest.yaml`.
3. Extract contracts from current behavior if they are not already in the five legs and required plugins. If the trigger is unused surface, stop and run `/aidd-prune` instead.
4. Create `github.com/<org>/<product>-vN`. Write `GENERATION.md` and `EVALS.md`. Point evals at the champion. Do not copy champion internals as a template. The champion is an oracle.
5. Build from the thesis in the generation repo.
6. Run public contracts. Do not peek at held-out fixtures.
7. Convert every novel failure into a fixture in the champion before asking for `vN+1`.

Time-box. A vertical slice. If it cannot beat the champion, kill or narrow it. Leave the generation repo as evidence.
