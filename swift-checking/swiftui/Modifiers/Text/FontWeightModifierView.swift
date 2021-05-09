//
//  FontWeightModifierView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/10.
//

import SwiftUI

struct FontWeightModifierView: View {
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Group {
                Text(".black")
                    .fontWeight(.black)
                Text(".bold")
                    .fontWeight(.bold)
                Text(".heavy")
                    .fontWeight(.heavy)
                Text(".light")
                    .fontWeight(.light)
                Text(".medium")
                    .fontWeight(.medium)
                Text(".regular")
                    .fontWeight(.regular)
                Text(".semibold")
                    .fontWeight(.semibold)
                Text(".thin")
                    .fontWeight(.thin)
                Text(".ultraLight")
                    .fontWeight(.ultraLight)
            }
            
            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    Text(".black")
                        .fontWeight(.black)
                    Text(".bold")
                        .fontWeight(.bold)
                    Text(".heavy")
                        .fontWeight(.heavy)
                    Text(".light")
                        .fontWeight(.light)
                    Text(".medium")
                        .fontWeight(.medium)
                    Text(".regular")
                        .fontWeight(.regular)
                    Text(".semibold")
                        .fontWeight(.semibold)
                    Text(".thin")
                        .fontWeight(.thin)
                    Text(".ultraLight")
                        .fontWeight(.ultraLight)
                    """#)
                
            }
        }
    }
}

struct FontWeightModifierView_Previews: PreviewProvider {
    static var previews: some View {
        FontWeightModifierView()
    }
}
