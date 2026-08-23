# /aidd-promote

Score a challenger. Promote only on evidence.

1. Run the frozen suite against champion and challenger. Same tests, same corpus, same scorer.
2. Hard gates first. Any fail is a reject. A high average does not save it.
3. Fitness second. The challenger must beat the champion. Ties stay with the champion.
4. Record the run. Manifest, scorecard, novel failures.
5. Human signs. AI does not promote.
6. If promoted: tag the outgoing champion, replace canonical `product/`, archive the candidate.
7. If rejected: keep the candidate as evidence. Do not delete the miss.

The public sees the upgrade. The org keeps the competition.
