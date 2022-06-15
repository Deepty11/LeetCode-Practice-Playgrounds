import UIKit

func threeSum(_ nums: [Int]) -> [[Int]] {
    let length = nums.count
    if length < 3 { return [] }
    else if length == 3 && nums[0] + nums[1] + nums[2] == 0 {
        return [[nums[0], nums[1], nums[2]]]
    }
    
    var numsArray = nums
    numsArray.sort()
    var dict: [Int: Int] = [:]
    var result: Set<[Int]> = []
    for (index,num) in numsArray.enumerated() {
        dict[num] = index 
    }
    
    for i in 0..<numsArray.count-1 {
        let firstVal = numsArray[i]
        for j in i+1..<numsArray.count {
            let secondVal = numsArray[j]
            let thirdVal = 0 - firstVal - secondVal
            if let thirdValIndex = dict[thirdVal],
                thirdValIndex > j {
                let subList = [firstVal, secondVal, thirdVal]
                result.insert(subList)
            }
        }
    }
    
    return Array(result)
}

print(threeSum([-1,0,1,-1,2,-4]))

print(threeSum([0,0,0,0,0]))
