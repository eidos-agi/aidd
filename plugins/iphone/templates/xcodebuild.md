# Runner — iPhone

```
xcodebuild test \
  -scheme MyApp \
  -testPlan AutonomousIPhone \
  -destination 'platform=iOS Simulator,name=iPhone SE (3rd generation),OS=latest' \
  -destination 'platform=iOS Simulator,name=iPhone 16 Pro,OS=latest' \
  -destination 'platform=iOS Simulator,name=iPhone 16 Pro Max,OS=latest' \
  -resultBundlePath artifacts/iphone-ui-tests.xcresult
```

An iPad destination in this plan is a miss of the plugin, not extra coverage.

The plugin does not ship this runner. The product CI does.
