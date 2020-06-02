//
//  HomeViewController.swift
//  TheBookSummary
//
//  Created by Somya on 30/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var bookView: UICollectionView!
    
    var selectedGenre: GenresAvailable = .unknown
    let sectionInsets = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookView?.dataSource = self as? UICollectionViewDataSource
        bookView?.delegate = self as? UICollectionViewDelegate
        bookView?.isUserInteractionEnabled = true
        bookView?.allowsSelection = true
    }
   
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let listOfBooks = Categories.getBooksForCategory(genre: selectedGenre)
        return listOfBooks.count
       }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath) as! BookCollectionCell
        let listOfBooks = Categories.getBooksForCategory(genre: selectedGenre)
        cell.category = listOfBooks[indexPath.item]
        return cell
        
       }
}
    
    
    

