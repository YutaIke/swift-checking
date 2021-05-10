//
//  RectangleView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 100, height: 100)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
