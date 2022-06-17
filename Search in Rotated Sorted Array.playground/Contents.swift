import UIKit

func search(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 1 {
        return nums[0] == target ? 0 : -1
    }
    
    return binarySearch(0, nums.count - 1, nums, target)
}

func binarySearch(_ l: Int, _ r: Int, _ nums: [Int], _ target: Int) -> Int{
    while(l<=r) {
        let mid = (l + r)/2
        if nums[mid] == target {
            return mid
        } else if target > nums[mid] {
            if nums[mid] >= nums[l] {
                return binarySearch(mid + 1, r, nums, target)
            } else {
                if target > nums[r] {
                    return binarySearch(l, mid - 1 , nums, target)
                } else {
                    return binarySearch(mid + 1, r, nums, target)
                }
            }
        } else {
            if nums[mid] >= nums[l] {
                if target >= nums[l] {
                    return binarySearch(l, mid - 1 , nums, target)
                } else {
                    return binarySearch(mid + 1, r, nums, target)
                }
            } else {
                return binarySearch(l, mid - 1 , nums, target)
            }
        }
    }
    
    return -1
}


//let nums = [4,5,6,7,0,1,2]
//let nums = [3,5,1]
//let nums = [5,1,3]
//let nums = [3,1]
//let nums = [3,4,5,6,1,2]
let nums = [4,5,6,7,8,1,2]
let target = 8

print(search(nums, target))
