//
//  MapView.swift
//  swift-checking
//
//  Created by 池友太 on 2021/05/12.
//

import SwiftUI
import MapKit

struct AnnotationItem: Identifiable {
    // ID(識別子)
    let id = UUID()
    // 緯度経度
    let coordinate:CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(
                                                    latitude: 35.6593913,
                                                    longitude: 139.7003861),
                                                   span: MKCoordinateSpan(
                                                    latitudeDelta: 0.01,
                                                    longitudeDelta: 0.01)
                                )
    @State private var trackingMode: MapUserTrackingMode = .follow
    @State private var annotationItems: [AnnotationItem] = [AnnotationItem(coordinate: CLLocationCoordinate2D(
                                                                            latitude: 35.6593913,
                                                                            longitude: 139.7003861))]
    
    var body: some View {
        VStack {
//            Map(coordinateRegion: $region)
//                .edgesIgnoringSafeArea(.all)
//            Map(coordinateRegion: $region, interactionModes: .all)
//                .edgesIgnoringSafeArea(.all)
//            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true)
//                .edgesIgnoringSafeArea(.all)
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $trackingMode, annotationItems: annotationItems) { item in
//                MapPin(coordinate: item.coordinate)
                MapMarker(coordinate: item.coordinate)
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
