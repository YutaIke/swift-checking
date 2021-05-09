//
//  ModifiersOfText.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct FontModifier: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Group {
                Text(".body")
                    .font(.body)
                Text(".callout")
                    .font(.callout)
                Text(".caption")
                    .font(.caption)
                Text(".caption2")
                    .font(.caption2)
                Text(".footnote")
                    .font(.footnote)
                Text(".headline")
                    .font(.headline)
                Text(".largeTitle")
                    .font(.largeTitle)
                Text(".subheadline")
                    .font(.subheadline)
                Text(".title")
                    .font(.title)
                Text(".title2")
                        .font(.title2)
            }
            Text(".title3")
                .font(.title3)
            Group {
                Text(".system(size: 16, weight: .light, design: .default)")
                    .font(.system(size: 16, weight: .light, design: .default))
                Text(".system(size: 16, weight: .light, design: .serif)")
                    .font(.system(size: 16, weight: .light, design: .serif))
                Text(".system(size: 16, weight: .light, design: .monospaced)")
                    .font(.system(size: 16, weight: .light, design: .monospaced))
            }

            Spacer()
            Divider()
            DisclosureGroup("Source Code") {
                Text(#"""
                    VStack(spacing: 20) {
                        Group {
                            Text("font(.body)")
                                .font(.body)
                            Text("font(.callout)")
                                .font(.callout)
                            Text("font(.caption)")
                                .font(.caption)
                            Text("font(.caption2)")
                                .font(.caption2)
                            Text("font(.footnote)")
                                .font(.footnote)
                            Text("font(.headline)")
                                .font(.headline)
                            Text("font(.largeTitle)")
                                .font(.largeTitle)
                            Text("font(.subheadline)")
                                .font(.subheadline)
                            Text("font(.title)")
                                .font(.title)
                            Text("font(.title2)")
                                    .font(.title2)
                        }
                        Text("font(.title3)")
                            .font(.title3)
                        Group {
                            Text(".system(size: 16, weight: .light, design: .default)")
                                .font(.system(size: 16, weight: .light, design: .default))
                            Text(".system(size: 16, weight: .light, design: .serif)")
                                .font(.system(size: 16, weight: .light, design: .serif))
                            Text(".system(size: 16, weight: .light, design: .monospaced)")
                                .font(.system(size: 16, weight: .light, design: .monospaced))
                        }
                    }
                    """#)
                
            }
                
        }
    }
}

struct FontModifier_Previews: PreviewProvider {
    static var previews: some View {
        FontModifier()
    }
}
