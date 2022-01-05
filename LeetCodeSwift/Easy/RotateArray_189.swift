import Foundation

// 189. 轮转数组

func rotateArray(_ nums: inout [Int], _ k: Int) {

    let count = nums.count
    nums = Array(nums[count-k ..< count]) + Array(nums[0 ..< count-k])
}

//var nums = [1,2,3,4,5,6,7]
//rotateArray(&nums, 3)
//print(nums)
