//
//  FormView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct FormView: View {
    @State var toggleState = false
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Form {
                    Section(header: Text("Text")) {
                        Text("item 1")
                        Text("item 2")
                    }
                    Section(header: Text("Toggle")) {
                        Toggle(isOn: $toggleState) {
                            Text("item 3")
                        }
                    }
                    Section(header: Text("Button")) {
                        Button(action: {}) {
                            Text("item 4")
                        }
                    }
                }.frame(height: 400)
                
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        @State var toggleState = false
                        var body: some View {
                            Form {
                                Section(header: Text("Text")) {
                                    Text("item 1")
                                    Text("item 2")
                                }
                                Section(header: Text("Toggle")) {
                                    Toggle(isOn: $toggleState) {
                                        Text("item 3")
                                    }
                                }
                                Section(header: Text("Button")) {
                                    Button(action: {}) {
                                        Text("item 4")
                                    }
                                }
                            }
                        }
                        """#)
                }                
            }.navigationBarTitle(Text("Form"))
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
