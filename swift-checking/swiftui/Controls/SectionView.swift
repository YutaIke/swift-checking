//
//  SectionView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct SectionView: View {
    @State private var selectedValue = "C++"
    var body: some View {
        VStack {
            List {
                Section(header: Text("header 果物"), footer: Text("footer 果物")) {
                    Text("桃")
                    Text("りんご")
                    Text("みかん")
                }
                Section(header: Text("header 野菜"), footer: Text("footer 野菜")) {
                    Text("きゅうり")
                    Text("トマト")
                    Text("なす")
                }
            }.frame(height:450)
            Form {
                Section(header: Text("header プログラミング言語"), footer: Text("footer プログラミング言語")) {
                    Picker("プログラミング言語", selection: $selectedValue) {
                        Text("C++").tag("C++")
                        Text("Kotlin").tag("Kotlin")
                        Text("Swift").tag("Swift")
                    }
                }
            }
            
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var selectedValue = "C++"
                    var body: some View {
                        VStack {
                            List {
                                Section(header: Text("header 果物"), footer: Text("footer 果物")) {
                                    Text("桃")
                                    Text("りんご")
                                    Text("みかん")
                                }
                                Section(header: Text("header 野菜"), footer: Text("footer 野菜")) {
                                    Text("きゅうり")
                                    Text("トマト")
                                    Text("なす")
                                }
                            }.frame(height:450)
                            Form {
                                Section(header: Text("header プログラミング言語"), footer: Text("footer プログラミング言語")) {
                                    Picker("プログラミング言語", selection: $selectedValue) {
                                        Text("C++").tag("C++")
                                        Text("Kotlin").tag("Kotlin")
                                        Text("Swift").tag("Swift")
                                    }
                                }
                            }
                        }
                    """#)
                
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
