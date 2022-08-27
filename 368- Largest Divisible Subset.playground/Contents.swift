class Solution {
    func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
        if nums.isEmpty || nums.count == 1 { return nums}
        //Time complexity: O(nlogn)
        var sortedArray = nums.sorted()
        var dp : [Int] = Array(repeating: 1, count: sortedArray.count)
        var maximum = 0
        
        // calculating the max length of subset till every element of nums
        // Time complexity: O(n^2)
        for i in 1..<sortedArray.count {
            for j in 0..<i {
                if sortedArray[i] % sortedArray[j] == 0 && dp[i] < dp[j] + 1{
                    dp[i] = dp[j] + 1
                    maximum = max(dp[i], maximum)
                }
            }
           
        }
        
        
        var prev  = -1
        var subset: [Int] = []
        
        // obtaining the subset from the previously calculated max length array ( dp)
        // Time complexity : O(n)
        for i in stride(from: dp.count - 1, to: -1, by: -1) {
            //print(dp[i])
            if dp[i] == maximum && (prev % sortedArray[i] == 0 || prev == -1) {
                subset.insert(sortedArray[i], at: 0)
                maximum -= 1
                prev = sortedArray[i]
            }
        }
        
        // if subset is found empty, we are considering that the subset will atleast contain the first element of the array
        if subset.isEmpty { subset.append(nums[0]) }
        //or
        if subset.isEmpty { subset.append(sortedArray[0]) }
        
        return subset
    }
}
