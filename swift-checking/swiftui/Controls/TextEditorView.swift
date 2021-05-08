//
//  TextEditorView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct TextEditorView: View {
    @State private var fullText: String = "This is some editable text..."

    var body: some View {
        VStack {
            Spacer()
            TextEditor(text: $fullText)
                .foregroundColor(Color.gray)
                .font(.custom("HelveticaNeue", size: 18))
                .lineSpacing(5)
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    TextEditor(text: $fullText)
                        .foregroundColor(Color.gray)
                        .font(.custom("HelveticaNeue", size: 18))
                        .lineSpacing(5)
                    """#)
                
            }.padding()
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
