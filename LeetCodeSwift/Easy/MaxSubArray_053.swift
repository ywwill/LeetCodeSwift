import Foundation

// 53.最大子数组和

func maxSubArray(_ nums: [Int]) -> Int {
    
    var currentSum = nums[0]
    var maxSum = nums[0]
    
    for i in 1 ..< nums.count {
        currentSum = max(nums[i], nums[i] + currentSum)
        maxSum = max(maxSum, currentSum)
    }
    
    return maxSum
}
