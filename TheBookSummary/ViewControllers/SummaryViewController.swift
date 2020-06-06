//
//  SummaryViewController.swift
//  TheBookSummary
//
//  Created by Somya on 04/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit


class SummaryViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bookmarkButton: UIButton!
    
    var categoryItem: Categories?
    var isBookmarked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.setUpUI()
    }
    
    //to lay out the labels and image view for each book
    func setUpUI() {
        
        if let item = categoryItem {
            self.coverImage.image = item.coverImage
            self.titleLabel.text = item.title
            if item.author == "" {
                self.authorLabel.isHidden = true
            } else {
            self.authorLabel.text = "by \(item.author)"
            }
            self.titleLabel.numberOfLines = 0
            self.titleLabel.adjustsFontSizeToFitWidth = true
            self.authorLabel.adjustsFontSizeToFitWidth = true
            bookmarkButton.setImage(UIImage(named: "uncheckedBookmark"), for: .normal)
        } else {
            self.coverImage.image = nil
            self.titleLabel.text = nil
            self.authorLabel.text = nil
        }
        
    }
    
   @IBAction func onTapSummary(_ sender: Any) {
    
    self.performSegue(withIdentifier: "detailSegue", sender: self)
   
    
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue" {
           if let vc = segue.destination as? DetailViewController {
              vc.selectedBook = self.categoryItem
           }
        }
    }
    
    @IBAction func onTapBookmark(_ sender: Any) {
        
        isBookmarked = !isBookmarked
        if (!isBookmarked) {
           bookmarkButton.setImage(UIImage(named: "Bookmark"), for: .normal)
        } else {
            bookmarkButton.setImage(UIImage(named: "uncheckedBookmark"), for: .normal)
        }
    }
}
