# Product layout

The legs of the system live inside the product repo. Visible. Versioned. Copied into every generation.

```
product/
  ai-users/
  frontend-testing-standards/
  data-testing-standards/
  validation-personas/
  simplicity-standards/
```

- `ai-users/` defines whether agents and users can achieve valuable goals.
- `frontend-testing-standards/` defines whether the interaction surface is trustworthy.
- `data-testing-standards/` defines whether the system’s state, events, pipelines, and derived outputs are trustworthy.
- `validation-personas/` defines whether AI-produced artifacts are decision-useful, evidenced, and fit for a human reader.
- `simplicity-standards/` defines whether a feature still earns its existence. Burden, kill conditions, evidence-gated deletion.

`ai-users` are executable users of the product. `validation-personas` are independent graders of what the product writes. `simplicity-standards` are independent graders of whether the product should still carry a thing. Different jobs. Different files.

The product repo holds the contract the agent builds against. A promotion controller may run additional protected tests the candidate cannot see.

Templates for each leg live under `product/` in this forge. Copy them. Fill them. Do not invent a parallel folder named `tests/` that the candidate is allowed to rewrite.

Plugins live under `plugins/`. Copy the Apple plugin that matches the shipped surface: `mac-desktop`, `iphone`, `ipad`. See `layout/plugins.md`.
