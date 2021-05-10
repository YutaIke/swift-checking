//
//  LineSpacingModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct LineSpacingModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("lineSpacingなし：This is a string in a TextField with 10 point spacing applied between the bottom of one line and the top of the next.")
                .frame(width: 200, height: 200, alignment: .leading)
                .border(Color.red, width: 2)

            Text("lineSpacing(10)：This is a string in a TextField with 10 point spacing applied between the bottom of one line and the top of the next.")
                .frame(width: 200, height: 200, alignment: .leading)
                .border(Color.red, width: 2)
                .lineSpacing(10)
        }
    }
}

struct LineSpacingModifierView_Previews: PreviewProvider {
    static var previews: some View {
        LineSpacingModifierView()
    }
}
