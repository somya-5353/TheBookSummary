//
//  ConvertToCategories.swift
//  TheBookSummary
//
//  Created by Somya on 09/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation
import UIKit

class Converter {
    
    static func getImageName(id:String) -> String {
        
        let value = ImageName.dictOfImageNames[id] ?? ""
        return value
    }
    
    static func getListOfCategories(books: [FavouriteBook]?) -> [Categories] {
        
        var listOfItems:[Categories] = []
        for book in books! {
            let book_id = book.id ?? ""
            let imageName = self.getImageName(id: book_id)
            let item = Categories(title: book.title ?? "", coverImage: UIImage(named: imageName)!, author: book.author ?? "", summary: book_id)
            listOfItems.append(item)
        }
        return listOfItems
    }
    
}
