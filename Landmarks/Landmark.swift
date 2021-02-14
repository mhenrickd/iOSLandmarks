//
//  Landmark.swift
//  Landmarks
//
//  Created by Matheus Henrick Dias on 14/02/21.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
