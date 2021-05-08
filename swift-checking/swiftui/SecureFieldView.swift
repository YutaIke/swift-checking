//
//  SecureFieldView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct SecureFieldView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Spacer()
            TextField(
                "User name (email address)",
                text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(UIColor.separator))
                .padding()
            SecureField(
                "Password",
                text: $password
            ) {
                print("ログイン")
            }
            .border(Color(UIColor.separator))
            .padding()
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    @State private var username: String = ""
                    @State private var password: String = ""

                    var body: some View {
                        VStack {
                            TextField(
                                "User name (email address)",
                                text: $username)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                                .border(Color(UIColor.separator))
                                .padding()
                            SecureField(
                                "Password",
                                text: $password
                            ) {
                                print("ログイン")
                            }
                            .border(Color(UIColor.separator))
                            .padding()
                        }
                    }
                    """#)
                
            }.padding()
        }
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
    }
}
