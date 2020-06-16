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
        Text("Hola, World!")
            .fontWeight(.black)
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
