//
//  ViewList.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct SwiftUIView: Identifiable {
    let name: String
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
                        SwiftUIView(name: "Button"),
                        SwiftUIView(name: "ColorPicker"),
                        SwiftUIView(name: "DatePicker"),
                        SwiftUIView(name: "DatePicker2"),
                        SwiftUIView(name: "DisclosureGroup"),
                        SwiftUIView(name: "EditButton"),
                        SwiftUIView(name: "Form"),
                        SwiftUIView(name: "GroupBox"),
                        SwiftUIView(name: "Label"),
                        SwiftUIView(name: "Link"),
                        SwiftUIView(name: "NavigationView/NavigationLink"),
                       ]
    )
]

struct ViewList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(swiftUIViewSections) { section in
                    Section(header: Text(section.name), content: {
                        ForEach(section.views) { swiftUIView in
                            switch swiftUIView.name {
                            case "Button":
                                NavigationLink(destination: ButtonView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "ColorPicker":
                                NavigationLink(destination: ColorPickerView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "DatePicker":
                                NavigationLink(destination: DatePickerView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "DatePicker2":
                                NavigationLink(destination: DatePickerView2()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "DisclosureGroup":
                                NavigationLink(destination: DisclosureGroupView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "EditButton":
                                NavigationLink(destination: EditButtonView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "Form":
                                NavigationLink(destination: FormView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "GroupBox":
                                NavigationLink(destination: GroupBoxView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "Label":
                                NavigationLink(destination: LabelView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "Link":
                                NavigationLink(destination: LinkView()) {
                                    Text("\(swiftUIView.name)")
                                }
                            case "NavigationView/NavigationLink":
                                NavigationLink(destination: Navigation()) {
                                    Text("\(swiftUIView.name)")
                                }
                            default:
                                NavigationLink(destination: DisclosureGroupView()) {
                                    Text("\(swiftUIView.name)")
                                }
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
