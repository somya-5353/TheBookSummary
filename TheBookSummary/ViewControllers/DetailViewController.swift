//
//  DetailViewController.swift
//  TheBookSummary
//
//  Created by Somya on 06/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var summaryTextView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewHeaderLabel: UILabel!
    
    var selectedBook: Categories?
    var isFavourite: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.setUpUI()
    }

    //func to lay out the summary of the book selected
    func setUpUI() {
        if let book = selectedBook {
            self.titleLabel.text = book.title
            self.titleLabel.numberOfLines = 0
            self.titleLabel.adjustsFontSizeToFitWidth = true
            self.summaryTextView.text = book.summary
            if let flag = self.isFavourite {
                if flag == true {
                    self.overviewHeaderLabel.isHidden = true
                    self.navigationItem.title = "OVERVIEW"
                self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                                         NSAttributedString.Key.font: UIFont(name: "Bradley Hand", size: 24)!,]
                    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
                    }
                }
            }
         else {
            self.titleLabel.text = nil
            self.summaryTextView.text = nil
        }
        
    }
}
