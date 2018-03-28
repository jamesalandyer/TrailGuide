//
//  CategoryCell.swift
//  TrailGuide
//
//  Created by James Dyer on 3/26/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryBG: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateViews(category: Category) {
        categoryBG.image = UIImage(named: category.imageName)
        categoryLabel.text = category.name
    }

}
