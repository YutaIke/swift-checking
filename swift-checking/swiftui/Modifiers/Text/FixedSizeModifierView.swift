//
//  FixedSizeModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct FixedSizeModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("なし：A single line of text, too long to fit in a box.")
                .frame(width: 200, height: 100)
                .border(Color.gray)
            Text("fixedSize()：test test test test test test")
                .fixedSize(horizontal: true, vertical: true)
                .frame(width: 200, height: 100)
                .border(Color.gray)
            Text("fixedSize(horizontal: true, vertical: true) ")
                .fixedSize(horizontal: true, vertical: true)
                .frame(width: 200, height: 100)
                .border(Color.gray)
            Text("fixedSize(horizontal: true, vertical: false)")
                .fixedSize(horizontal: true, vertical: false)
                .frame(width: 200, height: 100)
                .border(Color.gray)
            Text("fixedSize(horizontal: false, vertical: true)")
                .fixedSize(horizontal: false, vertical: true)
                .frame(width: 200, height: 100)
                .border(Color.gray)
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    Text("なし：A single line of text, too long to fit in a box.")
                        .frame(width: 200, height: 100)
                        .border(Color.gray)
                    Text("fixedSize()：test test test test test test")
                        .fixedSize(horizontal: true, vertical: true)
                        .frame(width: 200, height: 100)
                        .border(Color.gray)
                    Text("fixedSize(horizontal: true, vertical: true) ")
                        .fixedSize(horizontal: true, vertical: true)
                        .frame(width: 200, height: 100)
                        .border(Color.gray)
                    Text("fixedSize(horizontal: true, vertical: false)")
                        .fixedSize(horizontal: true, vertical: false)
                        .frame(width: 200, height: 100)
                        .border(Color.gray)
                    Text("fixedSize(horizontal: false, vertical: true)")
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(width: 200, height: 100)
                        .border(Color.gray)
                    """#)
                
            }
        }
        
    }
}

struct FixedSizeModifierView_Previews: PreviewProvider {
    static var previews: some View {
        FixedSizeModifierView()
    }
}
