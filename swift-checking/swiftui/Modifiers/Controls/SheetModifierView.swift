//
//  SheetModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct SheetModifierView: View {
    @State private var isShowingSheet = false
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                isShowingSheet.toggle()
            }) {
                Text("Show License Agreement")
            }
            .sheet(isPresented: $isShowingSheet,
                   onDismiss: didDismiss) {
                VStack {
                    Text("License Agreement")
                        .font(.title)
                        .padding(50)
                    Text("""
                            Terms and conditions go here.
                        """)
                        .padding(50)
                    Button("Dismiss",
                           action: { isShowingSheet.toggle() })
                }
            }
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var isShowingSheet = false
                     var body: some View {
                        Button(action: {
                            isShowingSheet.toggle()
                        }) {
                            Text("Show License Agreement")
                        }
                        .sheet(isPresented: $isShowingSheet,
                               onDismiss: didDismiss) {
                            VStack {
                                Text("License Agreement")
                                    .font(.title)
                                    .padding(50)
                                Text("""
                                        Terms and conditions go here.
                                    """)
                                    .padding(50)
                                Button("Dismiss",
                                       action: { isShowingSheet.toggle() })
                            }
                    }
                    
                    func didDismiss() {
                        // Handle the dismissing action.
                    }
                    """#)
                
            }
        }
    }

    func didDismiss() {
     // Handle the dismissing action.
    }
}

struct SheetModifierView_Previews: PreviewProvider {
    static var previews: some View {
        SheetModifierView()
    }
}
