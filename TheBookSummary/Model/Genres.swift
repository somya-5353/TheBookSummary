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
    
    static func getGenres() -> [Genres] {
        
        var genreList:[Genres] = []
        genreList.append(Genres(genreName: "Fiction", displayImage: UIImage(named: "fiction1")!, displayColor: UIColor(red: 70/255.0, green: 130/255.0, blue: 200/255.0, alpha: 0.5)))
        genreList.append(Genres(genreName: "Classics", displayImage: UIImage(named: "classics")!, displayColor: UIColor(red: 190/255.0, green: 164/255.0, blue: 147/255.0, alpha: 0.3)))
        genreList.append(Genres(genreName: "Self Help", displayImage: UIImage(named: "selfHelp")!, displayColor: UIColor(red: 192/255.0, green: 192/255.0, blue: 192/255.0, alpha: 0.8)))
        genreList.append(Genres(genreName: "Leadership", displayImage: UIImage(named: "leadership")!, displayColor: UIColor(red: 242/255.0, green: 133/255.0, blue: 0, alpha: 0.3)))
        genreList.append(Genres(genreName: "Biographies", displayImage: UIImage(named: "Biographies")!, displayColor: UIColor(red: 107/255.0, green: 142/255.0, blue: 35/255.0, alpha: 0.5)))
        
        return genreList
        
    }
}
