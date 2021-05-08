//
//  SliderView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct SliderView: View {
    @State private var speed = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack {
            Spacer()
            Slider(
                value: $speed,
                in: 0...100,
                step: 5,
                onEditingChanged: { editing in
                    isEditing = editing
                },
                minimumValueLabel: Text("0"),
                maximumValueLabel: Text("100")
            ) {
                Text("Speed")
            }
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var speed = 50.0
                    @State private var isEditing = false

                    var body: some View {
                        VStack {
                            Spacer()
                            Slider(
                                value: $speed,
                                in: 0...100,
                                step: 5,
                                onEditingChanged: { editing in
                                    isEditing = editing
                                },
                                minimumValueLabel: Text("0"),
                                maximumValueLabel: Text("100")
                            ) {
                                Text("Speed")
                            }
                            Text("\(speed)")
                                .foregroundColor(isEditing ? .red : .blue)
                        }
                    }
                    """#)
                
            }.padding()            
        }.padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
