//
//  EditButtonView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct EditButtonView: View {
    @Environment(\.editMode) var editMode
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
                }
                Text(String(describing: editMode?.wrappedValue))
                            
                Divider()
                Text(#"""
                    @State private var fruits = [
                        "Apple",
                        "Banana",
                        "Papaya",
                        "Mango"
                    ]

                    var body: some View {
                        NavigationView{
                            List {
                                ForEach(
                                    fruits,
                                    id: \.self
                                ) { fruit in
                                    Text(fruit)
                                }
                                .onDelete { self.deleteFruit(at :$0) }
                                .onMove { self.moveFruit(from: $0, to: $1) }
                            }
                            .navigationTitle("Fruits")
                            .toolbar { EditButton() }
                        }
                        switch editMode?.wrappedValue {
                        case .active:
                            Text("EditMode: .active")
                        case .inactive:
                            Text("EditMode: .inactive")
                        case .transient:
                            Text("EditMode: .transient")
                        case .none:
                            Text("EditMode: .none")
                        default:
                            Text("EditMode: ")
                        }
                    }
                    """#)
            }
        }
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
