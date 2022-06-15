import UIKit

func groupAnagrams(_ strs: [String]) -> [[String]] {
    let string = strs
    var map: [[Character] : [String]] = [:]
    
    for str in string {
        var sortedCharacterSet = Array(str)
        sortedCharacterSet.sort()
        let setOfCharacters: [Character] = sortedCharacterSet
        var mapValueArray: [String] = [str]
        
        if var matchedValues = map[setOfCharacters] {
            matchedValues.append(str)
            mapValueArray = matchedValues
        }
        
        map[setOfCharacters] = mapValueArray
    }
    
    var result: [[String]] = []
    
    for key in map.keys {
        guard let valueForKey = map[key] else { return [] }
        result.append(valueForKey)
    }
    
    return result
}


let strs = ["eat","tea","tan","ate","nat","bat"]
//let strs = ["eat","eat","eat","eat","eat","eat"]
print(groupAnagrams(strs))


