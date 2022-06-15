import UIKit

func maxProduct(_ nums: [Int]) -> Int {
    var maxProduct = nums[0]
    var currentProduct = 1
    var i = 0
    
    while(i < nums.count) {
        
        if i+1 < nums.count && currentProduct * nums[i] < nums[i] { currentProduct = 1 }
        currentProduct *= nums[i]
        i += 1
        maxProduct = max(maxProduct, currentProduct )
    }
    
    return maxProduct
}


var nums1 = [2,3,-2,4]
var nums2 = [-2,0,-1]
var nums3 = [-3,-1,-1]
var nums4 = [-2,3,-4]

print(maxProduct(nums1))
print(maxProduct(nums2))
print(maxProduct(nums3))
print(maxProduct(nums4))
