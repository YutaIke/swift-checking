//
//  GestureView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/14.
//

import SwiftUI

struct GestureView: View {
    @State private var message = "Please tap"

    var body: some View {
        VStack {
            VStack(spacing:25) {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 75, height: 75)
                    .padding()
                    .foregroundColor(.red)
                    .onTapGesture {
                        message += "\nTap on Image"
                    }
                Rectangle()
                    .fill(Color.blue)
            }
            .gesture(TapGesture().onEnded {
                message += "\nTap on VStack"
            })
            .frame(width: 200, height: 200)
            .border(Color.purple)
            
            Text(message)
                .font(.headline)
                .padding(.bottom, 20)
        }
    }
}

struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
