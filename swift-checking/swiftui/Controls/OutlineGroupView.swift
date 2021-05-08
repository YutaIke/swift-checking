//
//  OutlineGroupView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/07.
//

import SwiftUI

struct OutlineGroupView: View {

    struct FileItem: Hashable, Identifiable, CustomStringConvertible {
        var id: Self { self }
        var name: String
        var children: [FileItem]? = nil
        var description: String {
            switch children {
            case nil:
                return "📄 \(name)"
            case .some(let children):
                return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
            }
        }
    }

    let data =
      FileItem(name: "users", children:
        [FileItem(name: "user1234", children:
          [FileItem(name: "Photos", children:
            [FileItem(name: "photo001.jpg"),
             FileItem(name: "photo002.jpg")]),
           FileItem(name: "Movies", children:
             [FileItem(name: "movie001.mp4")]),
              FileItem(name: "Documents", children: [])
          ]),
         FileItem(name: "newuser", children:
           [FileItem(name: "Documents", children: [])
           ])
        ])
    
    var body: some View {
        VStack {
            Spacer()

            OutlineGroup(data, id: \.id, children: \.children) { item in
                Text("\(item.description)")
            }.padding()
            
            Spacer()
            Divider()
            
            DisclosureGroup("Source Code") {
                Text(#"""
                    struct FileItem: Hashable, Identifiable, CustomStringConvertible {
                        var id: Self { self }
                        var name: String
                        var children: [FileItem]? = nil
                        var description: String {
                            switch children {
                            case nil:
                                return "📄 \(name)"
                            case .some(let children):
                                return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
                            }
                        }
                    }

                    let data =
                      FileItem(name: "users", children:
                        [FileItem(name: "user1234", children:
                          [FileItem(name: "Photos", children:
                            [FileItem(name: "photo001.jpg"),
                             FileItem(name: "photo002.jpg")]),
                           FileItem(name: "Movies", children:
                             [FileItem(name: "movie001.mp4")]),
                              FileItem(name: "Documents", children: [])
                          ]),
                         FileItem(name: "newuser", children:
                           [FileItem(name: "Documents", children: [])
                           ])
                        ])
                    
                    var body: some View {
                        OutlineGroup(data, id: \.id, children: \.children) { item in
                            Text("\(item.description)")
                        }.padding()
                    }
                    """#)
                
            }.padding()
        }
    }
}

struct OutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupView()
    }
}
