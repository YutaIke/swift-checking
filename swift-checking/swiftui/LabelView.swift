//
//  LabelView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack {
            Label("Label", systemImage: "42.circle")
                .padding()
            Label("Label: TitleOnlyLabelStyle", systemImage: "bolt.fill")
                .padding()
                .labelStyle(TitleOnlyLabelStyle())
            Label("Label: IconOnlyLabelStyle", systemImage: "bolt.fill")
                .padding()
                .labelStyle(IconOnlyLabelStyle())
            Label("Label: TitleAndIconLabelStyle", systemImage: "bolt.fill")
                .padding()
                .labelStyle(TitleAndIconLabelStyle())
            Label {
                Text("bbbb")
                    .font(.body)
                    .foregroundColor(.primary)
                Text("cccc")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } icon: {
                Circle()
                    .fill(Color.red)
                    .frame(width: 44, height: 44, alignment: .center)
                    .overlay(Text("aaa"))
            }
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    var body: some View {
                        VStack {
                            Label("Label", systemImage: "42.circle")
                                .padding()
                            Label("Label: TitleOnlyLabelStyle", systemImage: "bolt.fill")
                                .padding()
                                .labelStyle(TitleOnlyLabelStyle())
                            Label("Label: IconOnlyLabelStyle", systemImage: "bolt.fill")
                                .padding()
                                .labelStyle(IconOnlyLabelStyle())
                            Label("Label: TitleAndIconLabelStyle", systemImage: "bolt.fill")
                                .padding()
                                .labelStyle(TitleAndIconLabelStyle())
                            Label {
                                Text("person.name")
                                    .font(.body)
                                    .foregroundColor(.primary)
                                Text("person.title")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            } icon: {
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 44, height: 44, alignment: .center)
                                    .overlay(Text("aaa"))
                            }
                        }
                    }
                    """#)
                
            }
        }.navigationBarTitle(Text("Label"))
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
