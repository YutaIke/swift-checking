//
//  ForegroundColorModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct ForegroundColorModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("Red").foregroundColor(.red)
            Text("Green").foregroundColor(.green)
            Text("Blue").foregroundColor(.blue)
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    Text("Red").foregroundColor(.red)
                    Text("Green").foregroundColor(.green)
                    Text("Blue").foregroundColor(.blue)
                    """#)
                
            }
        }
    }
}

struct ForegroundColorModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundColorModifierView()
    }
}
