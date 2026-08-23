# Runner

macOS:

```
xcodebuild test \
  -scheme MyApp \
  -testPlan AutonomousMac \
  -destination 'platform=macOS' \
  -resultBundlePath artifacts/mac-ui-tests.xcresult
```

iPhone and iPad destinations do not belong in this plan. Those are `plugins/iphone` and `plugins/ipad`.

Attach screenshots on purpose:

```
let attachment = XCTAttachment(screenshot: app.screenshot())
attachment.name = name
attachment.lifetime = .keepAlways
add(attachment)
```

The plugin does not ship this runner. The product CI does. The plugin ships the contract the runner must satisfy.
