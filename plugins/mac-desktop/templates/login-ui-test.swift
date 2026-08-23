import XCTest

final class LoginUITests: XCTestCase {
    func testInvalidCredentialsShowsError() {
        let app = XCUIApplication()
        app.launchArguments = ["-useMockAuth", "true", "-uiTesting", "1"]
        app.launch()

        app.textFields["auth.email"].tap()
        app.textFields["auth.email"].typeText("wrong@example.com")

        app.secureTextFields["auth.password"].tap()
        app.secureTextFields["auth.password"].typeText("bad-password")

        app.buttons["auth.signIn"].tap()

        XCTAssertTrue(app.staticTexts["global.error"].waitForExistence(timeout: 5))
    }
}
