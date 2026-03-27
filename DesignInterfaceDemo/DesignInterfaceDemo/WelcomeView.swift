import SwiftUI

public struct WelcomeView: View {
    public init() {}

    public var body: some View {
        // ZStack para demostrar superposición de capas (fondo y contenido)
        NavigationStack {
            ZStack {
                // Capa de fondo con un degradado rosado suave
                LinearGradient(
                    colors: [Color.pink.opacity(0.15), Color.pink.opacity(0.1)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                // Capa de contenido principal apilada verticalmente
                VStack(spacing: 16) {
                    Spacer()

                    // Sección: Icono de perfil (pfp) fijo, solo display
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

                    // Sección: Títulos y subtítulos de bienvenida
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

                    // Sección: Acción principal
                    NavigationLink {
                        ProfileCardView()
                    } label: {
                        Text("Continuar")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink) // color rosado para el botón
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
