//
//  GeometryReader.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/09.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                GeometryReader { geometry in
                    Text(#"""
                        geometry.frame(in: .global).origin.x: \#(geometry.frame(in: .global).origin.x)
                        geometry.frame(in: .global).origin.y: \#(geometry.frame(in: .global).origin.y)
                        geometry.frame(in: .global).width: \#(geometry.frame(in: .global).width)
                        geometry.frame(in: .global).height: \#(geometry.frame(in: .global).height)
                        geometry.frame(in: .global).minX: \#(geometry.frame(in: .global).minX)
                        geometry.frame(in: .global).midX: \#(geometry.frame(in: .global).midX)
                        geometry.frame(in: .global).maxX: \#(geometry.frame(in: .global).maxX)
                        geometry.frame(in: .global).minY: \#(geometry.frame(in: .global).minY)
                        geometry.frame(in: .global).midY: \#(geometry.frame(in: .global).midY)
                        geometry.frame(in: .global).maxY: \#(geometry.frame(in: .global).maxY)
                    """#)
                    
                }
                .frame(height: 250)
                .border(Color.red, width: 2.0)
                            
                GeometryReader { geometry in
                    Text(#"""
                        geometry.frame(in: .local).origin.x: \#(geometry.frame(in: .local).origin.x)
                        geometry.frame(in: .local).origin.y: \#(geometry.frame(in: .local).origin.y)
                        geometry.frame(in: .local).width: \#(geometry.frame(in: .local).width)
                        geometry.frame(in: .local).height: \#(geometry.frame(in: .local).height)
                        geometry.frame(in: .local).minX: \#(geometry.frame(in: .local).minX)
                        geometry.frame(in: .local).midX: \#(geometry.frame(in: .local).midX)
                        geometry.frame(in: .local).maxX: \#(geometry.frame(in: .local).maxX)
                        geometry.frame(in: .local).minY: \#(geometry.frame(in: .local).minY)
                        geometry.frame(in: .local).midY: \#(geometry.frame(in: .local).midY)
                        geometry.frame(in: .local).maxY: \#(geometry.frame(in: .local).maxY)
                    """#)
                    
                }
                .frame(height: 250)
                .border(Color.green, width: 2.0)
                
                GeometryReader { geometry in
                    Text(#"""
                        geometry.size.debugDescription: \#(geometry.size.debugDescription)
                    """#)
                    
                }
                .frame(height: 100)
                .border(Color.green, width: 2.0)
                
                Spacer(minLength: 50)
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        ※表示上の都合上一部ソースコード修正してます(ダブルクォーテーション、シャープなど)
                        VStack {
                            GeometryReader { geometry in
                                Text(#""
                                    geometry.frame(in: .global).origin.x: \(geometry.frame(in: .global).origin.x)
                                    geometry.frame(in: .global).origin.y: \(geometry.frame(in: .global).origin.y)
                                    geometry.frame(in: .global).width: \(geometry.frame(in: .global).width)
                                    geometry.frame(in: .global).height: \(geometry.frame(in: .global).height)
                                    geometry.frame(in: .global).minX: \(geometry.frame(in: .global).minX)
                                    geometry.frame(in: .global).midX: \(geometry.frame(in: .global).midX)
                                    geometry.frame(in: .global).maxX: \(geometry.frame(in: .global).maxX)
                                    geometry.frame(in: .global).minY: \(geometry.frame(in: .global).minY)
                                    geometry.frame(in: .global).midY: \(geometry.frame(in: .global).midY)
                                    geometry.frame(in: .global).maxY: \(geometry.frame(in: .global).maxY)
                                ""#)
                                
                            }
                            .frame(height: 250)
                            .border(Color.red, width: 2.0)
                                        
                            GeometryReader { geometry in
                                Text(#""
                                    geometry.frame(in: .local).origin.x: \(geometry.frame(in: .local).origin.x)
                                    geometry.frame(in: .local).origin.y: \(geometry.frame(in: .local).origin.y)
                                    geometry.frame(in: .local).width: \(geometry.frame(in: .local).width)
                                    geometry.frame(in: .local).height: \(geometry.frame(in: .local).height)
                                    geometry.frame(in: .local).minX: \(geometry.frame(in: .local).minX)
                                    geometry.frame(in: .local).midX: \(geometry.frame(in: .local).midX)
                                    geometry.frame(in: .local).maxX: \(geometry.frame(in: .local).maxX)
                                    geometry.frame(in: .local).minY: \(geometry.frame(in: .local).minY)
                                    geometry.frame(in: .local).midY: \(geometry.frame(in: .local).midY)
                                    geometry.frame(in: .local).maxY: \(geometry.frame(in: .local).maxY)
                                ""#)
                                
                            }
                            .frame(height: 250)
                            .border(Color.green, width: 2.0)
                            
                            GeometryReader { geometry in
                                Text(#""
                                    geometry.size.debugDescription: \(geometry.size.debugDescription)
                                ""#)
                                
                            }
                            .frame(height: 100)
                            .border(Color.green, width: 2.0)
                        """#)
                }
            }
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
