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
        frontView?.delegate = self as? UICollectionViewDelegate
        frontView?.isUserInteractionEnabled = true
        frontView?.allowsSelection = true
        calculateCellSizeAndLayout()
          
   }
    
   //func to customize the navigation bar
    func setUpNavigation() {
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 51/255.0, green: 0/255.0, blue: 51/255.0, alpha: 0.8)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationItem.title = "Book Summary"
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
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight+20)
        frontView?.contentInset = UIEdgeInsets(top: Xinset, left: Yinset, bottom: Yinset, right: Xinset+20.0)
        
    }
    
}
extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfGenres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "genreCell", for: indexPath) as! GenreCollectionCell
        cell.Genre = listOfGenres[indexPath.item]
        return cell
        
    }
}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView,  didSelectItemAt indexPath: IndexPath) {
        
        
        print("Hello")
        let tabVc = GenreTabBarViewController()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(tabVc, animated: false)
    }
}

