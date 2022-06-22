import UIKit
import Darwin

// recursion
//func myPow(_ x: Double, _ n: Int) -> Double {
//    if x == 1 {
//        return 1.0
//    } else if n == 1 {
//        return x * Double(n)
//    } else {
//        let power = n > 0 ? n : -n
//        let value = n > 0 ? x : (1/x)
//        return myPow(value, power/2) * myPow(value, (power - power/2))
//    }
//}

//func myPow(_ x: Double, _ n: Int) -> Double {
//    
//}

let x = 2.00000
let n = 10

let x1 = 2.00000
let n1 = -2

let x2 = 2.00000
let n2 = -2147483647
print(myPow(x2, n2))
