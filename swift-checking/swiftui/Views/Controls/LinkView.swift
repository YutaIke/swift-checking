//
//  LinkView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Link(destination: URL(string: "https://www.google.com/?hl=ja")!) {
                Text("googleを開く")
            }.padding()
            .font(.title)
            .foregroundColor(.green)
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    var body: some View {
                        Link(destination: URL(string: "https://www.google.com/?hl=ja")!) {
                            Text("googleを開く")
                        }.padding()
                        .font(.title)
                        .foregroundColor(.green)
                    }
                    """#)
                
            }.padding()

        }.navigationBarTitle(Text("Link"))
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
