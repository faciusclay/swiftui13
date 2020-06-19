//
//  ContentView.swift
//  03-stacks
//
//  Created by Angel Miranda on 19/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack(spacing: 8) {
                PricingView(title: "Básico", subTitle: "Un curso incluido", price: "$250.00", textColor: .white, backgroundColor: .green)
                ZStack{
                    PricingView(title: "Carrera", subTitle: "Toda una carrera", price: "$999.00", textColor: .black, backgroundColor: Color(red: 230/255, green: 230/255, blue: 230/255))
                    
                    Text("El mejor para empezar")
                        .font(.system(.caption, design:.rounded))
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .padding(10)
                        .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                        .offset(x: 0, y:-85)
                }
            }.padding(.horizontal)
            
            ZStack{
                PricingView(title: "Definitivo", subTitle: "Todos los cursos", price: "$3,999.00", textColor: .white, backgroundColor: Color(red: 50/255, green: 50/255, blue: 50/255))
                .padding(.horizontal)
                
                Text("Conviértete en master del universo")
                .font(.system(.caption, design:.rounded))
                .foregroundColor(.white)
                .fontWeight(.black)
                .padding(10)
                .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                .offset(x: 0, y:-70)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text("Elije tu itinerario")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("de aprendizaje")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct PricingView: View {
    
    var title: String
    var subTitle: String
    var price: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 29, weight:.heavy, design:.rounded))
                .foregroundColor(textColor)
            
            Text(subTitle)
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 100)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}
