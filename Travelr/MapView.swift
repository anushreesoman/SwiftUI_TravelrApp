//
//  MapView.swift
//  Travelr
//
//  Created by Anushree Soman on 4/17/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var locations: Locations
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.allLocations){
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                NavigationLink(destination: ContentView(location: location)){
                    Image(location.country)
                        .resizable()
                        .cornerRadius(50)
                        .frame(width: 60, height: 40)
                }
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
