import Foundation

// 189. 轮转数组

func rotateArray(_ nums: inout [Int], _ k: Int) {
    
    let count = nums.count
    
    if count > k  { // 轮转次数小于长度
        nums = Array(nums[count-k ..< count]) + Array(nums[0 ..< count-k])
    }else { // 轮转次数大于长度，取 k % n
        let i = k % count
        nums = Array(nums[count-i ..< count]) + Array(nums[0 ..< count-i])
    }
}

//var nums = [1,2,3,4,5,6,7]
//rotateArray(&nums, 3)
//print(nums)
