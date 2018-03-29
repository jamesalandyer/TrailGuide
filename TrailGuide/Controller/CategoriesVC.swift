//
//  CategoriesVC.swift
//  TrailGuide
//
//  Created by James Dyer on 3/26/18.
//  Copyright © 2018 James Dyer. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var allCategories = DataService.instance.getCategories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setUpNavigation()
    }

    func setUpNavigation() {
        let logo = UIImage(named: "TRAILguide")
        let logoImageView = UIImageView(image: logo)
        self.navigationItem.titleView = logoImageView
        
        let infoBtn = UIImage(named: "infoBtn")
        let leftBtn = UIBarButtonItem(image: infoBtn, style: .plain, target: self, action: #selector(info))
        self.navigationItem.leftBarButtonItem = leftBtn
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = allCategories[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = allCategories[indexPath.row]
        performSegue(withIdentifier: "GearVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gearVC = segue.destination as? GearVC {
            gearVC.initGear(category: sender as! Category)
        }
    }
    
    @objc
    func info() {
        performSegue(withIdentifier: "AppInfoVC", sender: self)
    }

}

