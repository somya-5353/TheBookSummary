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
    
    private var favouriteBooks:[FavouriteBook]? {
        didSet {
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
        self.setUpView()
        self.fetchFavouriteItems()
    }
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       self.tabBarController?.navigationItem.title = "Favourites"
    
  }
 
   func setUpView() {
        
    }
    
    //function to fetch the favourite books from the persistent store
    private func fetchFavouriteItems() {
        
        let fetchRequest: NSFetchRequest<FavouriteBook> = FavouriteBook.fetchRequest()
        managedObjectContext?.performAndWait {
            do {
                let books = try fetchRequest.execute()
                self.favouriteBooks = books
                self.favouriteTableView.reloadData()
            } catch {
                let fetchError = error as NSError
                print("Unable to fetch request!")
            }
        }
    }
    
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           <#code#>
       }
    
    
       
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           <#code#>
       }
       
    
}
