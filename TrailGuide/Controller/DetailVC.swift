//
//  DetailVC.swift
//  TrailGuide
//
//  Created by James Dyer on 3/28/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var gearImageView: UIImageView!
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedGear: Gear!
    var selectedCategory: Category!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavigation()
        setUpViews()
    }
    
    func initSelected(gear: Gear) {
        selectedGear = gear
    }
    
    func setUpNavigation() {
        self.navigationItem.title = selectedGear.name
    }
    
    func setUpViews() {
        gearImageView.image = UIImage(named: selectedGear.imageName)
        categoryImageView.image = UIImage(named: selectedCategory.imageName)
        descriptionLabel.text = selectedGear.description
    }
    
}
