import UIKit

func countBits(_ n: Int) -> [Int] {
    var offset = 1
    var result: [Int] = [0]
    if n == 0 {
        return result
    }
    
    for i in 1...n {
        if i == offset * 2 {
            offset *= 2
        }
        
        result.append(1 + result[i - offset])
    }
    
    return result
}
