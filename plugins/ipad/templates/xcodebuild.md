# Runner — iPad

```
xcodebuild test \
  -scheme MyApp \
  -testPlan AutonomousIPad \
  -destination 'platform=iOS Simulator,name=iPad mini (A17 Pro),OS=latest' \
  -destination 'platform=iOS Simulator,name=iPad Pro 11-inch (M4),OS=latest' \
  -destination 'platform=iOS Simulator,name=iPad Pro 13-inch (M4),OS=latest' \
  -resultBundlePath artifacts/ipad-ui-tests.xcresult
```

An iPhone destination in this plan is a miss of the plugin, not extra coverage.

Test plans must include Split View and, where supported, a second window. Full-screen launch size is not the suite.

The plugin does not ship this runner. The product CI does.
