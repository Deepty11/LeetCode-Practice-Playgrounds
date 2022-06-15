import UIKit

func merge(_ intervals: [[Int]]) -> [[Int]] {
    var array = intervals
    var map: [Int: Int] = [:] // [ start: end]
    var key = 0
    //sorting array by comparing the first elements of the ranges in the array
    array.sort { range1, range2 in
        range1[0] < range2[0]
    }
    
    for interval in array {
        if var value = map[key], (interval[0] <= value ) {
            value = max(interval[1], value)
            map[key] = value
        } else {
            map[interval[0]] = interval[1]
            key = interval[0]
        }
    }
    
    let keys = map.keys.sorted()
    var result: [[Int]] = []
    for key in keys {
        guard let value = map[key] else { return [] }
        result.append([key, value])
    }
    
    return result
}

//let intervals = [[1,3],[2,6],[8,10],[15,18]]
//let intervals = [[1,4],[4,5]]
let intervals = [[1,4],[0,2]]
print(merge(intervals))
