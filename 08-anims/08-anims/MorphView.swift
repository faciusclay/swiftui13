//
//  MorphView.swift
//  08-anims
//
//  Created by Angel Miranda on 15/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct MorphView: View {
    
    @State private var animBegin = false
    @State private var completed = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: animBegin ? 30 : 10)
                .frame(width: animBegin ? 60 : 250, height: 60)
                .foregroundColor(animBegin ? .blue : .green)
            .overlay(
                Image(systemName: "keyboard")
                    .font(.system(.largeTitle))
                    .foregroundColor(.white)
            )
        }
    }
}

struct MorphView_Previews: PreviewProvider {
    static var previews: some View {
        MorphView()
    }
}
