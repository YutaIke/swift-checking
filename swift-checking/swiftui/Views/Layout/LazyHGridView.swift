//
//  LazyHGridView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct LazyHGridView: View {
    var rows1: [GridItem] =
        Array(repeating: .init(.fixed(40)), count: 2)
    var rows2: [GridItem] =
        Array(repeating: .init(.fixed(80)), count: 2)
    var rows3: [GridItem] =
        Array(repeating: .init(.fixed(40)), count: 4)
    var rows4: [GridItem] =
        Array(repeating: .init(.flexible(minimum: 40, maximum: 100)), count: 4)
    var rows5: [GridItem] =
        Array(repeating: .init(.adaptive(minimum: 40, maximum: 100)), count: 4)

    var body: some View {
        ScrollView(.vertical){
            VStack {
                Group {
                    Text("Array(repeating: .init(.fixed(40)), count: 2)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows1, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.fixed(80)), count: 2)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows2, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.fixed(40)), count: 4)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows3, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.flexible(minimum: 40, maximum: 100)), count: 4)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows4, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.adaptive(minimum: 40, maximum: 100)), count: 4)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows5, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }

                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        var rows1: [GridItem] =
                            Array(repeating: .init(.fixed(40)), count: 2)
                        var rows2: [GridItem] =
                            Array(repeating: .init(.fixed(80)), count: 2)
                        var rows3: [GridItem] =
                            Array(repeating: .init(.fixed(40)), count: 4)
                        var rows4: [GridItem] =
                            Array(repeating: .init(.flexible(minimum: 40, maximum: 100)), count: 4)
                        var rows5: [GridItem] =
                            Array(repeating: .init(.adaptive(minimum: 40, maximum: 100)), count: 4)

                        var body: some View {
                            ScrollView(.vertical){
                                VStack {
                                    Group {
                                        Text("Array(repeating: .init(.fixed(40)), count: 2)")
                                        ScrollView(.horizontal) {
                                            LazyHGrid(rows: rows1, alignment: .top) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                        .font(.largeTitle)
                                                }
                                            }
                                        }.border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.fixed(80)), count: 2)")
                                        ScrollView(.horizontal) {
                                            LazyHGrid(rows: rows2, alignment: .top) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                        .font(.largeTitle)
                                                }
                                            }
                                        }.border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.fixed(40)), count: 4)")
                                        ScrollView(.horizontal) {
                                            LazyHGrid(rows: rows3, alignment: .top) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                        .font(.largeTitle)
                                                }
                                            }
                                        }.border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.flexible(minimum: 40, maximum: 100)), count: 4)")
                                        ScrollView(.horizontal) {
                                            LazyHGrid(rows: rows4, alignment: .top) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                        .font(.largeTitle)
                                                }
                                            }
                                        }.border(Color.red, width: 2)
                                    }
                                    Group {
                                        Text("Array(repeating: .init(.adaptive(minimum: 40, maximum: 100)), count: 4)")
                                        ScrollView(.horizontal) {
                                            LazyHGrid(rows: rows5, alignment: .top) {
                                                ForEach((0...79), id: \.self) {
                                                    let codepoint = $0 + 0x1f600
                                                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                                                    Text("\(emoji)")
                                                        .font(.largeTitle)
                                                }
                                            }
                                        }.border(Color.red, width: 2)
                                    }
                                }
                            }
                        }
                        """#)
                    
                }.padding()
            }
        }
    }
}

struct LazyHGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridView()
    }
}
