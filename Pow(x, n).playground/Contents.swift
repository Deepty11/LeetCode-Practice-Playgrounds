import UIKit

func myPow(_ x: Double, _ n: Int) -> Double {
    var ans = 1.0
    var xVal = x
    var nPow = n
    
    if x == 0 { return 0 }
    else if n == 0 { return 1}
    
    if n < 0 {
        nPow = -n
    }
    
    while(nPow > 0) {
        if nPow % 2 == 0 {
            xVal = xVal * xVal
            nPow = nPow / 2
        } else {
            ans = ans * xVal
            nPow -= 1
        }
    }
    
    if n < 0 {
        ans = 1 / ans
    }
    
    return ans
}

let x = 2.00000
let n = 10

let x1 = 2.00000
let n1 = -2

let x2 = 2.00000
let n2 = -2147483647
print(myPow(x2, n2))
