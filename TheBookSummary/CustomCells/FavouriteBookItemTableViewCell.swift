//
//  FavouriteBookItemTableViewCell.swift
//  TheBookSummary
//
//  Created by Somya on 09/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class FavouriteBookItemTableViewCell: UITableViewCell {

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bookCoverImage: UIImageView!
    
    var bookItem: Categories? {
        didSet {
            setUpCell()
        }
    }
    
    //function to set the elements of the table view cell
    func setUpCell() {
        
        if let book = self.bookItem {
            self.titleLabel.text = book.title
            self.authorLabel.text = book.author
            self.bookCoverImage.image = book.coverImage
            self.titleLabel.numberOfLines = 1
            self.titleLabel.adjustsFontSizeToFitWidth = true
            self.authorLabel.numberOfLines = 1
            self.authorLabel.adjustsFontSizeToFitWidth = true
            self.bookCoverImage.layer.cornerRadius = self.bookCoverImage.frame.height/2
            self.bookCoverImage.layer.borderWidth = 2
            self.bookCoverImage.layer.borderColor = UIColor.white.cgColor
            self.bookCoverImage.layer.masksToBounds = true
        } else {
            self.titleLabel.text = nil
            self.authorLabel.text = nil
            self.bookCoverImage.image = nil
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
