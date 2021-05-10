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
                        SwiftUIView(name: "Color Picker", view: AnyView(ColorPickerView())),
                        SwiftUIView(name: "Date Picker", view: AnyView(DatePickerView())),
                        SwiftUIView(name: "Date Picker2", view: AnyView(DatePickerView2())),
                        SwiftUIView(name: "Disclosure Group",view: AnyView(DisclosureGroupView())),
                        SwiftUIView(name: "Edit Button", view: AnyView(EditButtonView())),
                        SwiftUIView(name: "Form", view: AnyView(FormView())),
                        SwiftUIView(name: "Group Box", view: AnyView(GroupBoxView())),
                        SwiftUIView(name: "Label", view: AnyView(LabelView())),
                        SwiftUIView(name: "Link", view: AnyView(LinkView())),
                        SwiftUIView(name: "Navigation View / Navigation Link", view: AnyView(Navigation())),
                        SwiftUIView(name: "Outline Group", view:  AnyView(OutlineGroupView())),
                        SwiftUIView(name: "Picker", view:  AnyView(PickerView())),
                        SwiftUIView(name: "Picker2", view:  AnyView(PickerView2())),
                        SwiftUIView(name: "Progress View", view:  AnyView(Progress())),
                        SwiftUIView(name: "Scroll View", view:  AnyView(Scroll())),
                        SwiftUIView(name: "Section", view:  AnyView(SectionView())),
                        SwiftUIView(name: "Secure Field / Text Field", view:  AnyView(SecureFieldView())),
                        SwiftUIView(name: "Slider", view:  AnyView(SliderView())),
                        SwiftUIView(name: "Stepper", view:  AnyView(StepperView())),
                        SwiftUIView(name: "Tab View", view:  AnyView(Tab())),
                        SwiftUIView(name: "Text", view:  AnyView(TextView())),
                        SwiftUIView(name: "Text Editor", view:  AnyView(TextEditorView())),
                        SwiftUIView(name: "Toggle", view:  AnyView(ToggleView())),
                       ]
                    ),
    SwiftUIViewSection(name: "Layout",
                       views: [
                        SwiftUIView(name: "Depth Stack", view: AnyView(ZStackView())),
                        SwiftUIView(name: "Geometry Reader", view: AnyView(GeometryReaderView())),
                        SwiftUIView(name: "Horizontal Stack", view: AnyView(HStackView())),
                        SwiftUIView(name: "Lazy Horizontal Grid", view: AnyView(LazyHGridView())),
                        SwiftUIView(name: "Lazy Horizontal Stack", view: AnyView(LazyHStackView())),
                        SwiftUIView(name: "Lazy Vertical Grid", view: AnyView(LazyVGridView())),
                        SwiftUIView(name: "Lazy Vertical Stack", view: AnyView(LazyVStackView())),
                        SwiftUIView(name: "Scroll View Reader", view: AnyView(ScrollViewReaderView())),
                        SwiftUIView(name: "Vertical Stack", view: AnyView(VStackView())),
                       ]),
    SwiftUIViewSection(name: "Other",
                       views: [
                        SwiftUIView(name: "Image", view: AnyView(ImageView())),
                        SwiftUIView(name: "Rectangle", view: AnyView(RectangleView())),
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
