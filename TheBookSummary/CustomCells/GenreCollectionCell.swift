//
//  GenreCollectionCell.swift
//  TheBookSummary
//
//  Created by Somya on 28/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation
import UIKit

class GenreCollectionCell:UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var displayView: UIView!
    @IBOutlet weak var displayImage: UIImageView!
    
    var selectedGenre:GenresAvailable = .unknown
    
    var Genre:Genres? {
        didSet {
            self.setUpCell()
        }
    }
    
    //function to set up the the custom collection cell
    func setUpCell() {
        if let genre = Genre {
            self.displayImage.image = genre.displayImage
            self.title.text = genre.genreName
            self.displayView.backgroundColor = genre.displayColor
            self.selectedGenre = genre.selectedGenre
            
        } else {
            self.displayImage = nil
            self.title = nil
            self.displayView = nil
        }
       // self.contentView.isUserInteractionEnabled = false
    }
    
    //change the corner radius and shadow of the collection cell
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10.0
        self.layer.shadowRadius = 4.0
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.clipsToBounds = false
    }
    
}
