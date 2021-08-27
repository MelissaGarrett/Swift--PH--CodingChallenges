import Foundation

/* Write a function that accepts two String parameters, and returns true if they
 contain the same characters in any order taking into account letter case.
 */

func containSameCharacters(inputOne: String, inputTwo: String) -> Bool {
    let sortedStringOne = inputOne.sorted()
    let sortedStringTwo = inputTwo.sorted()
    
    return sortedStringOne == sortedStringTwo
}

assert(containSameCharacters(inputOne: "abca", inputTwo: "abca") == true, "Challenge 3 failed")
assert(containSameCharacters(inputOne: "abc", inputTwo: "cba") == true, "Challenge 3 failed")
assert(containSameCharacters(inputOne: "a1 b2", inputTwo: "b1 a2") == true, "Challenge 3 failed")
assert(containSameCharacters(inputOne: "abc", inputTwo: "abca") == false, "Challenge 3 failed")
assert(containSameCharacters(inputOne: "abc", inputTwo: "Abc") == false, "Challenge 3 failed")
assert(containSameCharacters(inputOne: "abc", inputTwo: "cbAa") == false, "Challenge 3 failed")
assert(containSameCharacters(inputOne: "abcc", inputTwo: "abca") == false, "Challenge 3 failed")
