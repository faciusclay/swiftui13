//
//  ContentView.swift
//  06-states_bindings
//
//  Created by Angel Miranda on 25/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var isPlaying = false
    @State private var number = 0
    
    var body: some View {
        Button(action: {
            //self.isPlaying.toggle()
            self.number += 1
        }) {
            /*Image(systemName: isPlaying ? "stop.circle" : "play.circle")
                .font(.system(size:100))
                .foregroundColor(isPlaying ? .red : .blue) */
            Text(String(self.number))
                .font(.system(size: 50))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
