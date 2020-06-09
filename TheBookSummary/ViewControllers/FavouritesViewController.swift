//
//  FavouritesViewController.swift
//  TheBookSummary
//
//  Created by Somya on 30/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit
import CoreData

class FavouritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var managedObjectContext: NSManagedObjectContext?
    var listOfBooks:[Categories] = []
    var dictOfBooksByGenre:[GenresAvailable:[Categories]] = [:]
    
    private var favouriteBooks:[FavouriteBook]? {
        didSet {
            self.listOfBooks = Converter.getListOfCategories(books: favouriteBooks)
            self.dictOfBooksByGenre = BooksByGenre.categorizeBooksByGenre(listOfBooks: self.listOfBooks)
            updateView()
        }
    }
    
    var hasFavourites:Bool {
        guard let books = favouriteBooks else { return false }
        return books.count>0
       }
       
    @IBOutlet weak var favouriteTableView: UITableView!
    
    //function to update the view
    func updateView() {
        self.favouriteTableView.isHidden = !hasFavourites
    }
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        ///self.fetchFavouriteItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       self.tabBarController?.navigationItem.title = "Favourites"
       self.fetchFavouriteItems()
    
  }

    func setUpView() {
        
        favouriteTableView?.dataSource = self
        favouriteTableView?.delegate = self
        favouriteTableView?.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        favouriteTableView?.separatorColor = UIColor.lightGray
    }
    
    //function to fetch the favourite books from the persistent store
    private func fetchFavouriteItems() {
        
        let fetchRequest: NSFetchRequest<FavouriteBook> = FavouriteBook.fetchRequest()
        managedObjectContext?.performAndWait {
            do {
                let books = try fetchRequest.execute()
                self.favouriteBooks = books
                print(self.favouriteBooks)
                self.favouriteTableView.reloadData()
            } catch {
                let fetchError = error as NSError
                print("Unable to fetch request!")
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        let keys = dictOfBooksByGenre.keys
        return keys.count
    }
    
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           let keys = dictOfBooksByGenre.keys
           let keyArray = Array(keys)
           let key = keyArray[section]
           if let books = dictOfBooksByGenre[key] {
            return books.count
          }
          return 0
   }
    
    
       
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "favouriteTableViewCell", for: indexPath) as! FavouriteBookItemTableViewCell
       let keys = dictOfBooksByGenre.keys
       let keyArray = Array(keys)
       let key = keyArray[indexPath.section]
       if let books = dictOfBooksByGenre[key] {
          let book = books[indexPath.row]
          cell.bookItem = book
       }
       return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let keys = dictOfBooksByGenre.keys
        let keyArray = Array(keys)
        let key = keyArray[section]
        return key.rawValue
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor = UIColor.black
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.backgroundColor = UIColor.black
    }
    
}
