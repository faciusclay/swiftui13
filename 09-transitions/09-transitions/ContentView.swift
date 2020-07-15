//
//  ContentView.swift
//  09-transitions
//
//  Created by Angel Miranda on 15/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showTranslation = false
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 250, height: 250)
                .foregroundColor(.orange)
            .overlay(
                Text("car")
                    .font(.system(.largeTitle, design:.rounded))
                    .bold()
                    .foregroundColor(.white)
            )
            
            if showTranslation{
                Rectangle()
                    .frame(width: 250, height: 250)
                    .foregroundColor(.purple)
                .overlay(
                    Text("coche")
                        .font(.system(.largeTitle, design:.rounded))
                        .bold()
                        .foregroundColor(.white)
                ).transition(.offsetScaledOpacityOut)
            }
        }
        .onTapGesture {
            withAnimation(Animation.spring()){
                self.showTranslation.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnyTransition{
    static var offsetScaledOpacityOut: AnyTransition{
        AnyTransition.offset(x: -700, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
}
