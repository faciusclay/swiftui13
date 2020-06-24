//
//  ContentView.swift
//  04-ScrollCardView
//
//  Created by Angel Miranda on 23/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            HStack {
                Image("udemy-logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                    .padding(-10)
                VStack (alignment: .leading){
                    Text("Juan Gabriel Gomila")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text("UCI, Profesor universitario y CEO de frogames")
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
                    Text("139,245 estudiantes - 59 cursos")
                        .fontWeight(.regular)
                        .foregroundColor(.secondary)
                }
            }
            
                
            
            ScrollView (.horizontal, showsIndicators: false){
                HStack{
                CardView(imageName: "rEstudio", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo de R studio con tidyverse desde cero", originalPrice: "$699.00", discountPrice: "$199.00")
                    .frame(width: 300)
                CardView(imageName: "maths", authorName: "Juan Gabriel Gomila", courseTitle: "matemáticas para ciencias computacionales", originalPrice: "$1399.00", discountPrice: "$299.00")
                    .frame(width: 300)
                CardView(imageName: "robotica", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo creación de guines para videojuegos", originalPrice: "$1,699.00", discountPrice: "$499.00")
                    .frame(width: 300)
                CardView(imageName: "unreal", authorName: "Juan Gabriel Gomila", courseTitle: "Creación de videojuegos con unreal Engine", originalPrice: "$699.00", discountPrice: "$199.00")
                    .frame(width: 300)
                }
            }
            
            VStack(alignment: .leading) {
                Text("Angel René Miranda")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text("Más de 5 años de experiencia en el desarrollo")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                Text("139,245 horas nalga - 3 trabajos")
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
            }
            
            
            ScrollView (.horizontal, showsIndicators: false){
                HStack{
                CardView(imageName: "rEstudio", authorName: "Angel René Miranda", courseTitle: "Curso de Excel para principiantes y estudiantes", originalPrice: "$699.00", discountPrice: "$199.00")
                    .frame(width: 300)
                CardView(imageName: "maths", authorName: "Angel René Miranda", courseTitle: "Metodologías ágiles para proyectos de software", originalPrice: "$1399.00", discountPrice: "$299.00")
                    .frame(width: 300)
                CardView(imageName: "robotica", authorName: "Angel René Miranda", courseTitle: "Como sobrevivir al godinato sin sufrimiento", originalPrice: "$1,699.00", discountPrice: "$499.00")
                    .frame(width: 300)
                CardView(imageName: "unreal", authorName: "Angel René Miranda", courseTitle: "Análisis de herramientas de software para redes", originalPrice: "$699.00", discountPrice: "$199.00")
                    .frame(width: 300)
                }
            }
            
            Spacer()
        }
    } //Fin del body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
