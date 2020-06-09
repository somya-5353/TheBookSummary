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
    var summary:String

    init(title: String, coverImage: UIImage, author: String, summary: String) {
        self.title = title
        self.coverImage = coverImage
        self.author = author
        self.summary = summary
    }
    
   static func getBooksForCategory(genre: GenresAvailable) -> [Categories] {
        var listOfBooks:[Categories] = []
        
        if genre == .fiction {
            listOfBooks.append(Categories(title: "Alchemist", coverImage: UIImage(named: "alchemist")!, author: "Paulo Coelho", summary: Summary.alchemist))
            listOfBooks.append(Categories(title: "All The Light We Cannot See", coverImage: UIImage(named: "allthelightthatyoucannotsee")!, author: "Anthony Doerr", summary: Summary.light))
            listOfBooks.append(Categories(title: "Inferno", coverImage: UIImage(named: "inferno")!, author: "Dan Brown", summary: Summary.inferno))
            listOfBooks.append(Categories(title: "Little Fires Everywhere", coverImage: UIImage(named: "littlefireseverywhere")!, author: "Celeste Ng", summary: Summary.fires))
            listOfBooks.append(Categories(title: "The Kite Runner", coverImage: UIImage(named: "thekiterunner")!, author: "Khaleid Hossassni", summary: Summary.kite))
            listOfBooks.append(Categories(title: "The Lowland", coverImage: UIImage(named: "thelowland")!, author: "Jhumpa Lahiri", summary: Summary.lowland))
            listOfBooks.append(Categories(title: "Mocking Bird", coverImage: UIImage(named: "mockingbird")!, author: "Harper Lee", summary: Summary.mocking))
            listOfBooks.append(Categories(title: "Where the CrawDads Sing", coverImage: UIImage(named: "crawdads")!, author: "Delia Owens", summary: Summary.crawdad))
            listOfBooks.append(Categories(title: "And The Mountains Echoed", coverImage: UIImage(named: "mountains")!, author: "Khaled Hosseini", summary: Summary.mountains))
            listOfBooks.append(Categories(title: "The Pearl that Broke it's Shell", coverImage: UIImage(named: "pearl")!, author: "Nadia Hashimi", summary: Summary.pearl))
            listOfBooks.append(Categories(title: "Where the CrawDads Sing", coverImage: UIImage(named: "crawdads")!, author: "Delia Owens", summary: Summary.crawdad))
            listOfBooks.append(Categories(title: "Bird Box", coverImage: UIImage(named: "birdbox")!, author: "Josh Malerman", summary: Summary.bird))
            listOfBooks.append(Categories(title: "Veronica Decides to Die", coverImage: UIImage(named: "veronica")!, author: "Paulo Coelho", summary: Summary.veronica))
            
        } else if genre == .classic {
            listOfBooks.append(Categories(title: "David Copperfield", coverImage: UIImage(named: "davidcopperfield")!, author: "Charles Dickens", summary: Summary.david))
            listOfBooks.append(Categories(title: "Great Expectations", coverImage: UIImage(named: "greatexpectations")!, author: "Charles Dickens", summary: Summary.great))
            listOfBooks.append(Categories(title: "Oliver Twist", coverImage: UIImage(named: "olivertwist")!, author: "Charles Dickens", summary: Summary.oliver))
            listOfBooks.append(Categories(title: "Little Woman", coverImage: UIImage(named: "littlewoman1")!, author: "Louisa May Alcotta", summary: Summary.little))
            listOfBooks.append(Categories(title: "Pride and Prejudice", coverImage: UIImage(named: "pride-and-prejudice")!, author: "Jane Austen", summary: Summary.pride))
            listOfBooks.append(Categories(title: "The Three Musketeers", coverImage: UIImage(named: "the-three-musketeers")!, author: "Alexandre Dumas", summary: Summary.three))
            listOfBooks.append(Categories(title: "Treasure Island", coverImage: UIImage(named: "treasureisland")!, author: "Robert Louis Stevenson", summary: Summary.treasure))
            listOfBooks.append(Categories(title: "Wuthering Heights", coverImage: UIImage(named: "wutheringheights")!, author: "Emily Bronte", summary: Summary.wuthering))
            listOfBooks.append(Categories(title: "1984", coverImage: UIImage(named: "1984")!, author: "George Orwell", summary: Summary.orwell))
            listOfBooks.append(Categories(title: "Clarissa", coverImage: UIImage(named: "clarissa")!, author: "Alicia Cameron", summary: Summary.clarissa))
            listOfBooks.append(Categories(title: "Emma", coverImage: UIImage(named: "emma")!, author: "Jane Austen", summary: Summary.emma))
            listOfBooks.append(Categories(title: "The Adventures of Huckleberry Finn", coverImage: UIImage(named: "finn")!, author: "Mark Twain", summary: Summary.huckleberry))
            listOfBooks.append(Categories(title: "Robinson Crusoe", coverImage: UIImage(named: "robinson")!, author: "Daniel Defoe", summary: Summary.robinson))
            listOfBooks.append(Categories(title: "Frankeistein", coverImage: UIImage(named: "frank")!, author: "Mary Shelley", summary: Summary.frank))
            listOfBooks.append(Categories(title: "The History of Tom Jones", coverImage: UIImage(named: "tom")!, author: "John Fielding", summary: Summary.jones))
        } else if genre == .biography {
            listOfBooks.append(Categories(title: "The Diary of a Young Girl", coverImage: UIImage(named: "annefrank")!, author: "", summary: Summary.anne))
            listOfBooks.append(Categories(title: "Becoming", coverImage: UIImage(named: "becoming")!, author: "", summary: Summary.becoming))
            listOfBooks.append(Categories(title: "Elon Musk", coverImage: UIImage(named: "elonmusk")!, author: "", summary: Summary.elon))
            listOfBooks.append(Categories(title: "I am Malala", coverImage: UIImage(named: "malala")!, author: "", summary: Summary.malala))
            listOfBooks.append(Categories(title: "Steve Jobs", coverImage: UIImage(named: "stevejobs")!, author: "", summary: Summary.steve))
            listOfBooks.append(Categories(title: "Wings Of Fire", coverImage: UIImage(named: "wingsoffire")!, author: "", summary: Summary.wings))
            listOfBooks.append(Categories(title: "Into the Wild", coverImage: UIImage(named: "wild")!,author: "", summary: Summary.wild))
            listOfBooks.append(Categories(title: "A Beautiful Mind", coverImage: UIImage(named: "mind")!, author: "", summary: Summary.search))
        } else if genre == .selfhelp {
            listOfBooks.append(Categories(title: "Atomic Habits", coverImage: UIImage(named: "atomichabits")!, author: "James Clear", summary: Summary.atomic))
            listOfBooks.append(Categories(title: "Ikigai", coverImage: UIImage(named: "ikigai")!, author: "", summary: Summary.ikigai))
            listOfBooks.append(Categories(title: "The Power of Now", coverImage: UIImage(named: "powerofnow")!, author: "Eckharte Tolle", summary: Summary.power))
            listOfBooks.append(Categories(title: "Rich Dad Poor Dad", coverImage: UIImage(named: "richdad")!, author: "Robert Kiyoskayi", summary: Summary.rich))
            listOfBooks.append(Categories(title: "The Subtle Art", coverImage: UIImage(named: "subtleart")!, author: "Mark Manson", summary: Summary.subtle))
            listOfBooks.append(Categories(title: "Man's Search for Meaning", coverImage: UIImage(named: "search")!, author: "Viktore Frankl", summary: Summary.search))
            listOfBooks.append(Categories(title: "The Monk Who Sold his Ferrari", coverImage: UIImage(named: "monk")!, author: "Robin Sharma", summary: Summary.malala))
        } else if genre == .thriller {
            listOfBooks.append(Categories(title: "And Then There Were None", coverImage: UIImage(named: "andtherewerenone")!, author: "Agatha Christie", summary: Summary.none))
            listOfBooks.append(Categories(title: "Peril at End House", coverImage: UIImage(named: "peril")!, author: "Agatha Christie", summary: Summary.peril))
            listOfBooks.append(Categories(title: "Big Little Lies", coverImage: UIImage(named: "biglittlelies")!, author: "Liane Moriarty", summary: Summary.lies))
            listOfBooks.append(Categories(title: "The Cuckoo Calling", coverImage: UIImage(named: "cuckoo")!, author: "Robert Galbraith", summary: Summary.cuckoo))
            listOfBooks.append(Categories(title: "Gone Girl", coverImage: UIImage(named: "gonegirl")!, author: "Gillian Flynn", summary: Summary.gone))
            listOfBooks.append(Categories(title: "The Hounds of Baskervilles", coverImage: UIImage(named: "hounds")!, author: "Arthur Conan Doyle", summary: Summary.hounds))
            listOfBooks.append(Categories(title: "Cards on the Table", coverImage: UIImage(named: "cards")!, author: "Agatha Christie", summary: Summary.cards))
            listOfBooks.append(Categories(title: "Death on the Nile", coverImage: UIImage(named: "nile")!, author: "Agatha Christie", summary: Summary.nile))
            listOfBooks.append(Categories(title: "Into the Water", coverImage: UIImage(named: "water")!, author: "Paula Hawkins", summary: Summary.water))
            listOfBooks.append(Categories(title: "Hercule Poirot's Christmas", coverImage: UIImage(named: "christmas")!, author: "Agatha Christie", summary: Summary.christmas))
            listOfBooks.append(Categories(title: "Murder on the Orient Express", coverImage: UIImage(named: "orient")!, author: "Agatha Christie", summary: Summary.orient))
            listOfBooks.append(Categories(title: "The SilkWorm", coverImage: UIImage(named: "silkworm")!, author: "Robert Galbraith", summary: Summary.silkworm))
            listOfBooks.append(Categories(title: "Sleeping Murder", coverImage: UIImage(named: "sleeping")!, author: "Agatha Christie", summary: Summary.sleeping))
        }
    return listOfBooks
 }
    
   //function to get the genre of the book
    static func getGenre(id: String) -> GenresAvailable {
        
        if (id == Summary.alchemist || id == Summary.light || id == Summary.crawdad || id == Summary.inferno || id == Summary.kite || id == Summary.mocking || id == Summary.pearl || id == Summary.mountains || id == Summary.bird || id == Summary.fires || id == Summary.inferno || id == Summary.lowland || id == Summary.veronica) {
            return .fiction
        } else if (id == Summary.peril || id == Summary.christmas || id == Summary.cards || id == Summary.cuckoo || id == Summary.silkworm || id == Summary.sleeping || id == Summary.nile || id == Summary.lies || id == Summary.gone || id == Summary.none || id == Summary.hounds || id == Summary.water || id == Summary.orient) {
            return .thriller
        } else if (id == Summary.david || id == Summary.oliver || id == Summary.treasure || id == Summary.three || id == Summary.robinson || id == Summary.clarissa || id == Summary.emma || id == Summary.pride || id == Summary.frank || id == Summary.jones || id == Summary.little || id == Summary.wuthering || id == Summary.great || id == Summary.orwell || id == Summary.huckleberry) {
            return .classic
        } else if (id == Summary.anne || id == Summary.becoming || id == Summary.steve || id == Summary.elon || id == Summary.wings || id == Summary.wild || id == Summary.search || id == Summary.malala) {
            return .biography
        } else if (id == Summary.atomic || id == Summary.rich || id == Summary.ikigai || id == Summary.power || id == Summary.search || id == Summary.subtle) {
            return .selfhelp
        }
        return .unknown
    }
}
