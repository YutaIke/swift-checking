//
//  ViewList.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct SwiftUIView: Identifiable {
    let name: String
    let view: AnyView
    let id = UUID()
}

struct SwiftUIViewSection: Identifiable {
    let name: String
    let views: [SwiftUIView]
    let id = UUID()
}

private let swiftUIViewSections: [SwiftUIViewSection] = [
    SwiftUIViewSection(name: "Controls",
                       views: [
                        SwiftUIView(name: "Button", view: AnyView(ButtonView())),
                        SwiftUIView(name: "ColorPicker", view: AnyView(ColorPickerView())),
                        SwiftUIView(name: "DatePicker", view: AnyView(DatePickerView())),
                        SwiftUIView(name: "DatePicker2", view: AnyView(DatePickerView2())),
                        SwiftUIView(name: "DisclosureGroup",view: AnyView(DisclosureGroupView())),
                        SwiftUIView(name: "EditButton", view: AnyView(EditButtonView())),
                        SwiftUIView(name: "Form", view: AnyView(FormView())),
                        SwiftUIView(name: "GroupBox", view: AnyView(GroupBoxView())),
                        SwiftUIView(name: "Label", view: AnyView(LabelView())),
                        SwiftUIView(name: "Link", view: AnyView(LinkView())),
                        SwiftUIView(name: "NavigationView/NavigationLink", view: AnyView(Navigation())),
                        SwiftUIView(name: "OutlineGroup", view:  AnyView(OutlineGroupView())),
                        SwiftUIView(name: "Picker", view:  AnyView(PickerView())),
                        SwiftUIView(name: "Picker2", view:  AnyView(PickerView2())),
                        SwiftUIView(name: "ProgressView", view:  AnyView(Progress())),
                        SwiftUIView(name: "ScrollView", view:  AnyView(Scroll())),
                        SwiftUIView(name: "Section", view:  AnyView(SectionView())),
                        SwiftUIView(name: "SecureField/TextField", view:  AnyView(SecureFieldView())),
                        SwiftUIView(name: "Slider", view:  AnyView(SliderView())),
                        SwiftUIView(name: "Stepper", view:  AnyView(StepperView())),
                        SwiftUIView(name: "TabView", view:  AnyView(Tab())),
                        SwiftUIView(name: "Text", view:  AnyView(TextView())),
                        SwiftUIView(name: "TextEditor", view:  AnyView(TextEditorView())),
                        SwiftUIView(name: "Toggle", view:  AnyView(ToggleView())),
                       ]
                    ),
    SwiftUIViewSection(name: "Layout",
                       views: [
                        SwiftUIView(name: "GeometryReader", view: AnyView(GeometryReaderView())),
                        SwiftUIView(name: "HStack", view: AnyView(HStackView())),
                       ]),
]

struct ViewList: View {
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

struct ViewList_Previews: PreviewProvider {
    static var previews: some View {
        ViewList()
    }
}
