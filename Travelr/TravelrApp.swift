//
//  TravelrApp.swift
//  Travelr
//
//  Created by Anushree Soman on 4/14/23.
//

import SwiftUI

@main
struct TravelrApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: Locations().primaryLocation)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
            }
        }
    }
}
