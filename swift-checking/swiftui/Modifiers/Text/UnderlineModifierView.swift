//
//  UnderlineModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct UnderlineModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("underline()")
                .underline()
            Text("underline(true, color: Color.red)")
                .underline(true, color: Color.red)
            Text("underline(false, color: Color.red)")
                .underline(false, color: Color.red)
            Text("underline(color: Color.blue)")
                .underline(color: Color.blue)

        }
    }
}

struct UnderlineModifierView_Previews: PreviewProvider {
    static var previews: some View {
        UnderlineModifierView()
    }
}
