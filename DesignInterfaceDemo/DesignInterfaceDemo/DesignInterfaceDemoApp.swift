import SwiftUI

// punto de entrada de la app
// aqui inicia todo el proyecto

@main
struct DesignInterfaceDemoApp: App {

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                WelcomeView()
            }
        }
    }
}
