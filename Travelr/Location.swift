//
//  Location.swift
//  Travelr
//
//  Created by Anushree Soman on 4/14/23.
//

import Foundation

struct Location: Decodable, Identifiable{
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let pictures: [String]
    let advisory: String
}
