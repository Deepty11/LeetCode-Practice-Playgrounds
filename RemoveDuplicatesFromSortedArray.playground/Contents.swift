import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var currentValue = nums[0]
    var i = 1
    var length = nums.count
    
    while(i < length) {
        if nums[i] != currentValue {
            currentValue = nums[i]
            i += 1
        } else {
            nums.remove(at: i)
            length = nums.count
        }
    }
    
    return nums.count
}

//var nums = [0,0,1,1,1,2,2,3,3,4]
var nums = [1,1,2]
print(removeDuplicates(&nums))
