//
//  StepperView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct StepperView: View {
    @State private var value1 = 0
    @State private var value2 = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                           .green, .purple, .pink]

    func incrementStep() {
        value1 += 1
        if value1 >= colors.count { value1 = 0 }
    }

    func decrementStep() {
        value1 -= 1
        if value1 < 0 { value1 = colors.count - 1 }
    }

    var body: some View {
        VStack {
            Spacer()
            Stepper(onIncrement: incrementStep,
                onDecrement: decrementStep) {
                Text("Value: \(value1) Color: \(colors[value1].description)")
            }
            .padding(10)
            .background(colors[value1])
            
            Stepper(value: $value2,
                    in: 1...50,
                    step: 5) {
                Text("Current: \(value2) in 1...50 stepping by 5")
            }.padding(10)
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var value1 = 0
                    @State private var value2 = 0
                    let colors: [Color] = [.orange, .red, .gray, .blue,
                                           .green, .purple, .pink]

                    func incrementStep() {
                        value1 += 1
                        if value1 >= colors.count { value1 = 0 }
                    }

                    func decrementStep() {
                        value1 -= 1
                        if value1 < 0 { value1 = colors.count - 1 }
                    }

                    var body: some View {
                        VStack {
                            Stepper(onIncrement: incrementStep,
                                onDecrement: decrementStep) {
                                Text("Value: \(value1) Color: \(colors[value1].description)")
                            }
                            .padding(10)
                            .background(colors[value1])
                            
                            Stepper(value: $value2,
                                    in: 1...50,
                                    step: 5) {
                                Text("Current: \(value2) in 1...50 stepping by 5")
                            }.padding(10)
                        }
                    }
               """#)
                
            }.padding()
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
