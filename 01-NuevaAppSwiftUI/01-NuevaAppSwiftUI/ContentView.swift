//
//  ContentView.swift
//  01-NuevaAppSwiftUI
//
//  Created by Angel Miranda on 15/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("lighthouse")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            //.scaledToFit()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFill()
            .aspectRatio(contentMode: .fill)
            .frame(width:300)
            //.clipped()
            .clipShape(Capsule())
            .opacity(0.9)
        .overlay(
            /*Image(systemName: "heart.fill")
            .font(.system(size:60))
            .foregroundColor(.pink)
            .opacity(0.5))*/
        Text("Este es solo un texto de prueba, solo es para seguir con el ejemplo del curso         y hacer una cadena larga")
            .fontWeight(.bold)
            .font(.system(.headline,
                           design:.rounded))
            .foregroundColor(.white)
            .padding()
            .background(Color.gray)
            .cornerRadius(10)
            .opacity(0.7)
            .padding()
        )
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
