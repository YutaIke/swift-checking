//
//  DatePickerView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        ScrollView(.vertical){
            VStack {
//                Spacer(minLength: 50)
                DatePicker(selection: $date, displayedComponents: [.date]) {
                    Text("displayedComponents .date")
                }.padding()
                DatePicker(selection: $date, displayedComponents: [.hourAndMinute]) {
                    Text("displayedComponents .hourAndMinute")
                }.padding()
                Spacer()
                Divider()
                
                DisclosureGroup("Source Code") {
                    Text(#"""
                        DatePicker(selection: $date, displayedComponents: [.date]) {
                            Text("displayedComponents .date")
                        }.frame(width: 300)
                        
                        DatePicker(selection: $date, displayedComponents: [.hourAndMinute]) {
                            Text("displayedComponents .hourAndMinute")
                        }.frame(width: 300)

                        """#)
                }
                Divider()

                Spacer(minLength: 50)
                DatePicker("range 2021/01/01-2021/12/31 23:59:59", selection: $date, in: dateRange).padding()
                Divider()
                
                DisclosureGroup("Source Code") {
                    Text(#"""
                        let dateRange: ClosedRange<Date> = {
                        let calendar = Calendar.current
                        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
                        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
                            return calendar.date(from:startComponents)!
                                ...
                                calendar.date(from:endComponents)!
                        }()
                        DatePicker("range", selection: $date, in: dateRange)
                            .frame(width: 300)
                        """#)
                }.padding()
            }.navigationBarTitle(Text("DatePicker"))
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
