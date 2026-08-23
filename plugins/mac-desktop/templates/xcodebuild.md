# Runner

```
xcodebuild test \
  -scheme MyApp \
  -testPlan AutonomousUI \
  -destination 'platform=iOS Simulator,name=iPhone 16 Pro,OS=latest' \
  -resultBundlePath artifacts/ui-tests.xcresult
```

macOS:

```
xcodebuild test \
  -scheme MyApp \
  -testPlan AutonomousUI \
  -destination 'platform=macOS' \
  -resultBundlePath artifacts/ui-tests.xcresult
```

Attach screenshots on purpose:

```
let attachment = XCTAttachment(screenshot: app.screenshot())
attachment.name = name
attachment.lifetime = .keepAlways
add(attachment)
```

The plugin does not ship this runner. The product CI does. The plugin ships the contract the runner must satisfy.
