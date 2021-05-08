//
//  SingInWithAppleButtonView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI
import AuthenticationServices

struct SingInWithAppleButtonView: View {
    var body: some View {
        VStack {
            SignInWithAppleButton(
                .signIn,
                onRequest: { request in
                    // 1
                    request.requestedScopes = [.fullName, .email]
                },
                onCompletion: { result in
                    switch result {
                    case .success (let authResults):
                        // 2
                        print("Authorization successful.")
                    case .failure (let error):
                        // 3
                        print("Authorization failed: " + error.localizedDescription)
                    }
                }
            ).frame(width: 200, height: 30)
            .signInWithAppleButtonStyle(.whiteOutline)

        }
    }
}

struct SingInWithAppleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SingInWithAppleButtonView()
    }
}
