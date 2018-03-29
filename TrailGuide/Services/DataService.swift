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
        case "HIKING":
            return [
                Gear(name: "TACTICAL WATCH", imageName: "tacticalWatch", description: "This is a tactical watch!")
            ]
        case "CAMPING":
            return [
                Gear(name: "SLEEPING BAG", imageName: "sleepingBag", description: "A sleeping bag is a camping essential. It provides a warm and semi-comfortable place to sleep when camping. Some sleeping bags are rated for temperatures below 0˚ F!"),
                Gear(name: "CAMPING STOVE", imageName: "campingStove", description: "You will definitely need a camping stove!"),
                Gear(name: "PUP TENT", imageName: "pupTent", description: "You will definitely need a PUP tent!"),
                Gear(name: "FOOD COOLER", imageName: "foodCooler", description: "You will definitely need a food cooler!"),
                Gear(name: "PARACORD BRACELET", imageName: "paracordBracelet", description: "You will definitely need a paracord bracelet!"),
                Gear(name: "TACTICAL KNIFE", imageName: "tacticalKnife", description: "You will definitely need a tactical knife!")
            ]
        case "BACKPACKING":
            return [
                Gear(name: "BACKPACK", imageName: "backPack", description: "You will definitely need a backpack!")
            ]
        case "DIVING":
            return [
                Gear(name: "SNORKEL", imageName: "snorkel", description: "You will definitely need a snorkel!")
            ]
        case "FISHING":
            return [
                Gear(name: "TACKLE BOX", imageName: "tackleBox", description: "You will definitely need a tackle box!")
            ]
        case "RV TRIP":
            return [
                Gear(name: "PLAYING CARDS", imageName: "playingCards", description: "You will definitely need a deck of playing cards!")
            ]
        default:
            return [
                Gear(name: "NOTHING", imageName: "TRAILguide", description: "You don't need anything!")
            ]
        }
    }
}
