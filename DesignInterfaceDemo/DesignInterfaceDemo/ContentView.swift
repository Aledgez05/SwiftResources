import SwiftUI

// vista principal
// contiene el layout general

struct ContentView: View {

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 20) {

                    // titulo principal
                    Text("Design an Interface")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    // subtitulo
                    Text("SwiftUI Interface Demo")
                        .font(.title3)
                        .foregroundColor(.gray)

                    // tarjeta personalizada
                    ProfileCardView()

                    // boton ejemplo
                    Button(action: {
                        print("Boton presionado")
                    }) {
                        Text("Continuar")
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }

                }
                .padding()
            }
            .navigationTitle("Inicio")
        }
    }
}

#Preview {
    ContentView()
}
