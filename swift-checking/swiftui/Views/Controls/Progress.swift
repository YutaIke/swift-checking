//
//  ProgressView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct Progress: View {
    @State private var progress = 0.0
    private let total = 1.0
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ProgressView("DefaultProgressViewStyle", value: progress, total: total)
                    .padding()
                Button("More", action: {
                    if (progress + 0.05) < total {
                        progress += 0.05
                    } else {
                        progress = total
                    }
                })
                
                ProgressView("LinearProgressViewStyle", value: 0.25, total: total)
                    .progressViewStyle(LinearProgressViewStyle())
                    .padding()

                ProgressView("CircularProgressViewStyle", value: 0.75, total: total)
                    .progressViewStyle(CircularProgressViewStyle())
                    .padding()
                
                Spacer(minLength: 50)
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        @State private var progress = 0.0
                        private let total = 1.0
                        
                        var body: some View {
                            VStack {
                                ProgressView("DefaultProgressViewStyle", value: progress, total: total)
                                    .padding()
                                Button("More", action: {
                                    if (progress + 0.05) < total {
                                        progress += 0.05
                                    } else {
                                        progress = total
                                    }
                                })
                                
                                ProgressView("LinearProgressViewStyle", value: 0.25, total: total)
                                    .progressViewStyle(LinearProgressViewStyle())
                                    .padding()

                                ProgressView("CircularProgressViewStyle", value: 0.75, total: total)
                                    .progressViewStyle(CircularProgressViewStyle())
                                    .padding()

                            }
                        }
                        """#)
                    
                }.padding()
            }
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
