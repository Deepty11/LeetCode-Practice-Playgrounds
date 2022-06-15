import UIKit

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    for char in s {
        if stack.isEmpty {
            stack.append(char)
        } else {
            let topVal = stack[stack.count - 1]
            if (topVal == "(" && char == ")") || (topVal == "{" && char == "}") || (topVal == "[" && char == "]") {
                stack.remove(at: stack.count - 1)
            } else {
                stack.append(char)
            }
        }
    }
    
    return stack.isEmpty
}

print(isValid("([()])"))
