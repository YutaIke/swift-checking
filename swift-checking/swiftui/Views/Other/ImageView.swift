//
//  ImageView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                Spacer()
                Group {
                    Text("default")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Image(systemName: "2.circle")
                        .frame(width: 100, height: 50)
                        .border(Color.red, width: 2.0)

                    Text("aspectRatio(contentMode: .fit)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Image(systemName: "2.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 100)
                        .border(Color.red, width: 2.0)

                    Text("aspectRatio(contentMode: .fill)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Image(systemName: "2.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 100)
                        .border(Color.red, width: 2.0)

                    Text("renderingMode(.template).foregroundColor(Color.blue)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Image(systemName: "2.circle")
                        .renderingMode(.template)
                        .foregroundColor(Color.blue)

                }

                Spacer()
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        Text("default")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        Image(systemName: "2.circle")
                            .frame(width: 100, height: 50)
                            .border(Color.red, width: 2.0)

                        Text("aspectRatio(contentMode: .fit)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        Image(systemName: "2.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 100)
                            .border(Color.red, width: 2.0)

                        Text("aspectRatio(contentMode: .fill)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        Image(systemName: "2.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 100)
                            .border(Color.red, width: 2.0)

                        Text("renderingMode(.template).foregroundColor(Color.blue)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        Image(systemName: "2.circle")
                            .renderingMode(.template)
                            .foregroundColor(Color.blue)
                        """#)
                    
                }

            }

        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
