# /aidd-promote

Score a challenger. Promote only on evidence.

1. Run the frozen suite against champion and challenger. Same tests, same corpus, same scorer.
2. Hard gates first. Any fail is a reject. A high average does not save it.
3. Fitness second. The challenger must beat the champion. Ties stay with the champion. Exception: remaining jobs hold and named burden drops — that is a prune promotion, not a tie.
4. If the product writes for humans, run `/aidd-validate` on the artifact. A fluent miss is still a miss.
5. If the product has a native Apple surface, run the plugin that matches it: `/aidd-mac`, `/aidd-iphone`, `/aidd-ipad`. If it is Next.js + shadcn, run `/aidd-next`. Mechanical gates first. A green suite on one surface is inadmissible on the others. The builder does not approve its own UI.
6. Run `/aidd-prune` against the inventory. Undeclared surface is a fail. A deletion that drops a job is a fail.
7. Record the run. Manifest, scorecard, novel failures, inventory diff.
8. Human signs. AI does not promote.
9. If promoted: tag the outgoing champion, replace canonical `product/`, archive the candidate.
10. If rejected: keep the candidate as evidence. Do not delete the miss.

The public sees the upgrade. The org keeps the competition.
