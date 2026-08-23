# /aidd-promote

Score `product-vN`. Promote only on evidence. Push the winner back to `product`.

1. Run the frozen suite against champion and challenger. Same tests, same corpus, same scorer. The scorer lives in the champion.
2. Hard gates first. Any fail is a reject. A high average does not save it. `pass^k` independent greens, not one lucky run.
3. Fitness second. The challenger must beat the champion. Ties stay with the champion. Exception: remaining jobs hold and named burden drops — that is a prune promotion, not a tie.
4. Eval teeth. If a planted mutation of the challenger still passes, reject. The suite is theater.
5. If the product writes for humans, run `/aidd-validate` on the artifact. A fluent miss is still a miss.
6. If the product has a native Apple surface, run the plugin that matches it: `/aidd-mac`, `/aidd-iphone`, `/aidd-ipad`. If it is Next.js + shadcn, run `/aidd-next`. Mechanical gates first. A green suite on one surface is inadmissible on the others. The builder does not approve its own UI.
7. Run `/aidd-prune` against the inventory. Undeclared surface is a fail. A deletion that drops a job is a fail.
8. Record the run. Manifest, scorecard, novel failures, inventory diff. Failures become fixtures in the champion.
9. Human signs. AI does not promote.
10. If promoted: tag the outgoing champion (`legacy-v{N-1}-final`), push `product-vN` into `product`, leave the generation repo as evidence.
11. If rejected: keep `product-vN`. Do not delete the miss.

The public sees the upgrade. The org keeps the generations.
