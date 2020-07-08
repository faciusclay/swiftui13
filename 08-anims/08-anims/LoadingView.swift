//
//  LoadingView.swift
//  08-anims
//
//  Created by Angel Miranda on 08/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.75)
            .stroke(Color.green, lineWidth: 10)
            .frame(width: 150, height: 150)
            .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            .onAppear(){
                self.isLoading = true
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
