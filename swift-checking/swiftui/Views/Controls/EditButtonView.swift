//
//  EditButtonView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct EditButtonView: View {
    @State private var editMode = EditMode.inactive
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]

    var body: some View {
        VStack {
            NavigationView{
                List {
                    ForEach(
                        fruits,
                        id: \.self
                    ) { fruit in
                        Text(fruit)
                    }
                    .onDelete { self.fruits.remove(atOffsets: $0) }
                    .onMove { self.fruits.move(fromOffsets: $0, toOffset: $1) }
                }
                .navigationTitle("Fruits")
                .toolbar { EditButton() }
                .environment(\.editMode, $editMode)
            }
            Text(String(describing: "editMode: \(editMode)"))
                        
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var editMode = EditMode.inactive
                    @State private var fruits = [
                        "Apple",
                        "Banana",
                        "Papaya",
                        "Mango"
                    ]

                    var body: some View {
                        ScrollView(.vertical) {
                            VStack {
                                NavigationView{
                                    List {
                                        ForEach(
                                            fruits,
                                            id: \.self
                                        ) { fruit in
                                            Text(fruit)
                                        }
                                        .onDelete { self.fruits.remove(atOffsets: $0) }
                                        .onMove { self.fruits.move(fromOffsets: $0, toOffset: $1) }
                                    }
                                    .navigationTitle("Fruits")
                                    .toolbar { EditButton() }
                                    .environment(\.editMode, $editMode)
                                }
                                Text(String(describing: "editMode: \(editMode)"))
                            }
                        }
                    }
                    
                    """#)
                
            }.padding()

        }
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
