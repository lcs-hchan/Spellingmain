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
    
    // The Outcome
    @State var currentOutcome: Outcome = .undetermined
    
    // An array to store results of user's guesses
    @State var history: [result] = [] //empty array
    
    // MARK: Computed properties
    var body: some View {

        HStack{
            // Left side
            VStack {
                Image(currentItem.imageName)
                    .resizable()
                    .scaledToFit()
                HStack{
                    // Allow the user to input their guest
                    TextField("Enter the name of the item", text: $userGuest)
                    
                    // Show outcome shows the string attached to each case in the enumeration
                    Text(currentOutcome.rawValue)
                }
                HStack{
                    // Make it possible to check the guest made
                    Button {
                        checkGuess()
                    } label: {
                        Text("Submit")
                    }
                    
                    // Pick a new word
                    Button {
                        newWord()
                    } label: {
                        Text("New word")
                    }
                    
                }
                
                
            }
            // Right side
            List(history){ currentResult in
                HStack{
                    Image(currentResult.item.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text(currentResult.guessprovided)
                    Spacer()
                    Text(currentResult.outcome.rawValue)
                }
            }
        }
        
    }
    
    // MARK: FUNCRIONS
    func checkGuess(){
        if userGuest == currentItem.word{
            print("Correct")
            currentOutcome = .correct
        }else{
            print("False")
            currentOutcome = .incorrect
        }
    }
    
    func newWord(){
        // Add current result to history
        history.insert(
            result(
                item: currentItem,
                guessprovided: userGuest,
                outcome: currentOutcome
            ),
            at: 0
        )
        
        // DEBUG: What is in the history array
        print(history)
        // Reser for a new question
        currentItem = itemsToSpell.randomElement()!
        userGuest = ""
        currentOutcome = .undetermined
    }
}

#Preview {
    QuizView()
}
