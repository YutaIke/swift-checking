//
//  DatePickerView2.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct DatePickerView2: View {
    @State private var date = Date()

    var body: some View {
        ScrollView(.vertical){
            VStack {
                DatePicker(selection: $date) {
                    Text("CompactDatePickerStyle")
                }.datePickerStyle(CompactDatePickerStyle())
                
                DatePicker(selection: $date) {
                    Text("GraphicalDatePickerStyle")
                }.datePickerStyle(GraphicalDatePickerStyle())

                DatePicker(selection: $date) {
                    Text("WheelDatePickerStyle")
                }.datePickerStyle(WheelDatePickerStyle())

                DatePicker(selection: $date) {
                    Text("DefaultDatePickerStyle")
                }.datePickerStyle(DefaultDatePickerStyle())
                
                Spacer()
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        DatePicker(selection: $date) {
                            Text("CompactDatePickerStyle")
                        }.datePickerStyle(CompactDatePickerStyle())
                        
                        DatePicker(selection: $date) {
                            Text("GraphicalDatePickerStyle")
                        }.datePickerStyle(GraphicalDatePickerStyle())

                        DatePicker(selection: $date) {
                            Text("WheelDatePickerStyle")
                        }.datePickerStyle(WheelDatePickerStyle())

                        DatePicker(selection: $date) {
                            Text("DefaultDatePickerStyle")
                        }.datePickerStyle(DefaultDatePickerStyle())
                        """#)
                }
            }.padding()
            .navigationBarTitle(Text("DatePicker2"))
        }
    }
}

struct DatePickerView2_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView2()
    }
}
