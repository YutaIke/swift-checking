//
//  Navigation.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct Navigation: View {
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
                }
            }.navigationViewStyle(StackNavigationViewStyle())
            
            NavigationView {
                List {
                    NavigationLink(destination: ButtonView()) {
                        Text("Button Page")
                    }
                    NavigationLink(destination: ColorPickerView()) {
                        Text("ColorPicker Page")
                    }
                }
            }.navigationViewStyle(DoubleColumnNavigationViewStyle())
        
            DisclosureGroup("Source Code") {
                Text(#"""
                    VStack {
                        NavigationView {
                            List {
                                NavigationLink(destination: ButtonView()) {
                                    Text("Button Page")
                                }
                                NavigationLink(destination: ColorPickerView()) {
                                    Text("ColorPicker Page")
                                }
                            }
                        }.navigationViewStyle(StackNavigationViewStyle())
                        
                        NavigationView {
                            List {
                                NavigationLink(destination: ButtonView()) {
                                    Text("Button Page")
                                }
                                NavigationLink(destination: ColorPickerView()) {
                                    Text("ColorPicker Page")
                                }
                            }
                        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
                    }
                    """#)
                
            }.padding()

        }.navigationBarTitle(Text("Navigation"))
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
