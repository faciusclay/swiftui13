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
            }.buttonStyle(BotonGirado())
            
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
            .cornerRadius(10)
                .shadow(radius: 5, x: 5, y:5)
            }
            
            Button(action: {
                print("Botón editar infinito pulsado")
            }){
                HStack{
                    Image(systemName: "square.and.pencil")
                    Text("Editar")
                        .fontWeight(.regular)
                        .font(.system(.largeTitle, design: .rounded))
                }
            }.buttonStyle(BasicButtonStyle())
            
            
            Button(action: {
                print("Botón compartir infinito pulsado")
            }){
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    Text("Compartir")
                        .fontWeight(.regular)
                        .font(.system(.largeTitle, design: .rounded))
                }
            }.buttonStyle(BasicButtonStyle())
            
            Button(action: {
                print("Botón eliminar infinito pulsado")
            }){
                HStack{
                    Image(systemName: "trash")
                    Text("Eliminar")
                        .fontWeight(.regular)
                        .font(.system(.largeTitle, design: .rounded))
                }
            }.buttonStyle(BasicButtonStyle())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .frame(minWidth:0, maxWidth: .infinity)
        .padding()
            .background(LinearGradient(gradient: Gradient(colors:[Color.orange, Color.red]), startPoint: .top, endPoint: .bottom))
            .font(.largeTitle)
            .foregroundColor(.white)
        .cornerRadius(50)
        .shadow(radius: 5, x: 5, y:5)
        .padding(.horizontal)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}


struct BotonGirado: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .padding()
        .background(Color.red)
        .clipShape(Circle())
        .font(.largeTitle)
        .foregroundColor(.white)
            .rotationEffect(configuration.isPressed ? Angle(degrees: 90) : Angle(degrees: 0))
    }
}
