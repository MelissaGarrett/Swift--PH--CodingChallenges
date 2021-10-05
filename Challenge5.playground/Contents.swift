import Foundation

/* A function that accepts a string and returns
 how many times a specific character appears,
 taking case into account
 */

func countTheCharacters(input: String, character: Character) -> Int {
    var characterCount = 0
    
    for letter in input {
        if letter == character {
            characterCount += 1
        }
    }
    
    return characterCount
}

assert(countTheCharacters(input: "The rain in Spain", character: "a") == 2, "Challenge 5 failed")
assert(countTheCharacters(input: "Mississippi", character: "i") == 4, "Challenge 5 failed")
assert(countTheCharacters(input: "Hacking with Swift", character: "i") == 3, "Challenge 5 failed")
