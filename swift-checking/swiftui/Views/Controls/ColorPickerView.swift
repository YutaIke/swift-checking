//
//  ColorPickerView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var selectedColor = Color.red
    var body: some View {
        VStack {
            Spacer()
            ColorPicker("ColorPicker", selection: $selectedColor)
                .frame(width: 150)
            Spacer()
            Divider()
            
            DisclosureGroup("Source Code") {
                Text(#"""
                    struct ColorPickerView: View {
                        @State private var selectedColor = Color.red
                        var body: some View {
                            ColorPicker("ColorPicker", selection: $selectedColor)
                                .frame(width: 150)
                        }
                    }
                    """#)
            }.padding()
        }.navigationBarTitle(Text("ColorPicker"))
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
