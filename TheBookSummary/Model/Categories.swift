//
//  Categories.swift
//  TheBookSummary
//
//  Created by Somya on 02/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation
import UIKit

class Categories {
    
    var title:String
    var coverImage:UIImage
    
    init(title: String, coverImage: UIImage) {
        self.title = title
        self.coverImage = coverImage
    }
    
    func getBooksForCategory(genre: GenresAvailable) -> [Categories] {
        var listOfBooks:[Categories] = []
        
        if genre == .fiction {
        listOfBooks.append(Categories(title: "Alchemist", coverImage: UIImage(named: "alchemist")!))
        listOfBooks.append(Categories(title: "All The Light We Cannot See", coverImage: UIImage(named: "alchemist")!))
        listOfBooks.append(Categories(title: "Alchemist", coverImage: UIImage(named: "allthelightthatyoucannotsee")!))
        listOfBooks.append(Categories(title: "Gone Girl", coverImage: UIImage(named: "gonegirl")!))
        listOfBooks.append(Categories(title: "Inferno", coverImage: UIImage(named: "inferno")!))
        listOfBooks.append(Categories(title: "Little Fires Everywhere", coverImage: UIImage(named: "littlefireseverywhere")!))
        listOfBooks.append(Categories(title: "The Kite Runner", coverImage: UIImage(named: "thekiterunner")!))
        listOfBooks.append(Categories(title: "The Lowland", coverImage: UIImage(named: "thelowland")!))
        listOfBooks.append(Categories(title: "Mocking Bird", coverImage: UIImage(named: "mockingbird")!))
        } else if genre == .classic {
            listOfBooks.append(Categories(title: "David Copperfield", coverImage: UIImage(named: "davidcopperfield")!))
            listOfBooks.append(Categories(title: "Great Expectations", coverImage: UIImage(named: "greatexpectations")!))
            listOfBooks.append(Categories(title: "Oliver Twist", coverImage: UIImage(named: "olivertwist")!))
            listOfBooks.append(Categories(title: "Little Woman", coverImage: UIImage(named: "littlewoman1")!))
            listOfBooks.append(Categories(title: "Pride and Prejudice", coverImage: UIImage(named: "pride-and-prejudice")!))
            listOfBooks.append(Categories(title: "Little Fires Everywhere", coverImage: UIImage(named: "littlefireseverywhere")!))
            listOfBooks.append(Categories(title: "The Three Musketeers", coverImage: UIImage(named: "the-three-musketeers")!))
            listOfBooks.append(Categories(title: "Treasure Island", coverImage: UIImage(named: "treasureisland")!))
            listOfBooks.append(Categories(title: "Wuthering Heights", coverImage: UIImage(named: "wutheringheights")!))
        } else if genre == .biography {
            listOfBooks.append(Categories(title: "The Diary of a Young Girl", coverImage: UIImage(named: "annefrank")!))
            listOfBooks.append(Categories(title: "Becoming", coverImage: UIImage(named: "becoming")!))
            listOfBooks.append(Categories(title: "Elon Musk", coverImage: UIImage(named: "elonmusk")!))
            listOfBooks.append(Categories(title: "I am Malala", coverImage: UIImage(named: "malala")!))
            listOfBooks.append(Categories(title: "Steve Jobs", coverImage: UIImage(named: "stevejobs")!))
            listOfBooks.append(Categories(title: "Wings Of Fire", coverImage: UIImage(named: "wingsoffire")!))
        } else if genre == .selfhelp {
            listOfBooks.append(Categories(title: "Atomic Habits", coverImage: UIImage(named: "atomichabits")!))
            listOfBooks.append(Categories(title: "Ikigai", coverImage: UIImage(named: "ikigai")!))
            listOfBooks.append(Categories(title: "The Power of Now", coverImage: UIImage(named: "powerofnow")!))
            listOfBooks.append(Categories(title: "Rich Dad Poor Dad", coverImage: UIImage(named: "richdad")!))
            listOfBooks.append(Categories(title: "The Subtle Art", coverImage: UIImage(named: "subtleart")!))
        } else if genre == .thriller {
            listOfBooks.append(Categories(title: "And Then There Were None", coverImage: UIImage(named: "andtherewerenone")!))
            listOfBooks.append(Categories(title: "Peril at End House", coverImage: UIImage(named: "peril")!))
            listOfBooks.append(Categories(title: "Big Little Lies", coverImage: UIImage(named: "biglittlelies")!))
            listOfBooks.append(Categories(title: "The Cuckoo Calling", coverImage: UIImage(named: "cuckoo")!))
            listOfBooks.append(Categories(title: "Gone Girl", coverImage: UIImage(named: "gonegirl")!))
            listOfBooks.append(Categories(title: "The Hounds of Baskervilles", coverImage: UIImage(named: "hounds")!))
        }
    return listOfBooks
 }
}
