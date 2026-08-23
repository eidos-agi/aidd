# Plugin layout

Optional. Copied into a product only when that surface exists.

```
plugins/
  <id>/
    plugin.yaml
    README.md
    doctrine/
    contracts/
    gates/
    explorer/
    critic/
    corpus/
    templates/
```

Keep plugin evals outside the candidate the same way product-evals stay outside `product/`.

```
org/
  product/
  product-evals/
  plugin-evals/<id>/     # held-out plugin fixtures, baselines, calibration
  product-candidates/
```

The candidate may read public plugin contracts. It may not edit held-out baselines, critic calibration, or plugin hard gates.

Apple surfaces are siblings: `mac-desktop`, `iphone`, `ipad`. Copy only what the product ships. Do not treat a green suite on one as evidence on another.
