//
//  result.swift
//  Spelling
//
//  Created by hayden on 2025-03-28.
//

import Foundation
struct result: Identifiable {
    let id = UUID() // unique identifier
    
    //The item the user was randomly givem
    let item: Item
    
    // What the user guessed
    let guessprovided: String
    
    // Was the User correct?
    let outcome: Outcome
}
