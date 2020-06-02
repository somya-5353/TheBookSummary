//
//  TabBarViewController.swift
//  TheBookSummary
//
//  Created by Somya on 30/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class GenreTabBarViewController: UITabBarController {
    
    var selectedGenre: GenresAvailable = .unknown

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTabBar()
        
    }
    
   //function to lay out the tab initial bar  settings
    func setUpTabBar() {
        
        self.tabBar.barTintColor = UIColor(red: 51/255.0, green: 0/255.0, blue: 51/255.0, alpha: 0.8)
        self.tabBar.tintColor = UIColor.white
        let homeVC = HomeViewController()
        homeVC.view.backgroundColor = UIColor.white
        homeVC.selectedGenre = self.selectedGenre
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        
        let secondVC = FavouritesViewController()
        secondVC.view.backgroundColor = UIColor.white
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        self.viewControllers = [homeVC, secondVC]
        self.selectedViewController = homeVC
    }

}
