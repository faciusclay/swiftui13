//
//  LoadingBarView.swift
//  08-anims
//
//  Created by Angel Miranda on 08/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct LoadingBarView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            Text("CARGANDO")
                .font(.system(.headline, design: .rounded))
            .bold()
                .offset(x:0, y: -30)
            
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color(.systemGray6), lineWidth: 5)
                .frame(width: 300, height: 4)
            
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color(.systemGreen), lineWidth: 5)
                .frame(width: 50, height: 4)
                .offset(x: isLoading ? 125 : -125, y: 0)
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                .onAppear(){
                    self.isLoading = true
            }
        }
                
        /*
             ZStack{
                 Path{ path in
                     path.move(to: CGPoint(x: 50, y: 400))
                     path.addLine(to: CGPoint(x: 350, y: 400))
                 }
                 .stroke(Color(.systemGray5), style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                 
                 Path{ path in
                     path.move(to: CGPoint(x: 50, y: 400))
                     path.addLine(to: CGPoint(x: 100, y: 400))
                 }
                 .stroke(Color(.systemGreen), style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                 .offset(x: isLoading ? 250 : 0, y:0)
                 .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                 .onAppear(){
                     self.isLoading = true
                 }
             }
         */
    }
}

struct LoadingBarView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingBarView()
    }
}
