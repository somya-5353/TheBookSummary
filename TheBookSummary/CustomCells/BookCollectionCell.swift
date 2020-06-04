//
//  BookCollectionCell.swift
//  TheBookSummary
//
//  Created by Somya on 02/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class BookCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var bookCoverImage: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    
    var selectedGenre:GenresAvailable = .unknown
    
    var category: Categories? {
        didSet {
            setUpCell()
        }
    }
    
    //function to lay out the cell
    func setUpCell() {
        if let category = category {
            self.bookCoverImage.image = category.coverImage
            self.bookTitle.text = category.title
            self.bookTitle.numberOfLines = 0
            self.bookTitle.adjustsFontSizeToFitWidth = true
        } else {
            self.bookCoverImage.image = nil
            self.bookTitle.text = ""
        }
    }
    
   override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 7.0
        self.layer.shadowRadius = 4.0
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.clipsToBounds = false
       }
    
    
}
