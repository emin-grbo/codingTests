
// MARK: Given a string, find the length of the longest substring without repeating characters.

import UIKit

var input = "abrkaabcdefghijjxxx"

func longestStreak(string: String) -> Int {
    var count = 0
    var stringCopy = ""
    var maxCount = 0
    
    for char in string {
        if !stringCopy.contains(char) {
            stringCopy += String(char)
            count += 1
            maxCount = maxCount > count ? maxCount : count
        } else {
            count = 0
            stringCopy = ""
        }
    }
    return maxCount
}

longestStreak(string: input)
print(longestStreak(string: input))
