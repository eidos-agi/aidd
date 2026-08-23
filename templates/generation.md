# Generation card

- **id:** product-vN
- **repo:** github.com/<org>/product-vN
- **thesis:** one sentence
- **champion:** github.com/<org>/product
- **trigger:** which rebuild trigger fired
- **oracle:** champion evals, frozen at commit
- **held-out:** yes — builder cannot see it
- **result:** pending / rejected / promoted
- **why:** evidence, not taste

A generation that does not name a frozen evaluator is not a generation. It is a branch.

A generation that lives inside the champion is not a generation. It is a working tree. Open a repo.
