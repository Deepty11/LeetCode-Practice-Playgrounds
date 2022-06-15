import UIKit

func moveZeroes(_ nums: inout [Int]) {
    var currentIndex = 0
    var i = 0
    
    while(i < nums.count) {
        if nums[i] != 0 {
            nums[currentIndex] = nums[i]
            if i != currentIndex { nums[i] = 0 }
            currentIndex += 1
        }
        
        i += 1
    }
    
    print(nums)
}

//var nums = [0,1,0,3,12]
var nums = [1]
moveZeroes(&nums)
