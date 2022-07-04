import UIKit

func characterReplacement(_ s: String, _ k: Int) -> Int {
    let charArray = Array(s)
    
    var l = 0
    var r = 0
    var result = 0
    var dict: [Character: Int] = [:]
    for r in 0..<charArray.count {
        if let value = dict[charArray[r]] {
            dict[charArray[r]] = value + 1
        } else {
            dict[charArray[r]] = 1
        }
        
        if r - l + 1 - (dict.values.max() ?? 0) > k {
            dict[charArray[l]]! -= 1
            l += 1
        }
        
        result = max(result, r - l + 1)
    }
    
    return result
}

print(characterReplacement("AABABBA", 1))
