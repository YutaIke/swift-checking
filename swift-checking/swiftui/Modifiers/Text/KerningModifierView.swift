//
//  Kerning.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct KerningModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Group {
                Text("kerningなし")
                Text("kerning(1.0)")
                    .kerning(1.0)
                Text("kerning(2.0)")
                    .kerning(2.0)
                Text("kerning(3.0)")
                    .kerning(3.0)
                Text("kerning(5.0)")
                    .kerning(5.0)
                Text("kerning(10.0)")
                    .kerning(10.0)
                Text("kerning(-1.0)")
                    .kerning(-1.0)
                Text("kerning(-2.0)")
                    .kerning(-2.0)
                Text("kerning(-3.0)")
                    .kerning(-3.0)
            }
            
            Spacer()
            Divider()
            DisclosureGroup("Source Group") {
                Text(#"""
                    Text("kerningなし")
                    Text("kerning(1.0)")
                        .kerning(1.0)
                    Text("kerning(2.0)")
                        .kerning(2.0)
                    Text("kerning(3.0)")
                        .kerning(3.0)
                    Text("kerning(5.0)")
                        .kerning(5.0)
                    Text("kerning(10.0)")
                        .kerning(10.0)
                    Text("kerning(-1.0)")
                        .kerning(-1.0)
                    Text("kerning(-2.0)")
                        .kerning(-2.0)
                    Text("kerning(-3.0)")
                        .kerning(-3.0)
                    """#)
                
            }
        }
    }
}

struct KerningModifierView_Previews: PreviewProvider {
    static var previews: some View {
        KerningModifierView()
    }
}
