//
//  ProfileCardView.swift
//  DesignInterfaceDemo
//
//  Created by CETYS Universidad  on 26/03/26.
//


import SwiftUI

// componente reusable
// simula una tarjeta de perfil

struct ProfileCardView: View {

    var body: some View {

        // tarjeta blanca con acentos rosas
        VStack(spacing: 12) {

            // imagen perfil
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundStyle(.pink)

            // nombre
            Text("Alejandra")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.pink)

            // descripcion
            Text("Aprendiendo SwiftUI y diseño de interfaces")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.pink.opacity(0.7))

        }
        .padding()
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.pink.opacity(0.3), lineWidth: 1)
        )
        .cornerRadius(20)
        .shadow(color: Color.pink.opacity(0.15), radius: 10, x: 0, y: 4)
    }
}

#Preview {
    ProfileCardView()
}
