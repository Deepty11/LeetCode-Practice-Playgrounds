import UIKit

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var output = [Int](repeating: 1, count: nums.count)
    // 1,2 ,3,4
    output[0] = 1
    var preFix = 1
    for i in 1..<nums.count {
        output[i] = nums[i - 1] * preFix
        preFix = output[i]
    }
    //print(output)
    
    var i = nums.count - 2
    var postFix = 1
    
    while(i >= 0) {
        postFix = nums[i + 1] * postFix
        output[i] *= postFix
        //print(postFix)
        i -= 1
    }
    
    return output
}

let nums = [1,2,3,4]
print(productExceptSelf(nums))
