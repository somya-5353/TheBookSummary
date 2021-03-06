//
//  ViewController.swift
//  TheBookSummary
//
//  Created by Somya on 25/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController{

    @IBOutlet weak var frontView: UICollectionView!
    
    var listOfGenres = Genres.getGenres()
    var selectedGenre:GenresAvailable = .unknown
    private var coreDataManager = CoreDataManager(modelName: "Favourites")
    
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
        
        self.selectedGenre = listOfGenres[indexPath.item].selectedGenre
        let tabVc = GenreTabBarViewController()
        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        homeVC.selectionDelegate = self
        homeVC.managedObjectContext = coreDataManager.managedObjectContext
        homeVC.view.backgroundColor = UIColor.white
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "second") as! FavouritesViewController
        secondVC.managedObjectContext = coreDataManager.managedObjectContext
        secondVC.view.backgroundColor = UIColor.white
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        tabVc.viewControllers = [homeVC, secondVC]
        tabVc.selectedViewController = homeVC
        
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.pushViewController(tabVc, animated: false)
    }
}

extension ViewController: GenreSelectionDelegation {
    
    func getSelectedGenre() -> GenresAvailable? {
       let genre = self.selectedGenre
        return genre
    }
}

