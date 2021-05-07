//
//  GroupBoxView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct GroupBoxView: View {
    var body: some View {
        VStack {
            Spacer()
            
            GroupBox(
                label: Label("Heart Rate", systemImage: "heart.fill")
                    .foregroundColor(.red)
            ) {
                Text("Your hear rate is 90 BPM.")
            }.padding()
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    var body: some View {
                        GroupBox(
                            label: Label("Heart Rate", systemImage: "heart.fill")
                                .foregroundColor(.red)
                        ) {
                            Text("Your hear rate is 90 BPM.")
                        }.padding()
                    }
                    """#)
            }
        }.navigationBarTitle(Text("GroupBox"))
    }
}

struct GroupBoxView_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxView()
    }
}
