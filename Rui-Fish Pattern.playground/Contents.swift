import UIKit

func drawRuiFish(_ n: Int, multiples: Int) -> String{
    var pattern =  ""
    var numOfStarsForBody = multiples
    var numOfspaces = n - 1
    var numOfStarsForTail = 1
    
    for i in 1...n {
        pattern += String(repeating: " ", count: numOfspaces)
            + String(repeating: "*", count: numOfStarsForBody)
            + String(repeating: " ", count: multiples * (n - i))
            + String(repeating: "*", count: numOfStarsForTail)
            + "\n"
        
        numOfspaces -= 1
        numOfStarsForBody = multiples * (i+1)
        numOfStarsForTail += 1
        
    }
    
    numOfspaces = 1
    numOfStarsForBody = multiples * (n - 1)
    numOfStarsForTail = numOfStarsForTail - 2
    
    for i in 1...(n - 1) {
        pattern += String(repeating: " ", count: numOfspaces)
            + String(repeating: "*", count: numOfStarsForBody)
            + String(repeating: " ", count: multiples * i)
            + String(repeating: "*", count: numOfStarsForTail)
            + "\n"
        
        numOfspaces += 1
        numOfStarsForBody = multiples * (n - i - 1)
        numOfStarsForTail -= 1
        
    }

    return pattern
}


print(drawRuiFish(3, multiples: 3))

