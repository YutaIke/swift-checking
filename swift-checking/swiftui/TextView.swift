//
//  Text.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hamlet")
                .font(.title)
                .padding()
            
            Text("by William Shakespeare")
                .font(.system(size: 12, weight: .light, design: .serif))
                .italic()
                .padding()

            Text("Brevity is the soul of wit.")
                .frame(width: 100)
                .lineLimit(1)
                .padding()
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    VStack {
                        Text("Hamlet")
                            .font(.title)
                            .padding()
                        
                        Text("by William Shakespeare")
                            .font(.system(size: 12, weight: .light, design: .serif))
                            .italic()
                            .padding()

                        Text("Brevity is the soul of wit.")
                            .frame(width: 100)
                            .lineLimit(1)
                            .padding()
                    }
                    """#)
                
            }
        }
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
