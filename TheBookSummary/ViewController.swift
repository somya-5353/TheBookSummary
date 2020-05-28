//
//  ViewController.swift
//  TheBookSummary
//
//  Created by Somya on 25/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var frontView: UICollectionView!
    
    var listOfGenres = Genres.getGenres()
    
    override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         setUpNavigation()
        frontView?.dataSource = self as? UICollectionViewDataSource
         calculateCellSizeAndLayout()
          
                                         
    }
    
   //func to customize the navigation bar
    func setUpNavigation() {
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 72/255.0, green: 61/255.0, blue: 139/255.0, alpha: 0.5)
        self.navigationItem.title = "Book  Summary"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                         NSAttributedString.Key.font: UIFont(name: "Bradley Hand", size: 24)!,]
    }

    //function to dtermine the collection cell size and layouts
    func calculateCellSizeAndLayout() {
        
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * 0.6)
        let cellHeight = floor(screenSize.height * 0.6)
        let Xinset = (view.bounds.width - cellWidth)/2.0
        let Yinset = (view.bounds.height - cellHeight)/2.0
        
        let layout = frontView!.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        frontView?.contentInset = UIEdgeInsets(top: Yinset, left: Xinset, bottom: Yinset, right: Xinset)
    }
    
    
}

