//
//  TravelrApp.swift
//  Travelr
//
//  Created by Anushree Soman on 4/14/23.
//

import SwiftUI

@main
struct TravelrApp: App {
    @StateObject private var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primaryLocation)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Map")
                }
                
                NavigationView {
                    TipsListView()
                }
                .tabItem {
                    Image(systemName: "quote.bubble")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
