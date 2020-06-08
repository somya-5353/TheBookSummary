//
//  HomeViewController.swift
//  TheBookSummary
//
//  Created by Somya on 30/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

protocol GenreSelectionDelegation {
    func getSelectedGenre() -> GenresAvailable?
}

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var bookView: UICollectionView!
    
    var selectionDelegate:GenreSelectionDelegation!
    var categoryItem:Categories?
    
    private var coreDataManager = CoreDataManager(modelName: "Favourites")
    
    private let sectionInsets = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)
    private let numberOfItemsInRow = 2
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        bookView?.dataSource = self as? UICollectionViewDataSource
        bookView?.delegate = self as? UICollectionViewDelegate
        bookView?.isUserInteractionEnabled = true
        bookView?.allowsSelection = true
        let selectedGenre = selectionDelegate?.getSelectedGenre() ?? .unknown
        let title = selectedGenre.rawValue
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      let selectedGenre = selectionDelegate?.getSelectedGenre() ?? .unknown
      let title = selectedGenre.rawValue
      self.tabBarController?.navigationItem.title = title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        let selectedGenre = selectionDelegate?.getSelectedGenre() ?? .unknown
        let listOfBooks = Categories.getBooksForCategory(genre: selectedGenre)
        return listOfBooks.count
       }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath) as! BookCollectionCell
        let selectedGenre = selectionDelegate?.getSelectedGenre() ?? .unknown
        let listOfBooks = Categories.getBooksForCategory(genre: selectedGenre)
        cell.category = listOfBooks[indexPath.item]
        cell.bookTitle.numberOfLines = 0
        cell.bookTitle.adjustsFontSizeToFitWidth = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedGenre = selectionDelegate?.getSelectedGenre() ?? .unknown
        let listOfBooks = Categories.getBooksForCategory(genre: selectedGenre)
        self.categoryItem = listOfBooks[indexPath.item]
        self.performSegue(withIdentifier: "collectionSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "collectionSegue" {
            if let vc = segue.destination as? SummaryViewController {
                vc.categoryItem = self.categoryItem
                vc.managedObjectContext = coreDataManager.managedObjectContext
            }
        }
    }
}
    
extension HomeViewController:UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let noOfCellsInRow = 2

        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout

        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))

        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))

        return CGSize(width: size - 2, height: size+100)
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

