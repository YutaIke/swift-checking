//
//  HStack.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("default")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                HStack {
                    Text("First")
                        .border(Color.red, width: 2.0)
                    Image(systemName: "2.circle")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .border(Color.green, width: 2.0)
                    Text("Third Third Third Third Third")
                        .border(Color.blue, width: 2.0)
                }
                .frame(width: 400)
                .border(Color.red)

                Text("alignment: .top")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                HStack(alignment: .top) {
                    Text("First")
                        .border(Color.red, width: 2.0)
                    Image(systemName: "2.circle")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .border(Color.green, width: 2.0)
                    Text("Third Third Third Third Third")
                        .border(Color.blue, width: 2.0)
                }
                .frame(width: 400)
                .border(Color.red)

                Text("alignment: .bottom")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                HStack(alignment: .bottom) {
                    Text("First")
                        .border(Color.red, width: 2.0)
                    Image(systemName: "2.circle")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .border(Color.green, width: 2.0)
                    Text("Third Third Third Third Third")
                        .border(Color.blue, width: 2.0)
                }
                .frame(width: 400)
                .border(Color.red)

                Text("spacing: 50")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                HStack(spacing: 50) {
                    Text("First")
                        .border(Color.red, width: 2.0)
                    Image(systemName: "2.circle")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .border(Color.green, width: 2.0)
                    Text("Third Third Third Third Third")
                        .border(Color.blue, width: 2.0)
                }
                .frame(width: 400)
                .border(Color.red)
                
                DisclosureGroup("Source Code") {
                    Text(#"""
                        VStack {
                            Text("default")
                                .frame(maxWidth: 400, alignment: .leading)
                                .padding(.top, 20)
                            HStack {
                                Text("First")
                                    .border(Color.red, width: 2.0)
                                Image(systemName: "2.circle")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .border(Color.green, width: 2.0)
                                Text("Third Third Third Third Third")
                                    .border(Color.blue, width: 2.0)
                            }
                            .frame(width: 400)
                            .border(Color.red)

                            Text("alignment: .top")
                                .frame(maxWidth: 400, alignment: .leading)
                                .padding(.top, 20)
                            HStack(alignment: .top) {
                                Text("First")
                                    .border(Color.red, width: 2.0)
                                Image(systemName: "2.circle")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .border(Color.green, width: 2.0)
                                Text("Third Third Third Third Third")
                                    .border(Color.blue, width: 2.0)
                            }
                            .frame(width: 400)
                            .border(Color.red)

                            Text("alignment: .bottom")
                                .frame(maxWidth: 400, alignment: .leading)
                                .padding(.top, 20)
                            HStack(alignment: .bottom) {
                                Text("First")
                                    .border(Color.red, width: 2.0)
                                Image(systemName: "2.circle")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .border(Color.green, width: 2.0)
                                Text("Third Third Third Third Third")
                                    .border(Color.blue, width: 2.0)
                            }
                            .frame(width: 400)
                            .border(Color.red)

                            Text("spacing: 50")
                                .frame(maxWidth: 400, alignment: .leading)
                                .padding(.top, 20)
                            HStack(spacing: 50) {
                                Text("First")
                                    .border(Color.red, width: 2.0)
                                Image(systemName: "2.circle")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .border(Color.green, width: 2.0)
                                Text("Third Third Third Third Third")
                                    .border(Color.blue, width: 2.0)
                            }
                            .frame(width: 400)
                            .border(Color.red)
                        }
                        """#)
                    
                }.padding()
            }
        }
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}
