import SwiftUI

// aqui inicia todo el proyecto

@main
struct DesignInterfaceDemoApp: App {

    var body: some Scene {
        WindowGroup {
            //podemos navegar
            NavigationStack {
                //primera vista, bienvenidos nenis
                WelcomeView()
            }
        }
    }
}
