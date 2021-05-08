//
//  ToggleView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

struct ToggleView: View {
    @State private var vibrateOnRing = true
    
    var body: some View {
        Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
            .toggleStyle(SwitchToggleStyle())
            .padding()
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
