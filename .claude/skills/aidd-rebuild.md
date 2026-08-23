# /aidd-rebuild

Spin a clean-room generation against frozen evals.

1. Confirm a trigger in `doctrine/rebuild-triggers.md`.
2. Freeze the evaluator. Record its version in `templates/run-manifest.yaml`.
3. Extract contracts from current behavior if they are not already in the three legs.
4. Create `product-candidates/gen-NNN/` or an ephemeral worktree. Do not touch `product/` until promotion.
5. Build from the thesis. Do not clone the champion’s internals as a template. The champion is an oracle.
6. Run public contracts. Do not peek at held-out fixtures.
7. Convert every novel failure into a fixture before asking for another generation.

Time-box. A vertical slice. If it cannot beat the champion, kill or narrow it.
