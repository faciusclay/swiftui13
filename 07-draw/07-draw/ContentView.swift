//
//  ContentView.swift
//  07-draw
//
//  Created by Angel Miranda on 01/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var progressValue: Float = 0.0

    var body: some View {
        ZStack{
            Color.yellow
                .opacity(0.1)
                .edgesIgnoringSafeArea(.all)
        
            VStack {
                ProgressBar(progress: self.$progressValue)
                    .padding(40)
                    .animation(.default)
                
                Button(action: {
                    self.incrementProgress()
                }) {
                    HStack {
                        Image(systemName: "plus.circle")
                        Text("Incrementar")
                    }
                .padding(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2.0)
                        .frame(width: 160.0))
                }
                
                Button(action: {
                    self.resetProgress()
                }) {
                    HStack {
                        Image(systemName: "gobackward")
                        Text("Reiniciar")
                    }
                .padding(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2.0)
                        .frame(width: 160.0))
                }
                
            }
        }
    }
    
    func incrementProgress(){
        let randomValue = Float([0.012, 0.022, 0.034, 0.016, 0.11].randomElement()!)
        self.progressValue += randomValue
    }
    
    func resetProgress(){
        self.progressValue = 0.0
    }
    
}

struct ProgressBar: View {
    
    @Binding var progress: Float
    
    var trackGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 80/255, green: 150/255, blue: 230/255), Color(red: 30/255, green: 200/255, blue: 240/255)]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        
        ZStack{
        
            Circle()
            .stroke(Color(.systemGray5), lineWidth: 10)
            .frame(width:200, height: 200)
            
            Circle()
                .trim(from: 0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(trackGradient, style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .bevel))
                .frame(width: 200, height: 200)
                .overlay(VStack{
                    Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                        .font(.system(size:50, weight:.bold, design: .rounded))
                    Text("Porcentaje")
                        .font(.system(.body, design: .rounded))
                        .bold().foregroundColor(Color(.darkGray))
                })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
