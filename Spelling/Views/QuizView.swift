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
            // Allow the user to input their guest
            TextField("Enter the name of the item", text: $userGuest)
            
            // Make it possible to check the guest made
            Button {
                checkGuess()
            } label: {
                Text("Submit")
            }

            
        }
        
    }
    
    // MARK: FUNCRIONS
    func checkGuess(){
        if userGuest == currentItem.word{
            print("Correct")
        }else{
            print("False")
        }
    }
}

#Preview {
    QuizView()
}
