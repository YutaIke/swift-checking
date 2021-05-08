//
//  Button.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct ButtonView: View {
    @State var number = 0

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("\(number)")
                    .padding()
                Button(action: {
                        number = number + 1
                }) {
                    Text("DefaultButtonStyle")
                }.buttonStyle(DefaultButtonStyle())

                Button(action: {
                        number = number + 1
                }) {
                    Text("PlainButtonStyle")
                }.buttonStyle(PlainButtonStyle())

                Button(action: {
                        number = number + 1
                }) {
                    Text("BorderlessButtonStyle")
                }.buttonStyle(BorderlessButtonStyle())
                
                Spacer()
                Divider()
                
                DisclosureGroup("Source Code") {
                    Text(#"""
                        struct ButtonView: View {
                            @State var number = 0

                            var body: some View {
                                VStack {
                                    Text("\(number)")
                                        .padding()
                                    Button(action: {
                                            number = number + 1
                                    }) {
                                        Text("DefaultButtonStyle")
                                    }.buttonStyle(DefaultButtonStyle())

                                    Button(action: {
                                            number = number + 1
                                    }) {
                                        Text("PlainButtonStyle")
                                    }.buttonStyle(PlainButtonStyle())

                                    Button(action: {
                                            number = number + 1
                                    }) {
                                        Text("BorderlessButtonStyle")
                                    }.buttonStyle(BorderlessButtonStyle())
                                }
                            }
                        }
                        """#)
                }.padding()

            }.navigationBarTitle(Text("Button"))
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
