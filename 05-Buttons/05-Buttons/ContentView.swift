//
//  ContentView.swift
//  05-Buttons
//
//  Created by Angel Miranda on 24/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                //Que debe hacer el botón
                print("Botón hola pulsado")
            }) {
                //Cómo debe verse el botón
                Text("Hola botón")
                    .font(.largeTitle)
                    
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    
                    .padding(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.green, lineWidth: 5))
            }
            
            Button(action: {
                print("Botón ícono pulsado")
            }){
                Image(systemName: "trash")
                    .padding()
                    .background(Color.red)
                    .clipShape(Circle())
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            
            Button(action: {
                print("Botón texto e ícono pulsado")
            }){
                HStack{
                Image(systemName: "trash")
                    Text("Eliminar")
                        .fontWeight(.regular)
                        .font(.system(.largeTitle, design: .rounded))
                }
                    .padding()
                .background(LinearGradient(gradient: Gradient(colors:[Color.orange, Color.red]), startPoint: .top, endPoint: .bottom))
                    .font(.largeTitle)
                    .foregroundColor(.white)
            .cornerRadius(5)
                .shadow(radius: 10, x: 5, y:5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
