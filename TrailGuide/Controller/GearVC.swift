//
//  GearVC.swift
//  TrailGuide
//
//  Created by James Dyer on 3/27/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import UIKit

class GearVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var gearCollectionView: UICollectionView!
    @IBOutlet weak var categoryBG: UIImageView!
    
    var currentCategory: Category!
    var allGear: [Gear]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gearCollectionView.delegate = self
        gearCollectionView.dataSource = self
        
        categoryBG.image = UIImage(named: currentCategory.imageName)
        categoryLabel.text = currentCategory.name
    }
    
    func initGear(category: Category) {
        currentCategory = category
        allGear = DataService.instance.getGear(category: category)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allGear.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GearCell", for: indexPath) as? GearCell {
            let gear = allGear[indexPath.row]
            cell.updateViews(gear: gear)
            return cell
        } else {
            return GearCell()
        }
    }
    
}
