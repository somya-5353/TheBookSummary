//
//  ViewController.swift
//  TheBookSummary
//
//  Created by Somya on 25/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpNavigation()
                                        
   }
    
   //func to customize the navigation bar
    func setUpNavigation() {
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 72/255.0, green: 61/255.0, blue: 139/255.0, alpha: 0.5)
        self.navigationItem.title = "Book  Summary"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                         NSAttributedString.Key.font: UIFont(name: "Bradley Hand", size: 24)!,]
    }


}

