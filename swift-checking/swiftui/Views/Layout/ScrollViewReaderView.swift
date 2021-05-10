//
//  ScrollViewReaderView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct ScrollViewReaderView: View {
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView {
                    Button("proxy.scrollTo(30, anchor: .top)") {
                        withAnimation {
                            proxy.scrollTo(30, anchor: .top)
                        }
                    }.id(0)

                    Button("proxy.scrollTo(30, anchor: .center)") {
                        withAnimation {
                            proxy.scrollTo(30, anchor: .center)
                        }
                    }.id(0)

                    Button("proxy.scrollTo(30, anchor: .bottom)") {
                        withAnimation {
                            proxy.scrollTo(30, anchor: .bottom)
                        }
                    }.id(0)

                    ForEach(1..<51) { index in
                        Image(systemName: "\(index).square")
                            .font(.largeTitle)
                            .frame(height: 70)
                            .id(index)
                    }
                    
                    Button("Top") {
                        withAnimation {
                            proxy.scrollTo(0)
                        }
                    }
                }
            }
            
            Spacer(minLength: 50)
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    ScrollViewReader { proxy in
                        ScrollView {
                            Button("proxy.scrollTo(30, anchor: .top)") {
                                withAnimation {
                                    proxy.scrollTo(30, anchor: .top)
                                }
                            }.id(0)

                            Button("proxy.scrollTo(30, anchor: .center)") {
                                withAnimation {
                                    proxy.scrollTo(30, anchor: .center)
                                }
                            }.id(0)

                            Button("proxy.scrollTo(30, anchor: .bottom)") {
                                withAnimation {
                                    proxy.scrollTo(30, anchor: .bottom)
                                }
                            }.id(0)
                        
                            ForEach(1..<51) { index in
                                Image(systemName: "\(index).square")
                                    .font(.largeTitle)
                                    .frame(height: 70)
                                    .id(index)
                            }
                            
                            Button("Top") {
                                withAnimation {
                                    proxy.scrollTo(0)
                                }
                            }
                        }
                    }
                    """#)
                
            }.padding()
        }    }
}

struct ScrollViewReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderView()
    }
}
