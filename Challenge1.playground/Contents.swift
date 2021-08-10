import Foundation

/*
Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
 */


// My solution
// Not the best because it's an O(n) operation...
// it gets slower as more items are added to the array
func areLettersUnique(input: String) -> Bool {
    var uniqueLetters = [Character]()
    
    for letter in input {
        if uniqueLetters.contains(letter) {
            return false
        } else {
            uniqueLetters.append(letter)
        }
    }
    
    return true
}

// My solution after a hint is given
func areLettersUnique_Better(input: String) -> Bool {
   let uniqueLetters = Set(input)
    
    if uniqueLetters.count == input.count {
        return true
    } else {
        return false
    }
}


assert(areLettersUnique(input: "No duplicates") == true, "Challenge 1 failed")
assert(areLettersUnique(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(areLettersUnique(input: "AaBbCc") == true, "Challenge 1 failed")
assert(areLettersUnique(input: "Hello, world") == false, "Challenge 1 failed")


assert(areLettersUnique_Better(input: "No duplicates") == true, "Challenge 1 failed")
assert(areLettersUnique_Better(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(areLettersUnique_Better(input: "AaBbCc") == true, "Challenge 1 failed")
assert(areLettersUnique_Better(input: "Hello, world") == false, "Challenge 1 failed")
