//
//  TabBarController.swift
//  chellengeNotificationCenter
//
//  Created by Rafael Penna on 09/05/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configColors()
    }
    
    func configItems() {
        guard let items = tabBar.items else { return }
        items[0].title = "Home"
        items[0].image = UIImage(systemName: "house")
        
        items[1].title = "InsertName"
        items[1].image = UIImage(systemName: "text.insert")
        
    }
    
    func configColors() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

}
