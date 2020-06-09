//
//  BooksByGenre.swift
//  TheBookSummary
//
//  Created by Somya on 09/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import Foundation
import UIKit

class BooksByGenre {
    
    static func categorizeBooksByGenre(listOfBooks: [Categories]?) -> [GenresAvailable:[Categories]] {
        
        var booksByGenre:[GenresAvailable:[Categories]] = [:]
        guard let bookList = listOfBooks else { return booksByGenre }
        var fiction:[Categories] = []
        var classic:[Categories] = []
        var thriller:[Categories] = []
        var selfHelp:[Categories] = []
        var biography:[Categories] = []
        
        for book in bookList {
            
            let book_id = book.summary
            let bookGenre = Categories.getGenre(id: book_id)
            switch bookGenre {
                
            case .fiction: fiction.append(book)
                           break
            case .classic: classic.append(book)
                           break
            case .biography: biography.append(book)
                             break
            case .selfhelp: selfHelp.append(book)
                            break
            case .thriller: thriller.append(book)
                            break
            case .unknown: print("No genre!!")
                           break
                
            }
            
        }
        
        booksByGenre[.fiction] = fiction
        booksByGenre[.biography] = biography
        booksByGenre[.classic] = classic
        booksByGenre[.selfhelp] = selfHelp
        booksByGenre[.thriller] = thriller
        return booksByGenre
    }
}
