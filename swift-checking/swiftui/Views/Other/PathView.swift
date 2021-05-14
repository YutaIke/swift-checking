//
//  PathView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/14.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        VStack {
            Path(CGRect(x: 10, y: 10, width: 200, height: 100))
           
            Path(ellipseIn: CGRect(x: 10, y: 10, width: 200, height: 100))
              .fill(Color.green)

            Path(roundedRect: CGRect(x: 10, y: 0, width: 200, height: 100),
               cornerRadius: 40)
            
            Path(roundedRect: CGRect(x: 10, y: 0, width: 200, height: 100),
                 cornerSize: CGSize(width: 50, height: 20),
                 style: .continuous)
            
            Path { path in
                path.addLines([
                   CGPoint(x: 10, y: 50),
                   CGPoint(x: 200, y: 50),
                ])
            }.stroke()
            
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addArc(center: .init(x: 10, y: 10), //2
                            radius: 100,
                            startAngle: Angle(degrees: 0.0),
                            endAngle: Angle(degrees: 90),
                            clockwise: false)
                path.closeSubpath()
            }.stroke()

            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addQuadCurve(to: CGPoint(x: 100, y: 10), control: CGPoint(x: 50, y: 100))
                path.addQuadCurve(to: CGPoint(x: 200, y: 10), control: CGPoint(x: 150, y: 50))
            }.stroke()

        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}
