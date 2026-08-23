# Plugins

Aidd has plugins.

Legs are universal. Every product copies them.

Plugins are optional capability packs for a surface, runtime, or judgment domain that the five legs do not fully cover.

```
product/                 # the five legs — always
plugins/<id>/            # optional — only when the product needs that surface
```

A plugin ships knowledge: doctrine, contracts, gates, templates, skills. Not a binary. A product later owns the runner.

## Rules

1. A plugin may extend a leg. It may not weaken one.
2. A plugin's evaluator is part of the oracle. The candidate does not rewrite it in the same run that authors the product.
3. Hard gates cannot be averaged away here either.
4. Failures become fixtures before the next generation.
5. Humans still own product, risk, promotion, and the oracle.

## What a plugin must declare

See `contract.yaml`. Minimum:

- `id`
- which leg or surface it extends
- machines (who builds, who explores, who judges)
- hard gates
- what the candidate may not edit

## Current plugins

| Plugin | Surface | Job |
| --- | --- | --- |
| `mac-desktop` | macOS apps, iOS simulator | Autonomous native UI testing, taste critic, visual inspection |

Add a plugin when a new surface needs its own sensing, not when a product wants a different folder name.
