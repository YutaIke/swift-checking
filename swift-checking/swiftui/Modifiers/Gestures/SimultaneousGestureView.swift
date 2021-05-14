//
//  SimultaneousGestureView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/14.
//
// 参考：https://www.ioscreator.com/tutorials/swiftui-simultaneous-gestures-tutorial

import SwiftUI

struct SimultaneousGestureView: View {
    @State private var degrees: Double = 0
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        let magnificationGesture = MagnificationGesture().onChanged { (value) in
            self.scale = value.magnitude
        }
        
        let rotationGesture = RotationGesture().onChanged { (value) in
            self.degrees = value.degrees
        }
        
        VStack {
            Image(systemName: "star.circle.fill")
                .font(.system(size: 200))
                .foregroundColor(Color.red)
                .gesture(magnificationGesture)
                .simultaneousGesture(rotationGesture)
                .rotationEffect(Angle(degrees: degrees))
                .scaleEffect(scale)
                .animation(.easeInOut)
            
        }
    }
}

struct SimultaneousGestureView_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneousGestureView()
    }
}
