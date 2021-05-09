//
//  ModifierList.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct SwiftUIModifier: Identifiable {
    let name: String
    let view: AnyView
    let id = UUID()
}

struct SwiftUIModifierSection: Identifiable {
    let name: String
    let views: [SwiftUIModifier]
    let id = UUID()
}

private let swiftUIViewSections: [SwiftUIModifierSection] = [
    SwiftUIModifierSection(name: "Effects",
                       views: [
                        SwiftUIModifier(name: "ForegroundColor", view: AnyView(ForegroundColorModifierView())),
                        ]),

    SwiftUIModifierSection(name: "Text",
                       views: [
                        SwiftUIModifier(name: "FixedSize", view: AnyView(FixedSizeModifierView())),
                        SwiftUIModifier(name: "Font", view: AnyView(FontModifier())),
                        SwiftUIModifier(name: "FontWeight", view: AnyView(FontWeightModifierView())),
                        SwiftUIModifier(name: "Kerning", view: AnyView(KerningModifierView())),
                        SwiftUIModifier(name: "LineLimit", view: AnyView(LineLimitModifier())),
                        SwiftUIModifier(name: "TruncationMode", view: AnyView(TruncationModeModifierView())),
                        SwiftUIModifier(name: "Underline", view: AnyView(UnderlineModifierView())),
                       ])
    ]


struct ModifierList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(swiftUIViewSections) { section in
                    Section(header: Text(section.name), content: {
                        ForEach(section.views) { swiftUIView in
                            NavigationLink(destination: swiftUIView.view) {
                                Text("\(swiftUIView.name)")
                            }
                        }
                    })
                }
            }.navigationTitle(Text("Views"))
        }
    }
}

struct ModifierList_Previews: PreviewProvider {
    static var previews: some View {
        ModifierList()
    }
}
