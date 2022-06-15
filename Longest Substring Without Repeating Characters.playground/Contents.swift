import UIKit

func lengthOfLongestSubstring(_ s: String) -> Int {
    let characterArray = Array(s)
    var maxLength = 0
    var currentSubString:String = ""
    var characterDict: [Character : Int] = [ : ] //[character : index]
    
    var i = 0
    while(i < characterArray.count) {
        //print("i: \(i)")
        if let index = characterDict[characterArray[i]] {
            currentSubString = ""
            characterDict = [ : ]
            i = index + 1
        } else {
            characterDict[characterArray[i]] = i
            currentSubString += String(characterArray[i])
            i += 1
            
        }
        
        //print("currentString: \(currentSubString)")
        
        maxLength = max(currentSubString.count, maxLength)
        
    }
    
    return maxLength
}


let s1 = "abcabcbb"
let s2 = "bbbbb"
let s3 = "dvdf"
let s4 = "pwwkew"
let s5 = "tmmzuxt"

print(lengthOfLongestSubstring(s1))
print(lengthOfLongestSubstring(s2))
print(lengthOfLongestSubstring(s3))
print(lengthOfLongestSubstring(s4))
print(lengthOfLongestSubstring(s5))
