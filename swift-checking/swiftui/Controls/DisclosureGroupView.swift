//
//  DisclosureGroupView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct DisclosureGroupView: View {
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true

    var body: some View {
        VStack {
            Spacer()
            DisclosureGroup("Items", isExpanded: $topExpanded) {
                Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
                Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
                DisclosureGroup("Sub-items") {
                    Text("Sub-item 1")
                }
            }.padding()
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    struct ToggleStates {
                        var oneIsOn: Bool = false
                        var twoIsOn: Bool = true
                    }
                    @State private var toggleStates = ToggleStates()
                    @State private var topExpanded: Bool = true

                    var body: some View {
                        DisclosureGroup("Items", isExpanded: $topExpanded) {
                            Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
                            Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
                            DisclosureGroup("Sub-items") {
                                Text("Sub-item 1")
                            }
                        }
                    }

                    """#)
            }
        }.navigationBarTitle(Text("DisclosureGroup"))
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
