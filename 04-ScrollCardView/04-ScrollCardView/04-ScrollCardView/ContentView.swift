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
        ScrollView{
            
            VStack{
                Image("udemy-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                Text("Juan Gabriel Gomila")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text("UCI, Profesor universitario y CEO de frogames")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                Text("139,245 estudiantes - 59 cursos - 23,535 reseñas")
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
            }
            
            CardView(imageName: "rEstudio", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo de R studio con tidyverse desde cero", originalPrice: "$699.00", discountPrice: "$199.00")
            CardView(imageName: "maths", authorName: "Juan Gabriel Gomila", courseTitle: "matemáticas para ciencias computacionales", originalPrice: "$1399.00", discountPrice: "$299.00")
            CardView(imageName: "robotica", authorName: "Juan Gabriel Gomila", courseTitle: "Curso completo de robótica básica", originalPrice: "$1,699.00", discountPrice: "$499.00")
            CardView(imageName: "unreal", authorName: "Juan Gabriel Gomila", courseTitle: "Creación de videojuegos con unreal Engine", originalPrice: "$699.00", discountPrice: "$199.00")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
