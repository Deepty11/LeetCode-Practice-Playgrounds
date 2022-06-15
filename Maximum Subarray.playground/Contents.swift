import UIKit

//func maxSubArray(_ nums: [Int]) -> Int {
//    var sum = 0
//        nums.map { sum += $0 }
//        var maxSum = sum
//        //print("Initial maxSum: \(maxSum)")
//        if nums.count == 1 { return nums[0] }
//
//        var i = 0
//        var j = nums.count - 1
//
//        while(i < j) {
//            //print("\(i) \(j)")
//            let sum1 = sum - nums[i]
//            let sum2 = sum - nums[j]
//            //print("\(sum1) \(sum2)")
//
//            let maxOfSum1AndSum2 = max(sum1, sum2)
//
//            maxSum = max(maxSum, maxOfSum1AndSum2)
//            sum = maxOfSum1AndSum2
//
//            if sum1 > sum2 { i += 1 }
//            else if sum1 < sum2 { j -= 1 }
//            else {
//                if nums[i] + nums[i + 1] > nums[j] + nums[j - 1] { j -= 1 }
//                else { i += 1 }
//            }
//
//
//             print("sum: \(sum)")
//             print("maxSum: \(maxSum)")
//        }
//
//        return maxSum
//}

func maxSubArray(_ nums: [Int]) -> Int {
    var maxSum = nums[0]
    var currentSum = 0
    var i = 0
    
    while(i < nums.count) {
        if currentSum < 0 { currentSum = 0}
        currentSum += nums[i]
        i += 1
        maxSum = max(currentSum, maxSum)
    }
    
    return maxSum
}

var nums1 = [-2,1,-3,4,-1,2,1,-5,4]
var nums2 = [-2,-3,-1]
var nums3 = [5,4,-1,7,8]
var nums4 = [8,-19,5,-4,20]
var nums5 = [-2,1]
var nums6 = [1,2,-1,-2,2,1,-2,1,4,-5,4]

print(maxSubArray(nums1))
print(maxSubArray(nums2))
print(maxSubArray(nums3))
print(maxSubArray(nums4))
print(maxSubArray(nums5))
print(maxSubArray(nums6))
