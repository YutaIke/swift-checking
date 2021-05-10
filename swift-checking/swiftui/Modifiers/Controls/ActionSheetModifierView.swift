//
//  ActionSheetModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct ActionSheetModifierView: View {
    @State private var showActionSheet = false
    var body: some View {
        VStack {
            Spacer()
            Button("Tap to show action sheet") {
                showActionSheet = true
            }
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Resume Workout Recording"),
                            message: Text("Choose a destination for workout data"),
                            buttons: [
                                .cancel(),
                                .destructive(
                                    Text("Overwrite Current Workout"),
                                    action: { print("*****") }
                                ),
                                .default(
                                    Text("Append to Current Workout"),
                                    action: { print("*****") }
                                )
                            ]
                )
            }
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var showActionSheet = false
                    var body: some View {
                        Button("Tap to show action sheet") {
                            showActionSheet = true
                        }
                        .actionSheet(isPresented: $showActionSheet) {
                            ActionSheet(title: Text("Resume Workout Recording"),
                                        message: Text("Choose a destination for workout data"),
                                        buttons: [
                                            .cancel(),
                                            .destructive(
                                                Text("Overwrite Current Workout"),
                                                action: { print("*****") }
                                            ),
                                            .default(
                                                Text("Append to Current Workout"),
                                                action: { print("*****") }
                                            )
                                        ]
                            )
                        }
                    }
                    """#)
                
            }.padding()

        }
        
    }
}

struct ActionSheetModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetModifierView()
    }
}
