import Foundation

/* Write own version of contains() method on String
 that ignores letter case without using the existing contains() method
 */

// Not my solution

extension String {
    func stringContainsAnother(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased()) != nil
    }
}

assert("Hello, world".stringContainsAnother("Hello") == true, "Challenge 4 failed")
assert("Hello, world".stringContainsAnother("WORLD") == true, "Challenge 4 failed")
assert("Hello, world".stringContainsAnother("Goodbye") == false, "Challenge 4 failed")
