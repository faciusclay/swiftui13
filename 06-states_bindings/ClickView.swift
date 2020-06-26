//
//  ClickView.swift
//  06-states_bindings
//
//  Created by Angel Miranda on 25/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ClickView: View {
    
    @State private var numClicks = 0
    
    var body: some View {
        
        Button(action: {
            self.numClicks += 1
        }) {
           Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(.blue)
            .overlay(Text("\(numClicks)"))
            .font(.system(size: 80, weight: .bold, design: .rounded))
            .foregroundColor(.white)
        }
        
        
    }
}

struct ClickView_Previews: PreviewProvider {
    static var previews: some View {
        ClickView()
    }
}
