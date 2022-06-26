import UIKit

func pivotIndex(_ nums: [Int]) -> Int {
    var leftSum = 0
    var rightSum = 0
    
    let  _ = nums.map{ rightSum += $0 }
    
    for i in 0..<nums.count {
        leftSum = i == 0 ? 0 : (leftSum + nums[i - 1])
        rightSum = i == (nums.count - 1) ? 0 : (rightSum - nums[i])
        
        if leftSum == rightSum {
            return i
        }
    }
    
    return -1
}


//let nums = [1,7,3,6,5,6]
//let nums1 = [1,2,3]
//let nums2 = [2,1,-1]

let nums = [2,3,-1,8,4]
let nums1 = [1,-1,4]
let nums2 = [2,5]

print(pivotIndex(nums))
print(pivotIndex(nums1))
print(pivotIndex(nums2))
