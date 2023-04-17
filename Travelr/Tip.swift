//
//  Tip.swift
//  Travelr
//
//  Created by Anushree Soman on 4/17/23.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
