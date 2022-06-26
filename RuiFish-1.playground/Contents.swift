import UIKit

let noOfLines = 5
let headFactor = 3.5
let bodyFactor = 4
let tailFactor = 3

for i in 0..<5 {
    print(String(repeating: " ", count: (noOfLines - i - 1) * Int(headFactor)),terminator: "")
    print(String(repeating: "*", count: (i*2 + 1) * Int(bodyFactor)), terminator: "")
    print(String(repeating: " ", count: (2 * (noOfLines - i - 1) * Int(tailFactor))), terminator: "")
    print(String(repeating: "*", count: i + 1))
}

for i in 1..<5 {
    print(String(repeating: " ", count: i * Int(headFactor)), terminator: "")
    print(String(repeating: "*", count: ((noOfLines - i - 1)*2 + 1) * Int(bodyFactor)), terminator: "")
    print(String(repeating: " ", count: (i*2) * Int(tailFactor)), terminator: "")
    print(String(repeating: "*", count: (noOfLines - i - 1) + 1))
}


