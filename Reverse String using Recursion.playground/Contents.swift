import UIKit

func reverseString(_ s: inout [Character]) -> [Character]{
    return reverse(&s, 0, s.count - 1)
}

func reverse(_ s: inout[Character], _ startIndex: Int, _ endIndex: Int) -> [Character]{
    if startIndex <= endIndex {
        let temp = s[startIndex]
        s[startIndex] = s[endIndex]
        s[endIndex] = temp
        
        return reverse(&s, startIndex + 1, endIndex - 1)
    }
    
    return s
}

var str: [Character] = ["H","a","n","n","a","h"]

print(reverseString(&str))
