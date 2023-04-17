//
//  Locations.swift
//  Travelr
//
//  Created by Anushree Soman on 4/14/23.
//

import Foundation

class Locations: ObservableObject {
    let allLocations: [Location]
    
    var primaryLocation: Location {
        allLocations[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        allLocations = try! JSONDecoder().decode([Location].self, from: data)
    }
}
