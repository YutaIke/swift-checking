//
//  AlertModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct AlertModifierView: View {
    @State private var isPresented = false
    @State private var isPresented2 = false
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Button("Show Alert", action: {
                isPresented = true
            })
            .alert(isPresented: $isPresented) {
                Alert(title: Text("Order Complete"),
                      message: Text("Thank you for shopping with us."),
                      dismissButton: .default(Text("OK")))
            }

            Button("Show Alert2", action: {
                isPresented2 = true
            })
            .alert(isPresented: $isPresented2) {
                Alert(title: Text("Unable to Save Workout Data"),
                      message: Text("The connection to the server was lost."),
                      primaryButton: .default(
                          Text("Try Again"),
                          action: { print("****") }
                      ),
                      secondaryButton: .destructive(
                          Text("Delete"),
                          action: { print("****") }
                      )
                )
            }
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    Button("Show Alert", action: {
                        isPresented = true
                    })
                    .alert(isPresented: $isPresented) {
                        Alert(title: Text("Order Complete"),
                              message: Text("Thank you for shopping with us."),
                              dismissButton: .default(Text("OK")))
                    }

                    Button("Show Alert2", action: {
                        isPresented2 = true
                    })
                    .alert(isPresented: $isPresented2) {
                        Alert(title: Text("Unable to Save Workout Data"),
                              message: Text("The connection to the server was lost."),
                              primaryButton: .default(
                                  Text("Try Again"),
                                  action: { print("****") }
                              ),
                              secondaryButton: .destructive(
                                  Text("Delete"),
                                  action: { print("****") }
                              )
                        )
                    }
                    """#)
                
            }.padding()
        }
        
        
    }
}

struct AlertModifierView_Previews: PreviewProvider {
    static var previews: some View {
        AlertModifierView()
    }
}
