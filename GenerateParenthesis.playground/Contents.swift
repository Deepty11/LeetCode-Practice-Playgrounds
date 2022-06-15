import UIKit

func generateParenthesis(_ n: Int) -> [String] {
    var initialString = ""
    var targetString = ""
    // creating intial string
    for i in 0..<(n*2) {
        if i<n { initialString.append("(") }
        else { initialString.append(")")}
    }
    // creating target string
    for _ in 0..<n {
        targetString.append("()")
    }
    
    //print(targetString)
    var validStringsSet: Set<String> = [initialString]
    let stringLength = initialString.count
    
    var charArray = Array(initialString)
    validStringsSet.insert(String(charArray))
    
    var i = n - 1
    while(initialString != targetString) {
        if i == initialString.count - 1 { i = 0 }
             
        if i+1 < stringLength - 1
            && (charArray[i] == "(" && charArray[i+1] == ")") {
            // swipe the values
            charArray = swipe(i,i+1, array: charArray)
            
            if isValid(String(charArray)) {
                validStringsSet.insert(String(charArray))
            }
            
            i += 2
        } else {
            i += 1
        }
        initialString = String(charArray)
        print(initialString)
        
    }
    //print("valid Strings: \(Array(validStringsSet))")
    return Array(validStringsSet)
}

func swipe(_ firstIndex: Int, _ secondIndex:Int, array: [Character]) -> [Character]{
    var charArray = array
    let temp = charArray[firstIndex]
    charArray[firstIndex] = charArray[secondIndex]
    charArray[secondIndex] = temp
    
    return charArray
}

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    
    for char in s {
        if stack.isEmpty {
            stack.append(char)
        } else {
            let topVal = stack[stack.count - 1]
            if topVal == "(" && char == ")" {
                stack.remove(at: stack.count - 1)
            } else {
                stack.append(char)
            }
        }
    }
    
    return stack.isEmpty
}

let n = 4
print(generateParenthesis(n))
