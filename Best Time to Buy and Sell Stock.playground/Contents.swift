import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    var maxDiff = 0
    var minVal = Int.max
    var maxProfit = 0
    for i in 0..<prices.count {
        if prices[i] < minVal {
            minVal = prices[i]
        } else {
            maxDiff = prices[i] - minVal
        }
        
        maxProfit = max(maxProfit, maxDiff)
    }
    
    return maxProfit
}



let prices1 = [7,1,5,3,6,4]
let prices2 = [2,1,2,0,1]
let prices3 = [2,1,2,0,1,2]
let prices4 = [2,1,4]
let prices5 = [2,4,1]
let prices6 = [7,6,4,3,1]

print(maxProfit(prices1))
print(maxProfit(prices2))
print(maxProfit(prices3))
print(maxProfit(prices4))
print(maxProfit(prices5))
print(maxProfit(prices6))
