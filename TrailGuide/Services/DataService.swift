//
//  DataService.swift
//  TrailGuide
//
//  Created by James Dyer on 3/27/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    public func getCategories() -> [Category] {
        let allCategories = [
            Category(name: "HIKING", imageName: "HikingBG"),
            Category(name: "CAMPING", imageName: "CampingBG"),
            Category(name: "BACKPACKING", imageName: "BackpackingBG"),
            Category(name: "DIVING", imageName: "DivingBG"),
            Category(name: "FISHING", imageName: "FishingBG"),
            Category(name: "RV TRIP", imageName: "RVtripBG")
        ]
        return allCategories
    }
    
    public func getGear(category: Category) -> [Gear] {
        switch category.name {
        case "CAMPING":
            return [
                Gear(name: "SLEEPING BAG", imageName: "CampingBG", description: " ")
            ]
        default:
            return [
                Gear(name: "SLEEPING BAG", imageName: " ", description: " ")
            ]
        }
    }
}
