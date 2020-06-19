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
            HStack {
                VStack{
                    Text("Básico")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("$250.00")
                        .font(.system(size: 29, weight:.heavy,
                                      design:.rounded))
                        .foregroundColor(.white)
                    
                    Text("Un curso incluido")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(minWidth:0, maxWidth: .infinity, minHeight: 100)
                .padding(30)
                .background(Color.green)
                .cornerRadius(10)
                
                
                VStack{
                    Text("Carrera")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Text("$999.00")
                        .font(.system(size: 29, weight:.heavy,
                                      design:.rounded))
                        .foregroundColor(.black)
                    
                    Text("Toda una carrera")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .frame(minWidth:0, maxWidth: .infinity, minHeight: 100)
                .padding(30)
                .background(Color(red: 230/255, green: 230/255, blue: 230/255))
                .cornerRadius(10)
            }.padding(.horizontal)
            
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
