//
//  Filter.swift
//  Spelling
//
//  Created by hayden on 2025-03-28.
//

import Foundation

//Inputs:
// - the original array
// - what outcome the user wants to see
// (undetermined,incorrect,coreect)
// Output:
//  - the filtered list

func filtering(
    originalList: [result],
    onDesiredOutcome: Outcome
)->[result]{
    // when desired outcome is undetermined,
    // send back the unflitered original array
    if onDesiredOutcome == .undetermined{
        return originalList
    }
    // Create an empty list to populate
    // before returning it
    var filteredResults: [result] = []
    
    // iternate over the entire original list
    for result in originalList {
        // Copy any results that match the deired outcome to the new list
        if result.outcome == onDesiredOutcome{
            filteredResults.append(result)
        }
    }
    // Return the filtered array
    return filteredResults
}

