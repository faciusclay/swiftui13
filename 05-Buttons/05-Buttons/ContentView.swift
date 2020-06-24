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
        Button(action: {
            //Que debe hacer el botón
            print("Botón hola pulsado")
        }) {
            //Cómo debe verse el botón
            Text("Hola botón")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
