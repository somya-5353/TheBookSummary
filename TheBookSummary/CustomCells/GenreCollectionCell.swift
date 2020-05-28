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
    
    var selectedGenre:Genres? {
        didSet {
            self.setUpCell()
        }
    }
    
    //function to set up the the custom collection cell
    func setUpCell() {
        if let genre = selectedGenre {
            self.displayImage.image = genre.displayImage
            self.title.text = genre.genreName
            self.displayView.backgroundColor = genre.displayColor
            
        } else {
            self.displayImage = nil
            self.title = nil
            self.displayView = nil
        }
    }
}
