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
        genreList.append(Genres(genreName: "Fiction", displayImage: UIImage(named: "fiction1")!, displayColor: UIColor(red: 70/255.0, green: 130/255.0, blue: 230/255.0, alpha: 0.5)))
        genreList.append(Genres(genreName: "Classics", displayImage: UIImage(named: "selfHelp")!, displayColor: UIColor(red: 255/255.0, green: 99/255.0, blue: 71/255.0, alpha: 0.6)))
        genreList.append(Genres(genreName: "Self Help", displayImage: UIImage(named: "Biographies")!, displayColor: UIColor(red: 107/255.0, green: 142/255.0, blue: 35/255.0, alpha: 0.6)))
        genreList.append(Genres(genreName: "Thrillers", displayImage: UIImage(named: "fictions")!, displayColor: UIColor(red: 147/255.0, green: 112/255.0, blue: 219/255.0, alpha: 0.3)))
        genreList.append(Genres(genreName: "Biographies", displayImage: UIImage(named: "book5")!, displayColor: UIColor(red: 210/255.0, green: 105/255.0, blue: 30/255.0, alpha: 0.5)))
        
        return genreList
        
    }
}
