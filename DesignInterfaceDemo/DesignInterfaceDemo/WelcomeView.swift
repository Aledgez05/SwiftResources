import SwiftUI

public struct WelcomeView: View {
    public init() {}

    public var body: some View {
        // ZStack para demostrar superposicion de capas (fondo y contenido)
        NavigationStack {
            ZStack {
                // Capa de fondo con degradado rosado suave
                LinearGradient(
                    colors: [Color.pink.opacity(0.15), Color.pink.opacity(0.1)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                // Capa de contenido principal apilada vertical
                VStack(spacing: 16) {
                    Spacer()

                    // Icono de perfil (pfp) fijo
                    ZStack {
                        Circle()
                            .fill(Color.pink.opacity(0.2))
                            .frame(width: 140, height: 140)
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 130)
                            .foregroundStyle(.pink)
                    }
                    .padding(.bottom, 8)

                    // titulos y contenidos verticales, agregar o quitar a gusto(:
                    VStack(spacing: 6) {
                        Text("Bienvenido a mi app")
                            .font(.largeTitle.bold())
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.pink)
                        Text("Esta es la mejor aplicación para ti.")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.pink.opacity(0.9))
                        Text("texto texto texto")
                            .font(.subheadline)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.pink.opacity(0.8))
                    }
                    .padding(.horizontal)

                    // flujo d la app
                    NavigationLink {
                        //de welcome a vista
                        ProfileCardView()
                    } label: {
                        Text("Continuar")
                            .frame(maxWidth: .infinity)
                    }
                    //formato del boton
                    .buttonStyle(.borderedProminent)
                    .tint(.pink) 
                    .controlSize(.large)
                    .padding(.top, 8)

                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
