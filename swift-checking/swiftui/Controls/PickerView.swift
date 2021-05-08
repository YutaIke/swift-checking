//
//  PickerView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/08.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry
    
    var id: String { self.rawValue }
}

enum Topping: String, CaseIterable, Identifiable {
    case nuts
    case cookies
    case blueberries
    
    var id: String { self.rawValue }
}

extension Flavor {
    var suggestedTopping: Topping {
        switch self {
        case .chocolate: return .nuts
        case .vanilla: return .cookies
        case .strawberry: return .blueberries
        }
    }
}

struct PickerView: View {
    @State private var selectedFlavor = Flavor.chocolate
    @State private var suggestedTopping: Topping = .cookies
    
    var body: some View {
        ScrollView(.vertical){
            VStack {
                Picker(selection: $selectedFlavor, label: Text("Flavor")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }
                Text("Selected flavor: \(selectedFlavor.rawValue)")

                Divider()

                Picker(selection: $suggestedTopping, label: Text("Suggest a topping for:")) {
                    ForEach(Flavor.allCases) { flavor in
                        Text(flavor.rawValue.capitalized).tag(flavor.suggestedTopping)
                    }
                }
                Text("suggestedTopping: \(suggestedTopping.rawValue)")
                
                Spacer()
                Divider()
                DisclosureGroup("Source Code") {
                    Text(#"""
                        enum Flavor: String, CaseIterable, Identifiable {
                            case chocolate
                            case vanilla
                            case strawberry
                            
                            var id: String { self.rawValue }
                        }

                        enum Topping: String, CaseIterable, Identifiable {
                            case nuts
                            case cookies
                            case blueberries
                            
                            var id: String { self.rawValue }
                        }

                        extension Flavor {
                            var suggestedTopping: Topping {
                                switch self {
                                case .chocolate: return .nuts
                                case .vanilla: return .cookies
                                case .strawberry: return .blueberries
                                }
                            }
                        }

                        struct PickerView: View {
                            @State private var selectedFlavor = Flavor.chocolate
                            @State private var suggestedTopping: Topping = .cookies
                            
                            var body: some View {
                                VStack {
                                    Picker(selection: $selectedFlavor, label: Text("Flavor")) {
                                        ForEach(Flavor.allCases) { flavor in
                                            Text(flavor.rawValue.capitalized)
                                        }
                                    }
                                    Text("Selected flavor: \(selectedFlavor.rawValue)")

                                    Divider()
                                    
                                    Picker(selection: $selectedFlavor, label: Text("Suggest a topping for:")) {
                                        ForEach(Flavor.allCases) { flavor in
                                            Text(flavor.rawValue.capitalized).tag(flavor.suggestedTopping)
                                        }
                                    }
                                    Text("suggestedTopping: \(suggestedTopping.rawValue)")

                                }
                            }
                        }
                        """#)
                    
                }.padding()
            }
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
