//
//  ContentView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            ViewList().tabItem {
                Image(systemName: "dot.square")
                Text("Views")
            }.tag(1)
            Text("Tab Content 2").tabItem {
                Image(systemName: "slider.horizontal.3")
                Text("Modifier")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
