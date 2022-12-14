//
//  Pokemon.swift
//  Pokedex
//
//  Created by hakkı can şengönül on 11.10.2022.
//

import UIKit
struct Pokemon{
    var name: String?
    var imageUrl: String?
    var image: UIImage?
    var id: Int?
    var weight: Int?
    var height: Int?
    var defense: Int?
    var attack: Int?
    var description: String?
    var type: String?
    var baseExperience: Int?
    init(id: Int, dictionary:[String: Any]) {
        self.id = id
        if let name = dictionary["name"] as? String {
            self.name = name.uppercased()
        }
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.weight = dictionary["weight"] as? Int ?? 0
        self.height = dictionary["height"] as? Int ?? 0
        self.defense = dictionary["defense"] as? Int ?? 0
        self.attack = dictionary["attack"] as? Int ?? 0
        self.description = dictionary["description"] as? String ?? ""
        self.type = dictionary["type"] as? String ?? ""
        
    }
}

