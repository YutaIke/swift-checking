//
//  Scroll.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                Text(".horizontal test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test")
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                Text(".horizontal showIndicators: false test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test")
            }.padding()

            ScrollView {
                ScrollViewReader { value in
                    // 1
                    Button("Jump to 30") {
                        withAnimation {
                            value.scrollTo(30, anchor: .top)
                        }
                    }
                    // 2
                    ForEach(1..<51) { index in
                        Image(systemName: "\(index).square")
                            .font(.largeTitle)
                            .frame(height: 70)
                            .id(index)
                    }
                }
            }
            
            Spacer(minLength: 50)
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    VStack {
                        ScrollView(.horizontal) {
                            Text(".horizontal test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test")
                        }.padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            Text(".horizontal showIndicators: false test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test")
                        }.padding()

                        ScrollView {
                            ScrollViewReader { value in
                                // 1
                                Button("Jump to 30") {
                                    withAnimation {
                                        value.scrollTo(30, anchor: .top)
                                    }
                                }
                                // 2
                                ForEach(1..<51) { index in
                                    Image(systemName: "\(index).square")
                                        .font(.largeTitle)
                                        .frame(height: 70)
                                        .id(index)
                                }
                            }
                        }
                    }
                    """#)
                
            }
        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
