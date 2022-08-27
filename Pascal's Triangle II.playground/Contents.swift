import UIKit

class Solution {
    var pascalArray = [[Int]]()
    func getRow(_ rowIndex: Int) -> [Int] {
        pascalArray = Array(repeating: Array(repeating: 0, count: rowIndex + 1), count: rowIndex + 1)
        
        for i in 0...rowIndex {
            pascalArray[rowIndex][i] = getElement(rowIndex, i)
        }
        
        return pascalArray[rowIndex]
    }
    
    func getElement(_ row: Int, _ col: Int) -> Int {
        if pascalArray[row][col] == 0 {
            //print("\(row), \(col)")
            if col == 0 || col == row {
                pascalArray[row][col] = 1
                return pascalArray[row][col]
            }
            pascalArray[row][col] = getElement(row - 1, col) + getElement(row - 1, col - 1)
            return pascalArray[row][col]
        } else {
            return pascalArray[row][col]
        }
    }
}
