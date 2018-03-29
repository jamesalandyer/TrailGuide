//
//  RoundedButton.swift
//  TrailGuide
//
//  Created by James Dyer on 3/28/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5.0
    }

}
