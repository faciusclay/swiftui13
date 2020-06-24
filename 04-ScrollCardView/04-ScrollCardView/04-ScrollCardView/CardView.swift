//
//  CardView.swift
//  04-ScrollCardView
//
//  Created by Angel Miranda on 23/06/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack{
            Image("rEstudio")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading){
                    Text("Juan Gabriel Gomila")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("Curso completo de R Studio con tidyverse".uppercased())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(2)
                    HStack {
                        Text("$199.00")
                            .font(.subheadline)
                            .foregroundColor(.primary)
                        Text("$699.00")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                    }
                }.layoutPriority(10)
                Spacer()
            }.padding()
        }
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2), lineWidth: 2))
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
