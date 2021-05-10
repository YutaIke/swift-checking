//
//  ZStackView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct ZStackView: View {
    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Group {
                    Text("ZStack")
                    ZStack {
                        ForEach(0..<colors.count) {
                            Rectangle()
                                .fill(colors[$0])
                                .frame(width: 100, height: 100)
                                .offset(x: CGFloat($0) * 10.0,
                                        y: CGFloat($0) * 10.0)
                        }
                    }.padding(.bottom, 70)
                }
                Group {
                    Text("ZStack(alignment: .center)")
                    ZStack(alignment: .center) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }
                Group {
                    Text("ZStack(alignment: .bottomLeading)")
                    ZStack(alignment: .bottomLeading) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }
                Group {
                    Text("ZStack(alignment: .bottomTrailing)")
                    ZStack(alignment: .bottomTrailing) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }
                Group {
                    Text("ZStack(alignment: .topLeading)")
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }
                Group {
                    Text("ZStack(alignment: .topTrailing)")
                    ZStack(alignment: .topTrailing) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }
                Group {
                    Text("ZStack(alignment: .top)")
                    ZStack(alignment: .top) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }
                Group {
                    Text("ZStack(alignment: .leading)")
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }
                Group {
                    Text("ZStack(alignment: .trailing)")
                    ZStack(alignment: .trailing) {
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width:50, height: 100)
                    }
                    .border(Color.green, width: 1)
                }

                Group {
                    Divider()
                    DisclosureGroup("Source Code") {
                        Text(#"""
                            """#)
                    }
                }
            }
        }

    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
