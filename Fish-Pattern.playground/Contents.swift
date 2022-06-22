import UIKit

func drawFish(_ n: Int) -> String{
    var pattern =  ""
    var numOfStarsForBody = 1
    var numOfspaces = n - numOfStarsForBody
    var numOfStarsForTail = 1
    
    for _ in 0..<n {
        pattern += addCharacters(with: numOfspaces, character: " ")
        + addCharacters(with: numOfStarsForBody, character: "*")
        + addCharacters(with: numOfspaces * 2, character: " ")
        + addCharacters(with: numOfStarsForTail, character: "*")
        + "\n"
        
        numOfspaces -= 1
        numOfStarsForBody += 2
        numOfStarsForTail += 1
        
    }
    
    numOfspaces = 1
    numOfStarsForBody = (n*2 - 1) - (numOfspaces*2)
    numOfStarsForTail = numOfStarsForTail - 2
    
    for _ in 0..<n - 1 {
        pattern += addCharacters(with: numOfspaces, character: " ")
        + addCharacters(with: numOfStarsForBody, character: "*")
        + addCharacters(with: numOfspaces * 2, character: " ")
        + addCharacters(with: numOfStarsForTail, character: "*")
        + "\n"
        
        numOfspaces += 1
        numOfStarsForBody -= 2
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


print(drawFish(4))
