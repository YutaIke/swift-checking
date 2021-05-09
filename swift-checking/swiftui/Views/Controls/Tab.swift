//
//  Tab.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct Tab: View {
    @State private var selection = 1
    var body: some View {
        VStack {
            Text("selection: \(selection)")

            TabView(selection: $selection) {
                Text("The First Tab")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("First")
                    }
                    .tag(1)
                Text("Another Tab")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Second")
                    }
                    .tag(2)
                Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("Third")
                    }
                    .tag(3)
            }
            .font(.headline)
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var selection = 1
                    var body: some View {
                        VStack {
                            Text("selection: \(selection)")
                            TabView(selection: $selection) {
                                Text("The First Tab")
                                    .tabItem {
                                        Image(systemName: "1.square.fill")
                                        Text("First")
                                    }
                                    .tag(1)
                                Text("Another Tab")
                                    .tabItem {
                                        Image(systemName: "2.square.fill")
                                        Text("Second")
                                    }
                                    .tag(2)
                                Text("The Last Tab")
                                    .tabItem {
                                        Image(systemName: "3.square.fill")
                                        Text("Third")
                                    }
                                    .tag(3)
                            }
                            .font(.headline)
                    """#)
                
            }.padding()
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
