//
//  VStackView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("default")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                VStack {
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

                Text("alignment: .leading")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                VStack(alignment: .leading) {
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

                Text("alignment: .center")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                VStack(alignment: .center) {
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

                Text("alignment: .trailing")
                    .frame(maxWidth: 400, alignment: .leading)
                    .padding(.top, 20)
                VStack(alignment: .trailing) {
                    Text("First")
                        .border(Color.red, width: 2.0)
                    Image(systemName: "2.circle")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .border(Color.green, width: 2.0)
                    Text("Third Third Third Third Third Third Third")
                        .border(Color.blue, width: 2.0)
                }
                .frame(width: 400)
                .border(Color.red)
                
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        ScrollView(.vertical) {
                            VStack {
                                Text("default")
                                    .frame(maxWidth: 400, alignment: .leading)
                                    .padding(.top, 20)
                                VStack {
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

                                Text("alignment: .leading")
                                    .frame(maxWidth: 400, alignment: .leading)
                                    .padding(.top, 20)
                                VStack(alignment: .leading) {
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

                                Text("alignment: .center")
                                    .frame(maxWidth: 400, alignment: .leading)
                                    .padding(.top, 20)
                                VStack(alignment: .center) {
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

                                Text("alignment: .trailing")
                                    .frame(maxWidth: 400, alignment: .leading)
                                    .padding(.top, 20)
                                VStack(alignment: .trailing) {
                                    Text("First")
                                        .border(Color.red, width: 2.0)
                                    Image(systemName: "2.circle")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                        .border(Color.green, width: 2.0)
                                    Text("Third Third Third Third Third Third Third")
                                        .border(Color.blue, width: 2.0)
                                }
                                .frame(width: 400)
                                .border(Color.red)
                            }
                        }
                        """#)
                    
                }.padding()
            }
        }
    }
}

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
