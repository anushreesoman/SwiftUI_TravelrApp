//
//  Locations.swift
//  Travelr
//
//  Created by Anushree Soman on 4/14/23.
//

import Foundation

class Locations: ObservableObject {
    let locations: [Location]
    
    var primaryLocation: Location {
        locations[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        locations = try! JSONDecoder().decode([Location].self, from: data)
    }
}
