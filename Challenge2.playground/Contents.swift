import Foundation

/*
Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.
 */

func isPalindrome(input: String) -> Bool {
    let lowerCase = input.lowercased()
    
    if String(lowerCase.reversed()) == lowerCase {
        return true
    } else {
        return false
    }
}


assert(isPalindrome(input: "rotator") == true, "Challenge 2 failed")
assert(isPalindrome(input: "Rats live on no evil star") == true, "Challenge 2 failed")
assert(isPalindrome(input: "Never odd or even") == false, "Challenge 2 failed")
assert(isPalindrome(input: "Hello, world") == false, "Challenge 2 failed")
