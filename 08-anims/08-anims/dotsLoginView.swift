//
//  dotsLoginView.swift
//  08-anims
//
//  Created by Angel Miranda on 08/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct dotsLoginView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        HStack{
            ForEach(0...5, id: \.self){ index in
                Circle()
                    .frame(width: 16, height: 16)
                    .foregroundColor(Color.green)
                    .scaleEffect(self.isLoading ? 0 : 1)
                    .animation(Animation.linear(duration: 1).repeatForever().delay(Double(index)/6))
            }
        }.onAppear(){
            self.isLoading = true
        }
    }
}

struct dotsLoginView_Previews: PreviewProvider {
    static var previews: some View {
        dotsLoginView()
    }
}
