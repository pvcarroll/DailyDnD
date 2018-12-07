//
//  CategoriesViewController.swift
//  DailyDnD
//
//  Created by Paul Carroll on 12/6/18.
//  Copyright © 2018 Paul Carroll. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var startNotificationsButton: UIButton!
    
    let categories = [
        "skills",
        "proficiencies",
        "languages",
        "classes",
        "subclasses",
        "features",
        "races",
        "subraces",
        "equipment",
        "conditions",
        "damage-types",
        "magic-schools",
        "monsters"
    ]
    
    @IBAction func startNotificationsTapped(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
        
        self.startNotificationsButton.layer.shadowColor = UIColor.lightGray.cgColor
        self.startNotificationsButton.layer.shadowOffset = CGSize(width: 0, height: -4)
        self.startNotificationsButton.layer.shadowRadius = 1
        self.startNotificationsButton.layer.shadowOpacity = 0.3
        self.startNotificationsButton.layer.masksToBounds = false
    }
}

extension CategoriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        cell.categoryLabel.text = self.categories[indexPath.row]
        return cell
    }
}

extension CategoriesViewController: UITableViewDelegate {
    
}
