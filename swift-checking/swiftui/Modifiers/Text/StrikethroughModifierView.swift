//
//  StrikethroughModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct StrikethroughModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("strikethrough()")
                .strikethrough()
            Text("strikethrough(true, color: Color.red)")
                .strikethrough(true, color: Color.red)
            Text("strikethrough(false, color: Color.red)")
                .strikethrough(false, color: Color.red)
            Text("strikethrough(color: Color.blue)")
                .strikethrough(color: Color.blue)

        }
    }
}

struct StrikethroughModifierView_Previews: PreviewProvider {
    static var previews: some View {
        StrikethroughModifierView()
    }
}
