import UIKit

class Solution {
    var array = [0,1,1]
    func tribonacci(_ n: Int) -> Int {
        if n < array.count {
            print(n)
            return array[n]
        }
        
        array.append(tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3))
        return tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3)
    }
}
