//
//  QuizView.swift
//  Spelling
//
//  Created by Russell Gordon on 2023-10-30.
//

import SwiftUI

struct QuizView: View {
    
    // MARK: Stored properties
    @State var currentItem = itemsToSpell.randomElement()!
    
    // The User's guest
    @State var userGuest = ""
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            Image(currentItem.imageName)
                .resizable()
                .scaledToFit()
            
        }
        
    }
}

#Preview {
    QuizView()
}
