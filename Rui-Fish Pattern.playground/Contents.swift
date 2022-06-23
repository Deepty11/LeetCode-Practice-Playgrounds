import UIKit

func drawRuiFish(_ n: Int, multiples: Int) -> String{
    var pattern =  ""
    var numOfStarsForBody = multiples
    var numOfspaces = n - 1
    var numOfStarsForTail = 1
    
    for i in 1...n {
        pattern += addCharacters(with: numOfspaces, character: " ")
        + addCharacters(with: numOfStarsForBody, character: "*")
        + addCharacters(with: multiples * (n - i), character: " ")
        + addCharacters(with: numOfStarsForTail, character: "*")
        + "\n"
        
        numOfspaces -= 1
        numOfStarsForBody = multiples * (i+1)
        numOfStarsForTail += 1
        
    }
    
    numOfspaces = 1
    numOfStarsForBody = multiples * (n - 1)
    numOfStarsForTail = numOfStarsForTail - 2
    
    for i in 1...(n - 1) {
        //print(numOfStarsForBody)
        pattern += addCharacters(with: numOfspaces, character: " ")
        + addCharacters(with: numOfStarsForBody, character: "*")
        + addCharacters(with: multiples * i, character: " ")
        + addCharacters(with: numOfStarsForTail, character: "*")
        + "\n"
        
        numOfspaces += 1
        numOfStarsForBody = multiples * (n - i - 1)
        numOfStarsForTail -= 1
        
    }

    return pattern
}

func addCharacters(with range: Int, character: String ) -> String {
    var pattern = ""
    for _ in 0..<range {
        pattern += character
    }
    
    return pattern
}


print(drawRuiFish(10, multiples: 5))

