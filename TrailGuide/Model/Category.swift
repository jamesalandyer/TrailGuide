//
//  Category.swift
//  TrailGuide
//
//  Created by James Dyer on 3/26/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import Foundation

struct Category {
    public private(set) var name: String
    public private(set) var imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}
