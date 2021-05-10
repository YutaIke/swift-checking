//
//  LazyVStackView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct LazyVStackView: View {
    @State private var showedIndex = ""
    @State private var showedIndex2 = ""

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("VStack")
                ScrollView(.vertical) {
                    VStack(alignment: .center, spacing: 10) {
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
                }.frame(height: 200)
                Text("showedIndex: \(showedIndex)")
                    .padding(.bottom, 50)

                Text("LazyVStack ")
                ScrollView(.vertical) {
                    LazyVStack(alignment: .center, spacing: 10) {
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
                    }
                }.frame(height: 200)
                Text("showedIndex: \(showedIndex2)")
                    .padding(.bottom, 50)

                Text("LazyVStack pinnedViews: .sectionHeaders")
                    
                    
                ScrollView(.vertical) {
                    LazyVStack(alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                        Section(header: Text("header"), footer: Text("footer")) {
                            ForEach(1...20, id: \.self) { count in
                                Image(systemName: "\(count).square")
                                    .font(.largeTitle)
                                    .frame(height: 70)
                            }
                        }
                    }
                }.frame(height: 200)
                
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        ScrollView(.vertical) {
                            VStack {
                                Text("VStack")
                                ScrollView(.vertical) {
                                    VStack(alignment: .center, spacing: 10) {
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
                                }.frame(height: 200)
                                Text("showedIndex: \(showedIndex)")
                                    .padding(.bottom, 50)

                                Text("LazyVStack ")
                                ScrollView(.vertical) {
                                    LazyVStack(alignment: .center, spacing: 10) {
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
                                    }
                                }.frame(height: 200)
                                Text("showedIndex: \(showedIndex2)")
                                    .padding(.bottom, 50)

                                Text("LazyVStack pinnedViews: .sectionHeaders")
                                ScrollView(.vertical) {
                                    LazyVStack(alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                                        Section(header: Text("header"), footer: Text("footer")) {
                                            ForEach(1...20, id: \.self) { count in
                                                Image(systemName: "\(count).square")
                                                    .font(.largeTitle)
                                                    .frame(height: 70)
                                            }
                                        }
                                    }
                                }.frame(height: 200)
                        """#)
                    
                }.padding()
            }
        }
    }
}

struct LazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackView()
    }
}
