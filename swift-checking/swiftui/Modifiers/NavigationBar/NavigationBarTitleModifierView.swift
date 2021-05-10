//
//  NavigationBarTitleModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct NavigationBarTitleModifierView: View {
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink(destination: ButtonView()) {
                        Text("Button Page")
                    }
                    NavigationLink(destination: ColorPickerView()) {
                        Text("ColorPicker Page")
                    }
                }.navigationBarTitle("displayMode: .large", displayMode: .large)
            }

            NavigationView {
                List {
                    NavigationLink(destination: ButtonView()) {
                        Text("Button Page")
                    }
                    NavigationLink(destination: ColorPickerView()) {
                        Text("ColorPicker Page")
                    }
                }.navigationBarTitle("displayMode: .inline", displayMode: .inline)
            }
        }
    }
}

struct NavigationBarTitleModifierView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarTitleModifierView()
    }
}
