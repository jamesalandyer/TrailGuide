//
//  Gear.swift
//  TrailGuide
//
//  Created by James Dyer on 3/27/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import Foundation

struct Gear {
    public private(set) var name: String
    public private(set) var imageName: String
    public private(set) var description: String
    
    init(name: String, imageName: String, description: String) {
        self.name = name
        self.imageName = imageName
        self.description = description
    }
}
