//
//  PickerView2.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct PickerView2: View {
    @State private var selectedFlavor1 = Flavor.chocolate
    @State private var selectedFlavor2 = Flavor.chocolate
    @State private var selectedFlavor3 = Flavor.chocolate
    @State private var selectedFlavor4 = Flavor.chocolate

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Picker(selection: $selectedFlavor1, label: Text("Flavor: MenuPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(MenuPickerStyle())
                Text("Selected flavor: \(selectedFlavor1.rawValue)")
                
                Picker(selection: $selectedFlavor2, label: Text("Flavor: WheelPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(WheelPickerStyle())
                Text("WheelPickerStyle Selected flavor: \(selectedFlavor2.rawValue)")

                Picker(selection: $selectedFlavor3, label: Text("Flavor: WheelPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(InlinePickerStyle())
                Text("InlinePickerStyle Selected flavor: \(selectedFlavor3.rawValue)")

                Spacer(minLength: 50)
                Picker(selection: $selectedFlavor4, label: Text("Flavor: SegmentedPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(SegmentedPickerStyle())
                Text("SegmentedPickerStyle Selected flavor: \(selectedFlavor4.rawValue)")

                Group {
                    Spacer(minLength: 50)
                    DisclosureGroup("Source Code") {
                        Text(#"""
                            @State private var selectedFlavor1 = Flavor.chocolate
                            @State private var selectedFlavor2 = Flavor.chocolate
                            @State private var selectedFlavor3 = Flavor.chocolate
                            @State private var selectedFlavor4 = Flavor.chocolate

                            var body: some View {
                                ScrollView(.vertical) {
                                    VStack {
                                        Picker(selection: $selectedFlavor1, label: Text("Flavor: MenuPickerStyle")) {
                                            Text("Chocolate").tag(Flavor.chocolate)
                                            Text("Vanilla").tag(Flavor.vanilla)
                                            Text("Strawberry").tag(Flavor.strawberry)
                                        }.pickerStyle(MenuPickerStyle())
                                        Text("Selected flavor: \(selectedFlavor1.rawValue)")
                                        
                                        Picker(selection: $selectedFlavor2, label: Text("Flavor: WheelPickerStyle")) {
                                            Text("Chocolate").tag(Flavor.chocolate)
                                            Text("Vanilla").tag(Flavor.vanilla)
                                            Text("Strawberry").tag(Flavor.strawberry)
                                        }.pickerStyle(WheelPickerStyle())
                                        Text("WheelPickerStyle Selected flavor: \(selectedFlavor2.rawValue)")

                                        Picker(selection: $selectedFlavor3, label: Text("Flavor: WheelPickerStyle")) {
                                            Text("Chocolate").tag(Flavor.chocolate)
                                            Text("Vanilla").tag(Flavor.vanilla)
                                            Text("Strawberry").tag(Flavor.strawberry)
                                        }.pickerStyle(InlinePickerStyle())
                                        Text("InlinePickerStyle Selected flavor: \(selectedFlavor3.rawValue)")

                                        Spacer(minLength: 50)
                                        Picker(selection: $selectedFlavor4, label: Text("Flavor: SegmentedPickerStyle")) {
                                            Text("Chocolate").tag(Flavor.chocolate)
                                            Text("Vanilla").tag(Flavor.vanilla)
                                            Text("Strawberry").tag(Flavor.strawberry)
                                        }.pickerStyle(SegmentedPickerStyle())
                                        Text("SegmentedPickerStyle Selected flavor: \(selectedFlavor4.rawValue)")
                            """#)
                        
                    }.padding()
                }
            }
        }
    }
}

struct PickerView2_Previews: PreviewProvider {
    static var previews: some View {
        PickerView2()
    }
}
