//
//  CurveView.swift
//  07-draw
//
//  Created by Angel Miranda on 01/07/20.
//  Copyright © 2020 Angel Miranda. All rights reserved.
//

import SwiftUI

struct CurveView: View {
    var body: some View {
        ZStack {
//            Path(){ path in
//                path.move(to: CGPoint(x: 60, y: 130))
//                path.addLine(to: CGPoint(x: 130, y: 0))
//                path.addLine(to: CGPoint(x: 200, y: 130))
//            }
//            .stroke(Color.orange, lineWidth: 5)
            
//            Path(){ path in
//                path.move(to: CGPoint(x: 60, y: 130))
//                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 0))
//                path.addRect(CGRect(x: 30, y: 130, width: 200, height: 120))
//            }
//            .fill(Color.blue)
            Button(action: {
                
            }){
                Text("Cartelito")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50)
                    .background(FunnyLabel(percCircle: 0.8, percAltura: 0.4).fill(Color.blue))
            }
            
            Path(){ path in
                path.move(to: CGPoint(x: 30, y: 130))
                path.addLine(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 0))
                path.addLine(to: CGPoint(x: 230, y: 130))
                path.addLine(to: CGPoint(x: 230, y: 250))
                path.addLine(to: CGPoint(x: 30, y: 250))
                path.closeSubpath()
            }
            .stroke(Color.pink, lineWidth: 10)
        }
    }
}

struct CurveView_Previews: PreviewProvider {
    static var previews: some View {
        CurveView()
    }
}

struct FunnyLabel: Shape {
    
    var percCircle: CGFloat = 1.0
    var percAltura: CGFloat = 1.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.size.width * (1-percCircle)/2, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width * (1-(1-percCircle)/2), y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width * percAltura/2)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}
