//
//  TabBarViewController.swift
//  TheBookSummary
//
//  Created by Somya on 30/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class GenreTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTabBar()
    }
    
   //function to lay out the tab initial bar  settings
    func setUpTabBar() {
        
        self.tabBar.barTintColor = UIColor.black
        let homeVC = HomeViewController()
        homeVC.view.backgroundColor = UIColor.white
      
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        let secondVC = FavouritesViewController()
        secondVC.view.backgroundColor = UIColor.white
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        self.viewControllers = [homeVC, secondVC]
        self.selectedViewController = homeVC
    }

}
