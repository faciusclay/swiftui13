//
//  ContentView.swift
//  06-states_bindings
//
//  Created by Angel Miranda on 25/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var numClicksPurple = 0
    @State private var numClicksYellow = 0
    @State private var numClicksGreen = 0
    
    var body: some View {
        
        VStack{
            Text(String(numClicksPurple+numClicksYellow+numClicksGreen))
                .font(.system(size: 80, weight: .bold, design: .rounded))
            
            CounterView(numClicks: $numClicksPurple, buttonColor: .purple)
            CounterView(numClicks: $numClicksYellow, buttonColor: .yellow)
            CounterView(numClicks: $numClicksGreen, buttonColor: .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterView: View {
    
    @Binding var numClicks: Int
    
    var buttonColor: Color
    
    var body: some View {
        Button(action: {
            self.numClicks += 1
        }) {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
                .overlay(Text("\(numClicks)"))
                .font(.system(size: 80, weight: .bold, design: .rounded))
                .foregroundColor(.white)
        }
    }
}
