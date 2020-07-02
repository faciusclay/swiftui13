//
//  PieView.swift
//  07-draw
//
//  Created by Angel Miranda on 01/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct PieView: View {
    var body: some View {
        ZStack{
            
            //Superior
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 200), clockwise: true)
            }
            .fill(Color(.systemBlue))
            
            //Destacado
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 160), clockwise: true)
            }
            .fill(Color(.systemOrange))
            .offset(x: -30, y:0)
            
            Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 160), clockwise: true)
                path.closeSubpath()
            }
            .stroke(Color(.systemRed), lineWidth: 3)
            .offset(x: -30, y:0)
            .overlay(Text("11.1%")
                .font(.system(.largeTitle, design: .rounded))
                .bold()
                .foregroundColor(.white)
                .offset(x: -140, y: -160)
            )
            
            //Inferior izquierda
            Path(){ path in
                           path.move(to: CGPoint(x: 200, y: 250))
                           path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 160), endAngle: Angle(degrees: 110), clockwise: true)
                       }
            .fill(Color(.systemIndigo))
            
            //Inferior derecha
            Path(){ path in
                           path.move(to: CGPoint(x: 200, y: 250))
                           path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 360), clockwise: true)
                       }
            .fill(Color(.systemTeal))
        }
        
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
