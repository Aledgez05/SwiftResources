//
//  ProfileCardView.swift
//  DesignInterfaceDemo
//
//  Created by CETYS Universidad  on 26/03/26.
//  by Aicia Jordan & Aejandra Dominguez 


import SwiftUI

// componente reusable
// simula una tarjeta de perfil

struct ProfileCardView: View {

    var body: some View {

        // tarjeta blanca con acentos rosas, v de vertical
        VStack(spacing: 12) {

            // imagen perfil
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundStyle(.pink)

            // nombre
            Text("Alejandra")
            //modificadoress
                .font(.title2)
                .fontWeight(.bold)
            //elige tus colores
                .foregroundStyle(.pink)

            // descripcion
            Text("Hola estoy aprendiendo SwiftUI y diseño de interfaces yipiee")
                .font(.body)
                .multilineTextAlignment(.center)
            //podemos combinar modificadores, como la opacidad de cierto color
                .foregroundStyle(Color.pink.opacity(0.7))

        }
        //bordes o rellenito a la vista
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
