//
//  LineLimitModifier.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct LineLimitModifier: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("lineLimit(2)：This is a long string that demonstrates the effect of SwiftUI's lineLimit(:_) operator.")
                .frame(width: 200, height: 100, alignment: .leading)
                .border(Color.red)
                .lineLimit(2)

            Text("lineLimit(nil)：This is a long string that demonstrates the effect of SwiftUI's lineLimit(:_) operator.")
                .frame(width: 200, height: 100, alignment: .leading)
                .border(Color.red)
                .lineLimit(nil)

            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    VStack(spacing: 10) {
                        Text("lineLimit(2)：This is a long string that demonstrates the effect of SwiftUI's lineLimit(:_) operator.")
                            .frame(width: 200, height: 100, alignment: .leading)
                            .border(Color.red)
                            .lineLimit(2)

                        Text("lineLimit(nil)：This is a long string that demonstrates the effect of SwiftUI's lineLimit(:_) operator.")
                            .frame(width: 200, height: 100, alignment: .leading)
                            .border(Color.red)
                            .lineLimit(nil)
                    }
                    """#)
                
            }
        }
    }
}

struct LineLimitModifier_Previews: PreviewProvider {
    static var previews: some View {
        LineLimitModifier()
    }
}
