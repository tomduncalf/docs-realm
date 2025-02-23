func login() async {
    do {
        let app = App(id: YOUR_REALM_APP_ID)
        // Authenticate with the instance of the app that points
        // to your backend. Here, we're using anonymous login.
        let user = try await app.login(credentials: Credentials.anonymous)
        print("Successfully logged in user: \(user)")
    } catch {
        print("Failed to log in user: \(error.localizedDescription)")
    }
}
