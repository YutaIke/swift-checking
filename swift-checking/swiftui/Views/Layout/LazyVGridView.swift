//
//  LazyVGridView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct LazyVGridView: View {
    var columns: [GridItem] =
            Array(repeating: .init(.flexible()), count: 2)
    var columns2: [GridItem] =
            Array(repeating: .init(.fixed(80)), count: 2)
    var columns3: [GridItem] =
            Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 2)
    var columns4: [GridItem] =
            Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 4)
    var columns5: [GridItem] =
            Array(repeating: .init(.adaptive(minimum: 80)), count: 2)

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Group {
                    Text("Array(repeating: .init(.flexible()), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.fixed(80)), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns2) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns3) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 4)")
                    ScrollView {
                        LazyVGrid(columns: columns4) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.adaptive(minimum: 80)), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns5) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        var columns: [GridItem] =
                                Array(repeating: .init(.flexible()), count: 2)
                        var columns2: [GridItem] =
                                Array(repeating: .init(.fixed(80)), count: 2)
                        var columns3: [GridItem] =
                                Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 2)
                        var columns4: [GridItem] =
                                Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 4)
                        var columns5: [GridItem] =
                                Array(repeating: .init(.adaptive(minimum: 80)), count: 2)

                        var body: some View {
                            ScrollView(.vertical) {
                                VStack {
                                    Group {
                                        Text("Array(repeating: .init(.flexible()), count: 2)")
                                        ScrollView {
                                            LazyVGrid(columns: columns) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let codepointString = String(format: "%02X", codepoint)
                                                    Text("\(codepointString)")
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                }
                                            }.font(.largeTitle)
                                        }.frame(height: 200)
                                        .border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.fixed(80)), count: 2)")
                                        ScrollView {
                                            LazyVGrid(columns: columns2) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let codepointString = String(format: "%02X", codepoint)
                                                    Text("\(codepointString)")
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                }
                                            }.font(.largeTitle)
                                        }.frame(height: 200)
                                        .border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 2)")
                                        ScrollView {
                                            LazyVGrid(columns: columns3) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let codepointString = String(format: "%02X", codepoint)
                                                    Text("\(codepointString)")
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                }
                                            }.font(.largeTitle)
                                        }.frame(height: 200)
                                        .border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 4)")
                                        ScrollView {
                                            LazyVGrid(columns: columns4) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let codepointString = String(format: "%02X", codepoint)
                                                    Text("\(codepointString)")
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                }
                                            }.font(.largeTitle)
                                        }.frame(height: 200)
                                        .border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.adaptive(minimum: 80)), count: 2)")
                                        ScrollView {
                                            LazyVGrid(columns: columns5) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let codepointString = String(format: "%02X", codepoint)
                                                    Text("\(codepointString)")
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                }
                                            }.font(.largeTitle)
                                        }.frame(height: 200)
                                        .border(Color.red, width: 2)
                                    }
                                }
                            }
                        }
                        """#)
                    
                }

            }
        }
    }
}

struct LazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView()
    }
}
