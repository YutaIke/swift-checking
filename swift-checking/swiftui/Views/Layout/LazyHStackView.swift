//
//  LazyHStackView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct LazyHStackView: View {
    @State private var showedIndex = ""
    @State private var showedIndex2 = ""

    var body: some View {
        VStack {
            Text("HStack")
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 10) {
                    Section(header: Text("header"), footer: Text("footer")) {
                        ForEach(1...20, id: \.self) { count in
                            Image(systemName: "\(count).square")
                                .font(.largeTitle)
                                .frame(height: 70)
                                .onAppear(perform: {
                                    showedIndex += "\(count) "
                                })
                        }
                    }
                }
            }
            Text("showedIndex: \(showedIndex)")
                .padding(.bottom, 50)

            Text("LazyHStack ")
            ScrollView(.horizontal) {
                LazyHStack(alignment: .center, spacing: 10) {
                    Section(header: Text("header"), footer: Text("footer")) {
                        ForEach(1...20, id: \.self) { count in
                            Image(systemName: "\(count).square")
                                .font(.largeTitle)
                                .frame(height: 70)
                                .onAppear(perform: {
                                    showedIndex2 += "\(count) "
                                })
                        }
                    }
                }.frame(height: 70)
            }
            Text("showedIndex: \(showedIndex2)")
                .padding(.bottom, 50)

            Text("LazyHStack pinnedViews: .sectionHeaders")
            ScrollView(.horizontal) {
                LazyHStack(alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                    Section(header: Text("header"), footer: Text("footer")) {
                        ForEach(1...20, id: \.self) { count in
                            Image(systemName: "\(count).square")
                                .font(.largeTitle)
                                .frame(height: 70)
                        }
                    }
                }.frame(height: 70)
            }

            Group {
                Spacer(minLength: 100)
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        VStack {
                            Text("HStack")
                            ScrollView(.horizontal) {
                                HStack(alignment: .center, spacing: 10) {
                                    Section(header: Text("header"), footer: Text("footer")) {
                                        ForEach(1...20, id: \.self) { count in
                                            Image(systemName: "\(count).square")
                                                .font(.largeTitle)
                                                .frame(height: 70)
                                                .onAppear(perform: {
                                                    showedIndex += "\(count) "
                                                })
                                        }
                                    }
                                }
                            }
                            Text("showedIndex: \(showedIndex)")
                                .padding(.bottom, 50)

                            Text("LazyHStack ")
                            ScrollView(.horizontal) {
                                LazyHStack(alignment: .center, spacing: 10) {
                                    Section(header: Text("header"), footer: Text("footer")) {
                                        ForEach(1...20, id: \.self) { count in
                                            Image(systemName: "\(count).square")
                                                .font(.largeTitle)
                                                .frame(height: 70)
                                                .onAppear(perform: {
                                                    showedIndex2 += "\(count) "
                                                })
                                        }
                                    }
                                }.frame(height: 70)
                            }
                            Text("showedIndex: \(showedIndex2)")
                                .padding(.bottom, 50)

                            Text("LazyHStack pinnedViews: .sectionHeaders")
                            ScrollView(.horizontal) {
                                LazyHStack(alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                                    Section(header: Text("header"), footer: Text("footer")) {
                                        ForEach(1...20, id: \.self) { count in
                                            Image(systemName: "\(count).square")
                                                .font(.largeTitle)
                                                .frame(height: 70)
                                        }
                                    }
                                }.frame(height: 70)
                            }
                        }
                        """#)
                    
                }.padding()
            }
        }
    }
}

struct LazyHStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackView()
    }
}
