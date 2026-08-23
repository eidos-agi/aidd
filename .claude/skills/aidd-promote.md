# /aidd-promote

Score `product-vN`. If it wins, copy it onto `product`.

1. Run the frozen suite that arrived with the current latest against this generation.
2. Hard gates first. Any fail is a reject. `pass^k` independent greens, not one lucky run.
3. Fitness second. Ties stay with what is already in `product`. A smaller generation that holds every remaining job is a promotion.
4. Eval teeth. If a planted mutation still passes, reject.
5. Surface plugins if they apply. The builder does not approve its own UI.
6. `/aidd-prune`. Undeclared surface is a fail.
7. Record the run. Failures become fixtures that copy forward.
8. Human signs. AI does not promote.
9. If promoted: tag the current `product` snapshot, copy `product-vN` onto `product`, leave `product-vN` as history.
10. If rejected: keep `product-vN`. Do not delete the miss.

The public sees the upgrade. The org keeps the generations.
