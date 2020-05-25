//
//  Genres.swift
//  TheBookSummary
//
//  Created by Somya on 25/05/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation
import UIKit

class Genres {
    
    var genreName:String
    var displayImage:UIImage
    var displayColor:UIColor
    
    init(genreName:String, displayImage:UIImage, displayColor:UIColor) {
        self.genreName = genreName
        self.displayImage = displayImage
        self.displayColor = displayColor
    }
    
    func getGenres() -> [Genres] {
        
        var genreList:[Genres] = []
        genreList.append(Genres(genreName: "Fiction", displayImage: UIImage(named: "fiction")!, displayColor: UIColor(red: 230/255.0, green: 230/255.0, blue: 250/255.0, alpha: 0.8)))
        genreList.append(Genres(genreName: "Classics", displayImage: UIImage(named: "classics")!, displayColor: UIColor(red: 210/255.0, green: 180/255.0, blue: 140/255.0, alpha: 0.8)))
        genreList.append(Genres(genreName: "Self Help", displayImage: UIImage(named: "selfHelp")!, displayColor: UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 0.8)))
        genreList.append(Genres(genreName: "Leadership", displayImage: UIImage(named: "leadership")!, displayColor: UIColor(red: 255/255.0, green: 165/255.0, blue: 0, alpha: 0.8)))
        genreList.append(Genres(genreName: "Biographies", displayImage: UIImage(named: "Biographies")!, displayColor: UIColor(red: 0, green: 128/255.0, blue: 128/255.0, alpha: 0.8)))
        
        return genreList
        
    }
}
