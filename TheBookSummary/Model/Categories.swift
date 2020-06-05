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
    var author:String
    
    init(title: String, coverImage: UIImage, author: String) {
        self.title = title
        self.coverImage = coverImage
        self.author = author
    }
    
   static func getBooksForCategory(genre: GenresAvailable) -> [Categories] {
        var listOfBooks:[Categories] = []
        
        if genre == .fiction {
            listOfBooks.append(Categories(title: "Alchemist", coverImage: UIImage(named: "alchemist")!, author: "Paulo Coelho"))
        listOfBooks.append(Categories(title: "All The Light We Cannot See", coverImage: UIImage(named: "allthelightthatyoucannotsee")!, author: "Anthony Doerr"))
        listOfBooks.append(Categories(title: "Gone Girl", coverImage: UIImage(named: "gonegirl")!, author: "Gillian Flynn"))
        listOfBooks.append(Categories(title: "Inferno", coverImage: UIImage(named: "inferno")!, author: "Dan Brown"))
            listOfBooks.append(Categories(title: "Little Fires Everywhere", coverImage: UIImage(named: "littlefireseverywhere")!, author: "Celeste Ng" ))
            listOfBooks.append(Categories(title: "The Kite Runner", coverImage: UIImage(named: "thekiterunner")!, author: "Khaleid Hossassni"))
        listOfBooks.append(Categories(title: "The Lowland", coverImage: UIImage(named: "thelowland")!, author: "Jhumpa Lahiri"))
        listOfBooks.append(Categories(title: "Mocking Bird", coverImage: UIImage(named: "mockingbird")!, author: "Harper Lee"))
        listOfBooks.append(Categories(title: "David Copperfield", coverImage: UIImage(named: "davidcopperfield")!, author: "Charles Dickens"))
            listOfBooks.append(Categories(title: "Great Expectations", coverImage: UIImage(named: "greatexpectations")!, author: "Charles Dickens"))
        listOfBooks.append(Categories(title: "Oliver Twist", coverImage: UIImage(named: "olivertwist")!, author: "Charles Dickens"))
            listOfBooks.append(Categories(title: "Little Woman", coverImage: UIImage(named: "littlewoman1")!, author: "Louisa May Alcotta"))
        listOfBooks.append(Categories(title: "Pride and Prejudice", coverImage: UIImage(named: "pride-and-prejudice")!, author: "Jane Austen"))
        listOfBooks.append(Categories(title: "The Three Musketeers", coverImage: UIImage(named: "the-three-musketeers")!, author: "Alexander Dumas"))
        listOfBooks.append(Categories(title: "Treasure Island", coverImage: UIImage(named: "treasureisland")!, author: "Robert Louis Stevenson"))
        listOfBooks.append(Categories(title: "Wuthering Heights", coverImage: UIImage(named: "wutheringheights")!, author: "Emily Bronte"))
        listOfBooks.append(Categories(title: "1984", coverImage: UIImage(named: "1984")!, author: "George Orwell"))
        listOfBooks.append(Categories(title: "Clarissa", coverImage: UIImage(named: "clarissa")!, author: "Alicia Cameron"))
            listOfBooks.append(Categories(title: "Emma", coverImage: UIImage(named: "emma")!, author: "Jane Austen"))
        listOfBooks.append(Categories(title: "The Adventures of Huckleberry Finn", coverImage: UIImage(named: "finn")!, author: "Mark Twain"))
        listOfBooks.append(Categories(title: "Robinson Crusoe", coverImage: UIImage(named: "robinson")!, author: "Daniel Defoe"))
            listOfBooks.append(Categories(title: "Frankeistein", coverImage: UIImage(named: "frank")!, author: "Mary Shelley"))
        listOfBooks.append(Categories(title: "The History of Tom Jones", coverImage: UIImage(named: "tom")!, author: "Henry Fielding"))
        listOfBooks.append(Categories(title: "And Then There Were None", coverImage: UIImage(named: "andtherewerenone")!, author: "Agatha Christie"))
        listOfBooks.append(Categories(title: "Peril at End House", coverImage: UIImage(named: "peril")!, author: "Agatha Christie"))
            listOfBooks.append(Categories(title: "Big Little Lies", coverImage: UIImage(named: "biglittlelies")!, author: "Liane Moriarty"))
        listOfBooks.append(Categories(title: "The Cuckoo Calling", coverImage: UIImage(named: "cuckoo")!, author: "Robert Galbraith"))
        listOfBooks.append(Categories(title: "Gone Girl", coverImage: UIImage(named: "gonegirl")!, author: "Gillian Flynn"))
        listOfBooks.append(Categories(title: "The Hounds of Baskervilles", coverImage: UIImage(named: "hounds")!, author: "Arthur Conan Doyle"))
            listOfBooks.append(Categories(title: "Cards on the Table", coverImage: UIImage(named: "cards")!, author: "Agatha Christie"))
        listOfBooks.append(Categories(title: "Death on the Nile", coverImage: UIImage(named: "nile")!, author: "Agatha Christie"))
        listOfBooks.append(Categories(title: "Into the Water", coverImage: UIImage(named: "water")!, author: "Paula Hawkins"))
        listOfBooks.append(Categories(title: "Hercule Poirot's Christmas", coverImage: UIImage(named: "christmas")!, author: "Agatha Christie"))
        listOfBooks.append(Categories(title: "Murder on the Orient Express", coverImage: UIImage(named: "orient")!, author: "Agatha Christie"))
            listOfBooks.append(Categories(title: "The SilkWorm", coverImage: UIImage(named: "silkworm")!, author: "Robert Galbraith"))
        listOfBooks.append(Categories(title: "Sleeping Murder", coverImage: UIImage(named: "sleeping")!, author: "Agatha Christie"))
        listOfBooks.append(Categories(title: "Bird Box", coverImage: UIImage(named: "birdbox")!, author: "Josh Malerman"))
        listOfBooks.append(Categories(title: "Where the CrawDads Sing", coverImage: UIImage(named: "crawdads")!, author: "Delia Owens"))
        } else if genre == .classic {
            listOfBooks.append(Categories(title: "David Copperfield", coverImage: UIImage(named: "davidcopperfield")!, author: "Charles Dickens"))
            listOfBooks.append(Categories(title: "Great Expectations", coverImage: UIImage(named: "greatexpectations")!, author: "Charles Dickens"))
            listOfBooks.append(Categories(title: "Oliver Twist", coverImage: UIImage(named: "olivertwist")!, author: "Charles Dickens"))
            listOfBooks.append(Categories(title: "Little Woman", coverImage: UIImage(named: "littlewoman1")!, author: "Louisa May Alcotta"))
            listOfBooks.append(Categories(title: "Pride and Prejudice", coverImage: UIImage(named: "pride-and-prejudice")!, author: "Jane Austen"))
            listOfBooks.append(Categories(title: "The Three Musketeers", coverImage: UIImage(named: "the-three-musketeers")!, author: "Alexandre Dumas"))
            listOfBooks.append(Categories(title: "Treasure Island", coverImage: UIImage(named: "treasureisland")!, author: "Robert Louis Stevenson"))
            listOfBooks.append(Categories(title: "Wuthering Heights", coverImage: UIImage(named: "wutheringheights")!, author: "Emily Bronte"))
            listOfBooks.append(Categories(title: "1984", coverImage: UIImage(named: "1984")!, author: "George Orwell"))
            listOfBooks.append(Categories(title: "Clarissa", coverImage: UIImage(named: "clarissa")!, author: "Alicia Cameron"))
            listOfBooks.append(Categories(title: "Emma", coverImage: UIImage(named: "emma")!, author: "Jane Austen"))
            listOfBooks.append(Categories(title: "The Adventures of Huckleberry Finn", coverImage: UIImage(named: "finn")!, author: "Mark Twain"))
            listOfBooks.append(Categories(title: "Robinson Crusoe", coverImage: UIImage(named: "robinson")!, author: "Daniel Defoe"))
             listOfBooks.append(Categories(title: "Frankeistein", coverImage: UIImage(named: "frank")!, author: "Mary Shelley"))
             listOfBooks.append(Categories(title: "The History of Tom Jones", coverImage: UIImage(named: "tom")!, author: "John Fielding"))
        } else if genre == .biography {
            listOfBooks.append(Categories(title: "The Diary of a Young Girl", coverImage: UIImage(named: "annefrank")!, author: ""))
            listOfBooks.append(Categories(title: "Becoming", coverImage: UIImage(named: "becoming")!, author: ""))
            listOfBooks.append(Categories(title: "Elon Musk", coverImage: UIImage(named: "elonmusk")!, author: ""))
            listOfBooks.append(Categories(title: "I am Malala", coverImage: UIImage(named: "malala")!, author: ""))
            listOfBooks.append(Categories(title: "Steve Jobs", coverImage: UIImage(named: "stevejobs")!, author: ""))
            listOfBooks.append(Categories(title: "Wings Of Fire", coverImage: UIImage(named: "wingsoffire")!, author: ""))
             listOfBooks.append(Categories(title: "Into the Wild", coverImage: UIImage(named: "wild")!,author: ""))
             listOfBooks.append(Categories(title: "A Beautiful Mind", coverImage: UIImage(named: "mind")!, author: ""))
        } else if genre == .selfhelp {
            listOfBooks.append(Categories(title: "Atomic Habits", coverImage: UIImage(named: "atomichabits")!, author: "James Clear"))
            listOfBooks.append(Categories(title: "Ikigai", coverImage: UIImage(named: "ikigai")!, author: ""))
            listOfBooks.append(Categories(title: "The Power of Now", coverImage: UIImage(named: "powerofnow")!, author: "Eckharte Tolle"))
            listOfBooks.append(Categories(title: "Rich Dad Poor Dad", coverImage: UIImage(named: "richdad")!, author: "Robert Kirloskari"))
            listOfBooks.append(Categories(title: "The Subtle Art", coverImage: UIImage(named: "subtleart")!, author: "Mark Manson"))
             listOfBooks.append(Categories(title: "Man's Search for Meaning", coverImage: UIImage(named: "search")!, author: "Viktore Frankl"))
             listOfBooks.append(Categories(title: "The Monk Who Sold his Ferrari", coverImage: UIImage(named: "monk")!, author: "Robin Sharma"))
        } else if genre == .thriller {
            listOfBooks.append(Categories(title: "And Then There Were None", coverImage: UIImage(named: "andtherewerenone")!, author: "Agatha Christie"))
            listOfBooks.append(Categories(title: "Peril at End House", coverImage: UIImage(named: "peril")!, author: "Agatha Christie"))
            listOfBooks.append(Categories(title: "Big Little Lies", coverImage: UIImage(named: "biglittlelies")!, author: "Liane Moriarty"))
            listOfBooks.append(Categories(title: "The Cuckoo Calling", coverImage: UIImage(named: "cuckoo")!, author: "Robert Galbraith"))
            listOfBooks.append(Categories(title: "Gone Girl", coverImage: UIImage(named: "gonegirl")!, author: "Gillian Flynn"))
            listOfBooks.append(Categories(title: "The Hounds of Baskervilles", coverImage: UIImage(named: "hounds")!, author: "Arthur Conan Doyle"))
             listOfBooks.append(Categories(title: "Cards on the Table", coverImage: UIImage(named: "cards")!, author: "Agatha Christie"))
             listOfBooks.append(Categories(title: "Death on the Nile", coverImage: UIImage(named: "nile")!, author: "Agatha Christie"))
             listOfBooks.append(Categories(title: "Into the Water", coverImage: UIImage(named: "water")!, author: "Paula Hawkins"))
             listOfBooks.append(Categories(title: "Hercule Poirot's Christmas", coverImage: UIImage(named: "christmas")!, author: "Agatha Christie"))
             listOfBooks.append(Categories(title: "Murder on the Orient Express", coverImage: UIImage(named: "orient")!, author: "Agatha Christie"))
             listOfBooks.append(Categories(title: "The SilkWorm", coverImage: UIImage(named: "silkworm")!, author: "Robert Galbraith"))
             listOfBooks.append(Categories(title: "Sleeping Murder", coverImage: UIImage(named: "sleeping")!, author: "Agatha Christie"))
        }
    return listOfBooks
 }
}
