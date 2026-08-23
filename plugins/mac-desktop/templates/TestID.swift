enum TestID {
    static let email = "auth.email"
    static let password = "auth.password"
    static let signIn = "auth.signIn"
    static let home = "home.root"
    static let error = "global.error"
}

Button("Sign In") { viewModel.signIn() }
    .accessibilityIdentifier(TestID.signIn)
