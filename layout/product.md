# Product layout

The third leg of the system lives inside the product repo. Visible. Versioned. Copied into every generation.

```
product/
  ai-users/
  frontend-testing-standards/
  data-testing-standards/
```

- `ai-users/` defines whether agents and users can achieve valuable goals.
- `frontend-testing-standards/` defines whether the interaction surface is trustworthy.
- `data-testing-standards/` defines whether the system’s state, events, pipelines, and derived outputs are trustworthy.

The product repo holds the contract the agent builds against. A promotion controller may run additional protected tests the candidate cannot see.

Templates for each leg live under `product/` in this forge. Copy them. Fill them. Do not invent a parallel folder named `tests/` that the candidate is allowed to rewrite.
