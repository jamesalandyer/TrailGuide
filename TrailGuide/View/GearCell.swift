//
//  GearCell.swift
//  TrailGuide
//
//  Created by James Dyer on 3/27/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import UIKit

class GearCell: UICollectionViewCell {
    
    @IBOutlet weak var gearImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5.0
    }
    
    func updateViews(gear: Gear) {
        gearImage.image = UIImage(named: gear.imageName)
    }
    
}
