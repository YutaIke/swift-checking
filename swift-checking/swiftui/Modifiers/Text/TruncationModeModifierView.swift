//
//  TruncationModeModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct TruncationModeModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("truncationMode(.head)：This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
                .frame(width: 250, height: 100, alignment: .leading)
                .border(Color.red)
                .truncationMode(.head)
            Text("truncationMode(.middle)：This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
                .frame(width: 250, height: 100, alignment: .leading)
                .border(Color.red)
                .truncationMode(.middle)
            Text("truncationMode(.tail)：This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
                .frame(width: 250, height: 100, alignment: .leading)
                .border(Color.red)
                .truncationMode(.tail)
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    Text("truncationMode(.head)：This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
                        .frame(width: 250, height: 100, alignment: .leading)
                        .border(Color.red)
                        .truncationMode(.head)
                    Text("truncationMode(.middle)：This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
                        .frame(width: 250, height: 100, alignment: .leading)
                        .border(Color.red)
                        .truncationMode(.middle)
                    Text("truncationMode(.tail)：This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
                        .frame(width: 250, height: 100, alignment: .leading)
                        .border(Color.red)
                        .truncationMode(.tail)
                    """#)
                
            }
        }
    }
}

struct TruncationModeModifierView_Previews: PreviewProvider {
    static var previews: some View {
        TruncationModeModifierView()
    }
}
