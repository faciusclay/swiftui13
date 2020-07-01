//
//  ContentView.swift
//  07-draw
//
//  Created by Angel Miranda on 01/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path(){ path in
            path.move(to: CGPoint(x: 30, y: 30))
            path.addLine(to: CGPoint(x: 230, y: 30))
            path.addLine(to: CGPoint(x: 230, y: 150))
            path.addLine(to: CGPoint(x: 30, y: 150))
            path.closeSubpath()
        }
        //.fill(Color.blue)
            .stroke(Color.blue, lineWidth: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
