//
//  ContentView.swift
//  08-anims
//
//  Created by Angel Miranda on 07/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonColorChanged = false
    @State private var iconColorChanged = false
    @State private var iconSizeChanged = false
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 180, height: 180)
                .foregroundColor(buttonColorChanged ? Color(.systemGray6) : .green)
                //.animation(.default)
            
            Image(systemName: "keyboard")
                .font(.system(size: 80))
                .foregroundColor(iconColorChanged ? .green : Color(.systemGray6))
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
                //.animation(.default)
            
        }
        .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5))
        .onTapGesture {
            self.buttonColorChanged.toggle()
            self.iconColorChanged.toggle()
            self.iconSizeChanged.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
