import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var i = 0
    var length = nums.count
    
    while(i < length) {
        if nums[i] == val {
            nums.remove(at: i)
            length = nums.count
        } else {
            i += 1
        }
    }
    
    return nums.count
}

//var nums = [0,0,1,1,1,2,2,3,3,4]
//var nums = [3,2,2,3]
var nums = [0,1,2,2,3,0,4,2]
var val = 2
print(removeElement(&nums, val))
